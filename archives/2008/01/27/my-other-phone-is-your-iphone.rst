author: dre
disqus_id: 913e437d-c48f-4ef1-9e6b-4d35ee2fd92b
disqus_url: http://www.tssci-security.com/archives/2008/01/27/my-other-phone-is-your-iphone/
mod_date: 2008-01-27 23:15:58
parent: 0
post_id: 370
post_type: post
pub_date: 2008-01-27 22:53:53
public: 'yes'
slug: my-other-phone-is-your-iphone
tags:
- Privacy
- Tech
- Apple
- Hacking
- Security
template: post.html
title: My other phone is your iPhone

My other phone is your iPhone
#############################

Here's a new 2008 security prediction for you --

The iPhone camera is an odd device. There is no notification that a
picture is being taken, so the only requirement for malware is to wait
for user activity and then start taking pictures.

My prediction is that malware will be written to do just this and upload
it all to a website. The unknowing iPhone user's face with then be
`auto-BBQ'd <http://www.encyclopediadramatica.com/Bantown#BBQ>`_ (this
link is NSFW) and other personal information will also be uploaded to
further embarrass the individual.

The malware will likely be injected once Facebook apps start
`integrating well <http://iphone.facebook.com>`_ with the iPhone. Gives
new meaning to the phrase, *SuperPoke*.

All you need to get started on this project is to integrate Metasploit
with the iPhone Photo Library framework. A simple
`class-dump <http://www.codethecode.com/projects/class-dump/>`_ of
PhotoLibrary.framework/PhotoLibrary will dump all the libraries,
including the necessary CameraController class file. Creating a hidden
photo-taking utility or integrating it with malware is easy from this
point on.

For more information (and to see where I got some of the ideas), be sure
to check out the book, `iPhone Open Application Development: Programming
an Exciting Mobile
Platform <http://www.amazon.com/exec/obidos/ASIN/0596518552/>`_, when it
becomes available.
