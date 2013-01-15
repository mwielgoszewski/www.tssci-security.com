author: Marcin
disqus_id: 9d9a39f0-afbc-4876-95d1-e672c28abb39
disqus_url: http://www.tssci-security.com/archives/2008/06/15/nmaparsepy-parsing-grepable-nmap-output-to-insert-into-mysql/
mod_date: 2008-06-15 16:19:41
parent: 0
post_id: 410
post_type: post
pub_date: 2008-06-15 16:19:41
public: 'yes'
slug: nmaparsepy-parsing-grepable-nmap-output-to-insert-into-mysql
tags:
- code
- security
template: post.html
title: nmaparse.py -- Parsing grepable Nmap output to insert into MySQL

nmaparse.py -- Parsing grepable Nmap output to insert into MySQL
################################################################

Last week, Richard Bejtlich
`reviewed <http://taosecurity.blogspot.com/2008/06/review-of-nmap-in-enterprise-posted.html>`_
"Nmap in the Enterprise," and for the most part, was largely
disappointed with it's lack of enterprise context. My last script,
`tissynbe.py <http://www.tssci-security.com/projects/tissynbe_py/>`_,
parsed Nessus results in nbe format and inserted them into a MySQL
database. Today, I'm making available nmaparse.py, a script that will
parse `grepable nmap
output <http://nmap.org/book/man-output.html#id328522>`_ (\*.gnmap, used
with -oG or -oA flags) and insert the results into a database. My
intention is for anyone to be able to take these scripts and use them
for whatever purpose necessary -- be it personal or in the enterprise.
Loading various tools' output into a database makes analysis both easy
and super powerful, so I'd be interested in seeing what others are
doing.

To use it, all you have to do is call the script and point it at some
gnmap files. The script breaks up the results by host, port, protocol,
state, service, version, os, Seq Index, IPID Seq, scan date, and scan
flags, and passes them onto the database (`nmapdb.sql schema
provided <http://www.tssci-security.com/upload/nmaparse_py/nmapdb.sql>`_).

``$ ./nmaparse.py *.gnmap Number of rows inserted: 76 results``

See the `nmaparse.py project
page <http://www.tssci-security.com/projects/nmaparse_py/>`_ for more
details. Again, comments and critiques are welcome.
