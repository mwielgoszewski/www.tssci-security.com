author: Marcin
disqus_id: ac4a1d1c-b386-4f66-a0a1-3055aa33aa65
disqus_url: http://www.tssci-security.com/archives/2007/12/09/simultaneous-firefox-profiles-used-to-guard-against-csrf-attacks/
mod_date: 2007-12-09 23:55:57
parent: 0
post_id: 325
post_type: post
pub_date: 2007-12-09 23:55:13
public: 'yes'
slug: simultaneous-firefox-profiles-used-to-guard-against-csrf-attacks
tags:
- Security
template: post.html
title: Simultaenous use of Firefox profiles to guard against CSRF attacks

Simultaenous use of Firefox profiles to guard against CSRF attacks
##################################################################

Here's a quick post to decrease your exposure to attacks against web
application vulnerabilities. A couple months ago, I posted an article
that detailed `8 Firefox extensions for safer
browsing <http://www.tssci-security.com/archives/2007/08/15/8-firefox-extensions-towards-safer-browsing/>`_.
In addition to the extensions listed in that post, I use another
precaution while browsing websites: I simultaneously run multiple
Firefox profiles. There are a couple reasons for this, such as oh... I
dunno. I always thought people would run one profile for day-to-day
activities/regular browsing, and another for doing security testing and
web assessments. But did you know running separate instances of Firefox
guards against CSRF attacks? Yes, it does!

If you're not using multiple Firefox profiles already, start up Firefox
with the -ProfileManager option. On Windows, you can edit the shortcut
target and append -ProfileManager.

``"C:\Program Files\Mozilla Firefox\firefox.exe" -ProfileManager``

MOZ\_NO\_REMOTE=1
~~~~~~~~~~~~~~~~~

To run Firefox profiles simultaneously, you'll need to export
``MOZ_NO_REMOTE=1`` user environment variable. You can enter new
environment variables on Windows through System Properties > Advanced
Tab > Environment Variables dialog. On Linux, you can do the same by
running the following from the shell or in a startup script.

``$ export MOZ_NO_REMOTE=1``

An alternative to exporting the environment variable, you can append the
``-no-remote`` option to Firefox (through a shortcut icon, just add it
to the target location). If you want to create icons to start specific
Firefox profiles like I do, you can specify which profile by it's name
using the -P option.

Here are some Windows examples you can set:

``"C:\Mozilla Firefox\firefox.exe" -P profilename -no-remote``

``"C:\Mozilla Firefox\firefox.exe" -ProfileManager``

and for Linux:

``/usr/bin/firefox -ProfileManager``

``/usr/bin/firefox -P profilename -no-remote``

You can also go ahead and do what Joanna Rutkowska does, and practice
"almost-full" `privilege separation on Windows
Vista <http://theinvisiblethings.blogspot.com/2007/02/running-vista-every-day.html>`_
and run different `browsers with limited
privileges <http://theinvisiblethings.blogspot.com/2007/10/thoughts-on-browser-rootkits.html>`_.
