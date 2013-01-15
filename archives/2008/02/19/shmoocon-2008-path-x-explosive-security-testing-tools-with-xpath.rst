author: Marcin
disqus_id: 035d80a9-3226-4893-abb3-fcc33631804e
disqus_url: http://www.tssci-security.com/archives/2008/02/19/shmoocon-2008-path-x-explosive-security-testing-tools-with-xpath/
mod_date: 2008-02-19 21:05:19
parent: 0
post_id: 379
post_type: post
pub_date: 2008-02-19 20:51:45
public: 'yes'
slug: shmoocon-2008-path-x-explosive-security-testing-tools-with-xpath
tags:
- conferences
- security
template: post.html
title: 'ShmooCon 2008 -- Path X: Explosive Security Testing Tools with XPath'

ShmooCon 2008 -- Path X: Explosive Security Testing Tools with XPath
####################################################################

On Sunday, we had some technical difficulties getting my laptop to work
with the projector. In a scramble to get things up and running, I forgot
to send the backup screenshots I had taken just in case. Ughh.. first
conference talk I give, and everything that could have gone wrong, did.
LOL. It was good experience at least. Note to self: Linux + ATI video
cards really do suck. I apologize to everyone that came hoping to see
our work in action. I'd also like to thank Tom Brennan, President of
OWASP for helping us get setup and then giving our introduction on
Sunday.

You can download our `Path X: Explosive Security Testing Tools with
XPath presentation
slides <http://www.tssci-security.com/upload/2008_ShmooCon_DC-Gironda-Wielgoszewski-Path_X.pdf>`_
*[pdf]*, and here's an animated gif of `using Selenium to test for DOM
XSS <http://www.tssci-security.com/upload/Path-X_selenium-dom-xss.gif>`_.

Below is example HTML source code to our Selenium test case:

.. sourcecode:: html

    <html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Set a cookie via DOM XSS</title>
    </head>
    <body>
    <table cellpadding="1" cellspacing="1" border="1">
    <thead>
    <tr><td rowspan="1" colspan="3">Set a cookie via DOM XSS</td></tr>
    </thead><tbody>
    <tr>
        <td>open</td>
        <td>/awesome.html</td>
        <td></td>
    </tr>
    <tr>
        <td>deleteCookie</td>
        <td>name</td>
        <td>/</td>
    </tr>
    <tr>
        <td>type</td>
        <td>name</td>
        <td><script>document.cookie='name=xss; 
            expires=Thu, 2 Aug 2010 20:47:11 UTC; path=/';</script>
        </td>
    </tr>
    <tr>
        <td>click</td>
        <td>//input[@name='chat']</td>
        <td></td>
    </tr>
    <tr>
        <td>verifyCookie</td>
        <td>name=xss</td>
        <td>xss</td>
    </tr>
    <tr>
        <td>deleteCookie</td>
        <td>name</td>
        <td>/</td>
    </tr>
    </tbody></table>
    </body>
    </html>

And here is the same code as a Java integration test:

.. sourcecode:: java

    package com.example.tests;
    
    import com.thoughtworks.selenium.*;
    import java.util.regex.Pattern;
    
    public class NewTest extends SeleneseTestCase {
        void testNew() throws Exception {
            selenium.open("/awesome.html");
            selenium.deleteCookie("name", "/");
            selenium.type("name", "<script>document.cookie='name=xss;expires=Thu, 2 Aug 2010 20:47:11 UTC; path=/';</script>");
            selenium.click("//input[@name='chat']");
            verifyEquals("name=xss", selenium.getCookie());
            selenium.deleteCookie("name", "/");
        }
    }

We're anxious to hear any comments that you have about our presentation.
We've received a lot of positive feedback so far, and want to hear more.
What would be your plans for implementing this in your devshop; is it
too academic or far-fetched? We want to hear what you have to say, so
let us know!

Cheers! -Marcin Wielgoszewski & Andre Gironda
