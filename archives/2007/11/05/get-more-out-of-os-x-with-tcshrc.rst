author: Casey
disqus_id: 01b54812-d55f-4e78-a3d0-59ea32c09f94
disqus_url: http://www.tssci-security.com/archives/2007/11/05/get-more-out-of-os-x-with-tcshrc/
mod_date: 2007-11-05 19:17:35
parent: 0
post_id: 328
post_type: post
pub_date: 2007-11-05 19:17:35
public: 'yes'
slug: get-more-out-of-os-x-with-tcshrc
tags:
- apple
template: post.html
title: Get more out of OS X with tcshrc

Get more out of OS X with tcshrc
################################

The default user environment on OS X is not exactly very productive. On
my Linux and FreeBSD systems I prefer to work in a highly customized
user environment that allows me to work faster and more efficiently. I
have tried numerous ways of accomplishing this; customizing bash, using
alternate shells such as zsh and yet, none of these options provided me
with what I was looking for. I was exploring the net with StumbleUpon
and came across `tcshrc <http://tcshrc.sourceforge.net/>`_, a set of
tcsh configuration files that provides you with a customized and highly
capable shell environment. On OS X, it took a few modifications to the
scripts to work as I expected it; on FreeBSD and Linux they worked great
out of the box.

After installation in OS X, you'll notice the ``ls`` command doesn't
work -- it throws an error about invalid options. The scripts include in
``.tcshrc.aliases`` a line that reads ``"ls --color"``. OS X doesn't
have terminal colors supported by default, so you need to remove the
``--color`` flag.

The second thing that didn't work quite the way I wanted was my
backspace key behavior. In ``.tcsh.bindkeys`` look for the darwin case
in the $ostype switch and then find the line that reads
``'bindkey ^? delete-char'``. You need to either comment that out or
delete that line if you want your backspace key to function as normal;
else you have to use ^H (Ctrl+H) to backspace.
