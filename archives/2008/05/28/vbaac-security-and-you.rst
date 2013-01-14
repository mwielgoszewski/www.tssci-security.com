author: Marcin
disqus_id: c8052017-4811-40a1-94c0-773d25f667aa
disqus_url: http://www.tssci-security.com/archives/2008/05/28/vbaac-security-and-you/
mod_date: 2008-05-28 09:50:48
parent: 0
post_id: 408
post_type: post
pub_date: 2008-05-28 09:41:29
public: 'yes'
slug: vbaac-security-and-you
tags:
- Security
- News
template: post.html
title: VBAAC Security and You

VBAAC Security and You
######################

My good friend `Arshan Dabirsiaghi <http://i8jesus.com/>`_ at `Aspect
Security <http://www.aspectsecurity.com/>`_ released an interesting
paper today on `Bypassing VBAAC with HTTP Verb
Tampering <http://www.aspectsecurity.com/documents/Bypassing_VBAAC_with_HTTP_Verb_Tampering.pdf>`_.
For those who don't know what VBAAC is, it stands for "Verb-Based
Authentication Access Control." Unfortunately, most vendors have screwed
up the implementation by taking a default allow approach, and as a
result developers are likely to have [unintentionally] exposed their
applications.

How's the attack work? Well, in applications that utilize VBAAC, a
developer, as an example, can specificy security constraints that allows
only GETs and POSTs to the /admin/\* directory for the "admin" user. The
constraint would like so in web.xml file in a Java EE web application:

``<security-constraint> ÂÂÂ<web-resource-collection> ÂÂÂÂÂÂ<url-pattern>/admin/*</url-pattern> ÂÂÂÂÂÂ<http-method>GET</http-method> ÂÂÂÂÂÂ<http-method>POST</http-method> ÂÂÂ</web-resource-collection> ÂÂÂ<auth-constraint> ÂÂÂÂÂÂ<role-name>admin</role-name> ÂÂÂ</auth-constraint> </security-constraint>``

The interesting part about this, is that this constraint limits POST and
GET access to /admin/\* for the admin user. Anyone can submit a HTTP
HEAD request for the resource or an arbitrary HTTP verb, if allowed (the
paper uses JEFF method as an example), and the resource can be accessed.

The end result of this is that resources are less restricted than
expected. The caveat being that responses will not always be seen by an
attacker, though damage can still be done. Take a moment to read the
paper now -- it's concise, gets straight to the point, and gives
solutions. This likely affects application(s) you are responsible for,
so take the time to understand the risk and take action.
