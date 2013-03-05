author: Marcin
disqus_id: e773f1ad-3a54-4baa-8b8a-9f3fc5d42523
disqus_url: http://www.tssci-security.com/archives/2013/02/18/extending-burp-with-jython-burp-api/
parent: 0
post_id: 470
post_type: post
pub_date: 2013-02-14 10:00:00
public: 'yes'
slug: extending-burp-with-jython-burp-api
tags:
- security
template: post.html
title: Extending Burp with Jython Burp API

Extending Burp with Jython Burp API
###################################

Last year, I released the `Jython Burp API`_,
a plugin framework to Burp that allows running multiple plugins simultaneously,
exposes an interactive Jython console, provides Filter_-like
functionality, and eases developing plugins at runtime by providing more
Pythonic APIs and automatic code reloading for when code or configurations
are updated. I presented an overview of my framework at an `iSec Partners Forum`_
in NYC last year. Others have released similar frameworks that also provide the
ability to write Burp extensions in Jython.

Since then, PortSwigger released a new `Burp Extender API`_, allowing users
to develop all sorts of plugins and extend Burp's various tools in a myriad
of ways. Regardless, I still find my framework and others like Buby_ still
have their place. I'd like to take the next few paragraphs to guide users
on setting up the Jython Burp API in their environment.

Getting Jython
--------------

First, we'll need to get the latest 2.7+ standalone version of Jython.
At the time of this writing, the latest version is `Jython 2.7beta1`_.
Once you download Jython, configure Burp's `Python Environment`_.

Loading the Jython Burp API
---------------------------

If you haven't already done so, download the `Jython Burp API`_. Then, all
you need to do (provided you're running Burp 1.5.04 or later), is add 
``jython-burp-api/Lib/burp_extender.py`` as a Python extension to Burp:

.. image:: /static/img/archive/2013/02/14/load_burp_extension.png
    :align: center
    :alt: Load Burp Extension
    :width: 407
    :height: 302
    :target: /static/img/archive/2013/02/14/load_burp_extension.png

After you've clicked next, you should see the extension among the list of other
currently loaded extensions (if any).

.. image:: /static/img/archive/2013/02/14/burp_extensions.png
    :align: center
    :alt: Burp Extensions
    :width: 557
    :height: 464
    :target: /static/img/archive/2013/02/14/burp_extensions.png 

An additional feature you may find useful is an interactive Jython console
tab, that allows you to interact with the Burp Extender object and any other
variables in the local namespace. I find it useful to iterate over requests in
Burp's Proxy History, collecting various information or highlighting/commenting
requests that may contain a specific header or string in the response body.

.. image:: /static/img/archive/2013/02/14/jython_console.png
    :align: center
    :alt: Jython Console
    :width: 557
    :height: 464
    :target: /static/img/archive/2013/02/14/jython_console.png 

I added a right-click context menu item so you could select specific requests
and send them to the ``items`` variable, accessible from the console.

.. image:: /static/img/archive/2013/02/14/console_menu.png
    :align: center
    :alt: assign to local variable `items` in console
    :width: 557
    :height: 464
    :target: /static/img/archive/2013/02/14/console_menu.png 

.. image:: /static/img/archive/2013/02/14/console_items.png
    :align: center
    :alt: working with requests set to the `items` local variable
    :width: 557
    :height: 464
    :target: /static/img/archive/2013/02/14/console_items.png 

In a future blog post, I may dive into using some of the other features of
the framework. In the mean time, please feel free to fork and contribute to
the `Jython Burp API`_!

.. _Jython Burp API: https://github.com/mwielgoszewski/jython-burp-api
.. _iSec Partners Forum: /research/#a-breath-of-fresh-burp-extending-burp-the-python-way 
.. _Buby: https://github.com/tduehr/buby
.. _Burp Extender API: http://portswigger.net/burp/extender/api/index.html
.. _Python Environment: http://portswigger.net/burp/help/extender.html#options_pythonenv
.. _Filter: http://www.oracle.com/technetwork/java/filters-137243.html
.. _Jython 2.7beta1: http://fwierzbicki.blogspot.com/2013/02/jython-27-beta1-released.html
