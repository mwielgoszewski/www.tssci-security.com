author: Casey
disqus_id: bdb506b4-8e88-482e-ac07-cc021d9eb6d1
disqus_url: http://www.tssci-security.com/archives/2007/09/12/enable-password-for-single-user-mode-os-x/
mod_date: 2007-09-13 04:04:19
parent: 0
post_id: 301
post_type: post
pub_date: 2007-09-12 17:16:07
public: 'yes'
slug: enable-password-for-single-user-mode-os-x
tags:
- Apple
- Security
template: post.html
title: Enable password for single-user mode (OS X)

Enable password for single-user mode (OS X)
###########################################

Single-user mode by default is available on OS X without a password.
This is not a desirable system behavior and to remedy this, all that is
needed are a few simple commands. To enable a higher level of security
we can set an "Open Firmware Password".

On OS X 10.4.10, you need to use the updated version of the Open
Firmware Password (v. 1.0.2) application from the software installation
disc (located at ``/Applications/Utilities/`` or at
`Apple-Support-Downloads <http://www.apple.com/support/downloads/openfirmwarepassword.html>`_).
Then, just click the checkbox 'Require password to change Open Firmware
settings,' set a password, and you're good to go.
