author: Marcin
disqus_id: 8ec8cc07-c23b-415b-a89c-c1b158f5375b
disqus_url: http://www.tssci-security.com/archives/2008/11/20/decreasing-security-for-perceived-security-all-in-the-name-of-compliance/
mod_date: 2008-11-20 23:24:31
parent: 0
post_id: 437
post_type: post
pub_date: 2008-11-20 23:20:40
public: 'yes'
slug: decreasing-security-for-perceived-security-all-in-the-name-of-compliance
tags:
- Security
- Work
template: post.html
title: Decreasing Security for Perceived Security -- all in the name of compliance

Decreasing Security for Perceived Security -- all in the name of compliance
###########################################################################

Today I ran into a little setback for an issue I did not foresee. For
the past several months, I've been on a PCI remediation project, of
which one of my tasks was to implement a web application firewall to
address PCI requirement 6.6. Now, for everyone out there who has been
following our posts, knows *us* dealing with WAFs is worse than pulling
teeth.

So, in creating a secure Apache standard build, I seemed to have
over-engineered and made our build too secure. How? Well, one of the
lines in our httpd.conf included the following
`SSLCipherSuite <http://httpd.apache.org/docs/2.0/mod/mod_ssl.html#sslciphersuite>`_
directive:

::

    SSLCipherSuite HIGH:MEDIUM:+TLSv1:!LOW:!EXP:!ADH:!aNULL:!eNULL:!NULL:!SSLv2

With support for the following ciphers:

::

    DHE-RSA-AES256-SHA      SSLv3 Kx=DH       Au=RSA  Enc=AES(256)  Mac=SHA1
    DHE-DSS-AES256-SHA      SSLv3 Kx=DH       Au=DSS  Enc=AES(256)  Mac=SHA1
    AES256-SHA              SSLv3 Kx=RSA      Au=RSA  Enc=AES(256)  Mac=SHA1
    DHE-RSA-AES128-SHA      SSLv3 Kx=DH       Au=RSA  Enc=AES(128)  Mac=SHA1
    DHE-DSS-AES128-SHA      SSLv3 Kx=DH       Au=DSS  Enc=AES(128)  Mac=SHA1
    AES128-SHA              SSLv3 Kx=RSA      Au=RSA  Enc=AES(128)  Mac=SHA1
    EDH-RSA-DES-CBC3-SHA    SSLv3 Kx=DH       Au=RSA  Enc=3DES(168) Mac=SHA1
    EDH-DSS-DES-CBC3-SHA    SSLv3 Kx=DH       Au=DSS  Enc=3DES(168) Mac=SHA1
    DES-CBC3-SHA            SSLv3 Kx=RSA      Au=RSA  Enc=3DES(168) Mac=SHA1
    RC4-SHA                 SSLv3 Kx=RSA      Au=RSA  Enc=RC4(128)  Mac=SHA1
    RC4-MD5                 SSLv3 Kx=RSA      Au=RSA  Enc=RC4(128)  Mac=MD5 

Looks good right?

This directive, included the Diffie-Hellman ciphers, which I was
reminded by blatant error messages of unsupported ciphers in the
management console, that it was not susceptible to MITM attacks due to
the nature of the
`key-exchange <http://en.wikipedia.org/wiki/Diffie-Hellman_key_exchange>`_.
Doh! What's this mean? Our WAF, was rendered useless for monitoring and
protecting our application because our SSL encryption strengths being
negotiated were the most secure, and thus, the WAF had no visibility
into our application. The most common SSL cipher being negotiated was
TLS\_DHE\_RSA\_WITH\_AES\_256\_CBC\_SHA -- the most secure of all.

So to comply with PCI Requirement 6.6, I had to step down our list of
available `SSL
ciphers <http://openssl.org/docs/apps/ciphers.html#CIPHER_SUITE_NAMES>`_
with the following ``SSLCipherSuite`` directive:

::

    HIGH:MEDIUM:+TLSv1:!DH:!LOW:!EXP:!ADH:!aNULL:!eNULL:!NULL:!SSLv2

which at least provided support for the following ciphers:

::

    AES256-SHA              SSLv3 Kx=RSA      Au=RSA  Enc=AES(256)  Mac=SHA1
    AES128-SHA              SSLv3 Kx=RSA      Au=RSA  Enc=AES(128)  Mac=SHA1
    DES-CBC3-SHA            SSLv3 Kx=RSA      Au=RSA  Enc=3DES(168) Mac=SHA1
    RC4-SHA                 SSLv3 Kx=RSA      Au=RSA  Enc=RC4(128)  Mac=SHA1
    RC4-MD5                 SSLv3 Kx=RSA      Au=RSA  Enc=RC4(128)  Mac=MD5 

So much for PCI Requirement 4.1, which requires the use of strong
cryptography and security protocols such as SSL/TLS to safeguard
sensitive cardholder data. This post is just a little FYI for those in
the same boat. Turns out we *can* be "too secure," :P

As my manager likes to sometimes put it, "How do you like 'dem apples?"
