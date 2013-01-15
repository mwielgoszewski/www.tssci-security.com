author: Marcin
disqus_id: 2acff1d2-1bec-4456-bb3a-4e479a20ceb8
disqus_url: http://www.tssci-security.com/archives/2007/09/25/stop-wordpress-23-from-phoning-home/
mod_date: 2007-09-25 20:55:11
parent: 0
post_id: 309
post_type: post
pub_date: 2007-09-25 20:47:46
public: 'yes'
slug: stop-wordpress-23-from-phoning-home
tags:
- privacy
template: post.html
title: Stop Wordpress 2.3 "phoning home"

Stop Wordpress 2.3 "phoning home"
#################################

A new release of `Wordpress
2.3 <http://wordpress.org/development/2007/09/wordpress-23/>`_ was
shipped last night. One of the features it sports is:

    Our new **update notification** lets you know when there is a new
    release of WordPress or when any of the plugins you use has an
    update available. It works by sending your blog URL, plugins, and
    version information to our new ``api.wordpress.org`` service which
    then compares it to the plugin database and tells you what the
    latest and greatest is you can use.

The new release does not allow you the option of disabling this
functionality. Here's a quick hack to disable it by changing the URL it
attempts to establish a connection with (**api.wordpress.org**). There
are two files located under the root directory:
**``wp-admin/includes/update.php``** and **``includes/update.php``**
that contain the code we will be editing.

Edit ``wp-admin/includes/update.php`` line **82** and **90**, and remove
or change the url to your liking.::

    82   $http_request .= "Host: api.wordpress.org\r\n";
         ...

    90   if( false != ( $fs = @fsockopen( 'api.wordpress.org', 80, $errno, $errstr, 3) ) && is_resource($fs) ) {

Secondly, edit ``includes/update.php`` line **27** and **33** as well.::

    27   $http_request .= "Host: api.wordpress.org\r\n";
         ...
    
    33   if ( false !== ( $fs = @fsockopen( 'api.wordpress.org', 80, $errno, $errstr, 3 ) ) && is_resource($fs) ) {

In other words, who is in support of forking Wordpress? Perhaps we can
revamp the entire architecture and make it more secure... just a
thought.
