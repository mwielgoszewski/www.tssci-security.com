author: Marcin
disqus_id: b48eb49f-ada2-45c9-a07a-4501c5065e19
disqus_url: http://www.tssci-security.com/archives/2008/12/31/bruteoptionspy-get-allowed-http-methods-for-a-list-of-directories/
mod_date: 2008-12-31 11:08:20
parent: 0
post_id: 441
post_type: post
pub_date: 2008-12-31 10:41:14
public: 'yes'
slug: bruteoptionspy-get-allowed-http-methods-for-a-list-of-directories
tags:
- Code
- Security
template: post.html
title: bruteoptions.py -- Get allowed HTTP Methods for a list of directories

bruteoptions.py -- Get allowed HTTP Methods for a list of directories
#####################################################################

A recent email by Dave Aitel to the Dailydave mailing list on `Pen
testing web
servers <http://lists.immunitysec.com/pipermail/dailydave/2008-December/005471.html>`_
was an inspiration to publishing a short, but simple script. I like to
keep things simple when I write scripts, taking the Unix philosophy of
doing one thing and doing it well.

`bruteoptions.py <http://www.tssci-security.com/projects/bruteoptions_py/>`_
takes two arguments: 1) a FQDN of a known site, and 2) a file with
directory names. The script runs through and performs an OPTIONS HTTP
Request for each directory name in the file. In the past, I've used a
combination of directories I've identified while browsing/spidering a
website through Burp, and the other partly a dictionary list taken from
a tool like `OWASP
DirBuster <http://www.owasp.org/index.php/Category:OWASP_DirBuster_Project>`_.

Using the tool is simple, just specify the site FQDN to scan and give it
a file as a second argument.

``$ ./bruteoptions.py ./gethttpoptions.py <url> <list of directories>``

``$ ./bruteoptions.py tssci-security.com dirs ¢â‚¬Åtssci-security.com¢â‚¬Â,¢â‚¬Â/about/¢â‚¬Â,¢â‚¬Â200 OK¢â‚¬Â,¢â‚¬ÂApache/1.3.39 (Unix)¢â‚¬Â,¢â‚¬ÂNone¢â‚¬Â ¢â‚¬Åtssci-security.com¢â‚¬Â,¢â‚¬Â/upload/¢â‚¬Â,¢â‚¬Â200 OK¢â‚¬Â,¢â‚¬ÂApache/1.3.39 (Unix)¢â‚¬Â,¢â‚¬ÂGET, HEAD, OPTIONS, TRACE¢â‚¬Â ¢â‚¬Åtssci-security.com¢â‚¬Â,¢â‚¬Â/projects/¢â‚¬Â,¢â‚¬Â200 OK¢â‚¬Â,¢â‚¬ÂApache/1.3.39 (Unix)¢â‚¬Â,¢â‚¬ÂNone¢â‚¬Â``

An interesting thing I've just noticed, is the lack of allowed methods
returned for a virtual directory, versus an actual directory when run
against my site. If anyone cares to comment about this, I'd be
interested to know what is the cause.

You can download the script from the `bruteoptions.py project
page <http://www.tssci-security.com/projects/bruteoptions_py/>`_.
