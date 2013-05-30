author: marcin
disqus_id: 79dfad55-75ec-4d0b-a889-d3cef2bb62f3
disqus_url: http://www.tssci-security.com/archives/2013/05/30/decoding-and-tampering-protobuf-serialized-messages-in-burp.html
parent: 0
post_id: 475
post_type: post
pub_date: 2013-05-30 04:17:52
public: 'yes'
slug: decoding-and-tampering-protobuf-serialized-messages-in-burp
tags:
- security
template: post.html
title: Decoding and Tampering Protobuf Serialized Messages in Burp

Decoding and Tampering Protobuf Serialized Messages in Burp
###########################################################

If you've ever assessed or poked at an application that uses `Google
Protocol Buffers`_, you know how painstaking the whole process can be. When
you're lucky enough to have a corresponding .proto, crafting messages
via `generated API's`_ is tedious. When you don't, you have to resort to
reversing the protocol format by hand and/or `extracting the proto file
descriptor`_ out of the application. Otherwise, you're left dumb-fuzzing the
protocol and never diving into the application itself.

Out of necessity, I wrote a Burp Extension that would decode raw protobuf
messages even when a .proto was not available. I added features to it that
supported loading a .proto to allow decoding, editing, and encoding
messages. In my extension, you can also manually specify what type to
deserialize a given protobuf message as. You can download my extension at

* `burp-protobuf-decoder`_

The following set of screenshots should give you a quick overview of what
it's capable of:

We start off with a view of what a simple, raw protobuf message looks like
in Burp:

.. image:: /static/img/archive/2013/05/30/protobuf01.png
    :align: center
    :alt: A raw, serialized protobuf message
    :width: 400
    :height: 268
    :target: /static/img/archive/2013/05/30/protobuf01.png

and what that message looks like when it was decoded using `protoc --decode_raw`:

.. image:: /static/img/archive/2013/05/30/protobuf02.png
    :align: center
    :alt: Example use of --raw_decode on a protobuf message
    :width: 400
    :height: 268
    :target: /static/img/archive/2013/05/30/protobuf02.png

Another request that looks to be adding a serialized user object:

.. image:: /static/img/archive/2013/05/30/protobuf03.png
    :align: center
    :alt: Adding a serialized Person protobuf
    :width: 400
    :height: 268
    :target: /static/img/archive/2013/05/30/protobuf03.png

And again, what it looks like after `protoc --decode_raw`:

.. image:: /static/img/archive/2013/05/30/protobuf04.png
    :align: center
    :alt: Raw decoded Person protobuf
    :width: 400
    :height: 268
    :target: /static/img/archive/2013/05/30/protobuf04.png

If we're lucky enough to have a .proto that defines what this message looks
like, we can load it from here:

.. image:: /static/img/archive/2013/05/30/protobuf05.png
    :align: center
    :alt: Load .proto right-click menu
    :width: 400
    :height: 268
    :target: /static/img/archive/2013/05/30/protobuf05.png

Find our addressbook.proto (taken from the protobuf example applications):

.. image:: /static/img/archive/2013/05/30/protobuf06.png
    :align: center
    :alt: Load .proto file
    :width: 400
    :height: 268
    :target: /static/img/archive/2013/05/30/protobuf06.png

We can then manually deserialize the message as a Person. Next time a
request comes through, the extension will automatically deserialize the
message. Note, an attempt will be made to deserialize as all types until one
is found to deserialize with all required fields initialized (this could
result in some false positives).

.. image:: /static/img/archive/2013/05/30/protobuf07.png
    :align: center
    :alt: Deserialize as Person
    :width: 400
    :height: 268
    :target: /static/img/archive/2013/05/30/protobuf07.png

That looks much better...

.. image:: /static/img/archive/2013/05/30/protobuf08.png
    :align: center
    :alt: Deserialized Person message
    :width: 400
    :height: 268
    :target: /static/img/archive/2013/05/30/protobuf08.png

But wait, how about we tamper it?

.. image:: /static/img/archive/2013/05/30/protobuf09.png
    :align: center
    :alt: Tampered Person message
    :width: 400
    :height: 268
    :target: /static/img/archive/2013/05/30/protobuf09.png

The extension will reserialize our message and we can send it on its way. If
any errors occur (such as required fields missing), an alert dialog will pop
up letting you know.

.. image:: /static/img/archive/2013/05/30/protobuf10.png
    :align: center
    :alt: Tamper and reserialize as Person
    :width: 400
    :height: 268
    :target: /static/img/archive/2013/05/30/protobuf10.png

And the response from the server confirms our message was tampered succesfully.

.. image:: /static/img/archive/2013/05/30/protobuf11.png
    :align: center
    :alt: Confirm our tampered Person was added
    :width: 400
    :height: 268
    :target: /static/img/archive/2013/05/30/protobuf11.png

Hopefully my extension will make testing protobuf based applications much
easier from now on.

.. _Google Protocol Buffers: https://code.google.com/p/protobuf/
.. _Generated API's: https://developers.google.com/protocol-buffers/docs/reference/overview
.. _extracting the proto file descriptor: http://www.sysdream.com/reverse-engineering-protobuf-apps
.. _burp-protobuf-decoder: https://github.com/mwielgoszewski/burp-protobuf-decoder
