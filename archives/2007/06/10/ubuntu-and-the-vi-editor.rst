author: Marcin
disqus_id: 1d847c27-ef45-4d12-b040-9173186e8f53
disqus_url: http://www.tssci-security.com/archives/2007/06/10/ubuntu-and-the-vi-editor/
mod_date: 2007-06-10 12:42:46
parent: 0
post_id: 240
post_type: post
pub_date: 2007-06-10 12:41:23
public: 'yes'
slug: ubuntu-and-the-vi-editor
tags:
- Linux
template: post.html
title: Ubuntu and the Vi Editor

Ubuntu and the Vi Editor
########################

Over the course of a day, I could log in to five different systems I'm
currently working on. On each I'll get a Bash or Tcsh shell and it's
almost guaranteed I'll need to edit a text file at some point during the
day. On my home system, my choice of editor is Vim, because it's quick
like Vi with some feature enhancements that makes it more pleasing to
use. I don't have to do a ^H like I do on Solaris, or use the h, j, k, l
keys to navigate or get funky with the delete and backspace keys in
original Vi.

On my laptop, which I run Ubuntu, I normally enter vi and get Vim. So,
out of curiosity I checked which vi I'm using and where's it's located..
Here's the trail of cookie crumbs I found to the source -- talk about
retarded.
``$ which vi /usr/bin/vi $ file /usr/bin/vi /usr/bin/vi: symbolic link to `/etc/alternatives/vi' $ file /etc/alternatives/vi /etc/alternatives/vi: symbolic link to `/usr/bin/vim' $ file /usr/bin/vim /usr/bin/vim: symbolic link to `/etc/alternatives/vim' $ file /etc/alternatives/vim /etc/alternatives/vim: symbolic link to `/usr/bin/vim.basic' $ file /usr/bin/vim.basic /usr/bin/vim.basic: ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), for GNU/Linux 2.6.0, dynamically linked (uses shared libs), stripped``
