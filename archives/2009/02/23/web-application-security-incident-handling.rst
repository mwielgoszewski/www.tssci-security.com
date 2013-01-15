author: Marcin
disqus_id: ebe53cd0-2ed5-41a7-aba0-f945e056b968
disqus_url: http://www.tssci-security.com/archives/2009/02/23/web-application-security-incident-handling/
mod_date: 2009-02-23 20:35:30
parent: 0
post_id: 448
post_type: post
pub_date: 2009-02-23 20:32:44
public: 'yes'
slug: web-application-security-incident-handling
tags:
- security
template: post.html
title: Web application security incident handling

Web application security incident handling
##########################################

I thought I'd take a moment to post about some web security tools I use
pretty often, which help as a security consultant when responding to
various web hacking related incidents. These tools have helped me write
my own scripts whenever I'm in a jam and need something good and quick
to do the job.

**Application Log File Forensics: The Hard Way**

The first thing a security professional or administrator usually think
of when handling an application security incident is to check the logs
for the applications, databases, and other application-tiers involved.
Often, these logs are either on the servers that run the applications
themselves, or possibly in a central logging location. If a certain
attacker tool can be identified from the log files (or other sources
such as full packet-capture), then it may be of interest to run that
exact same tool against your own application-under-target (preferably in
a mocked-up lab or test environment, if it mirrors production well
enough).

The most popular web servers, Apache httpd and Microsoft IIS, do create
local log files by default. According to most compliance regulations and
standards (e.g. COBIT, HIPAA, GLB, PCI-DSS, FISMA, EU Directive on
Privacy and Electronic Communications, ISO 17799/27002, CA SB1386 and
similar), logging must be centrally located, or may have other required
provisions. This may include application-layer information, such as the
log information from Apache and IIS. It may be very likely that your
organization already has centralized logging where this information is
available.

If centralized logging does not exist, it may be a good time to start up
a project to enable it. `The Apache Cookbook,
2E <http://isbn.nu/0596529945>`_, is the best place to go in order to
configure httpd to start sending syslog information. It's about as
simple to add "ErrorLog syslog:user" into the httpd.conf file, but this
only logs error messages, not authentication/access\_log messages. The
book gives two prescriptions, one using "AccessLog "\|/usr/bin/logger"
combined" if your OS supports the logger command properly. The other is
to run a custom log message through a Perl script, as seen below:

``CustomLog |/usr/local/apache/bin/apache_syslog combined``

``cat > apache_syslog #!/usr/bin/perl use Sys::Syslog qw( :DEFAULT setlogsock ); setlogsock('unix'); openlog('apache', 'cons', 'pid', 'user'); while ($log = <STDIN>) { syslog('notice', $log); } closelog;``

Microsoft IIS will need to go through the Event Log, which can be
converted to syslog messages using a third-party software package such
as `Snare <http://www.intersectalliance.com/projects/SnareWindows/>`_ or
`MonitorWare Agent <http://www.mwagent.com/>`_. If IIS logs can also be
converted to w3c standard log format, then Apache log analyzer tools
such as `AWStats <http://awstats.org/>`_ could also be used. W3C also
has their own log analysis tool that also does HTML validation, called
the `Log Validator <http://www.w3.org/QA/Tools/LogValidator/>`_. These
may be useful to run following your own scan of the application using
the same or `similar attacker
tool <http://blog.tenablesecurity.com/2008/01/looking-for-web.html>`_,
as they will not only point out where in your application the scan/tool
covered, but also where you may have the most errors or lack of
quality/security controls.

The book `Practical Information Security
Monitoring <http://isbn.nu/9780596518165>`_ also makes some suggestions
for log collections, including the use of
`Sawmill <http://sawmill.net>`_ or `Splunk <http://www.splunk.com/>`_ to
sort/search log messages and gain further information and detail. There
may also be further adjustments you will want to do at the application
(or other tier) layer, such as logging POST data. We discussed logging
HTTP referrers on our old post: `Using Google Analytics to Subvert
Privacy <http://www.tssci-security.com/archives/2007/09/12/using-google-analytics-to-subvert-privacy/>`_.
*Practical Information Security Monitoring* talks about Oracle audit
logging, but there is also a detailed article on Pete Finnigan's blog on
`Oracle forensics and
UKOUG <http://www.petefinnigan.com/weblog/archives/00001021.htm>`_. At
the recent BlackHat DC conference, David Litchfield gave a talk on `The
Forensic Investigation of a Compromised Oracle Database
Server <http://www.blackhat.com/html/bh-dc-09/bh-dc-09-archives.html#Litchfield>`_,
which may also be of interest (once the slides are available). There are
also some new books coming out on the topic of Oracle Forensics in the
next few months / year.

**Web Application Incident Handling: The Easy Way**

Most of the logfile "digging" takes time, even when consolidated and
using expert tools and analysis. There are some very easy approaches
that we've come up with, or seen others using and talking about. These
tools integrate well at the HTML and Script layers.

Over a year ago, Mario Heiderich started the `PHP-IDS
project <http://php-ids.org/>`_, as a way to build protection and
monitoring capabilities into PHP applications. Several side projects
spurred up as a direct result of the incredible work that was put into
PHP-IDS, mainly its `default\_filter.xml regular
expressions <https://svn.php-ids.org/svn/trunk/lib/IDS/default_filter.xml>`_.
This XML file of regular expressions provides capabilities to detect a
vast range of attacks, including XSS, CSRF, SQL Injection, Directory
Traversal, Local/Remote File Execution, DoS, and Information Disclosure.
Part of the success behind the PHP-IDS project, was the constant testing
and attacking of PHP-IDS regex filters, which can be reviewed
extensively in this `sla.ckers.org
thread <http://sla.ckers.org/forum/read.php?12,8085>`_. More info on
PHP-IDS can be found in the `PHP-IDS FAQ <http://php-ids.org/faq/>`_.

Romain Gaucher, wrote
`Scalp <http://rgaucher.info/post/2008/07/18/Scalp%3A-apache-log-based-attack-analyzer-using>`_,
an Apache log analyzer in Python, which leverages PHP-IDS'
default\_filter.xml to detect attack strings in logs. I've used Scalp on
numerous occasions, including a recent attack attempt on
tssci-security.com. By nature, Scalp cannot examine POST content because
Apache logs do not contain POST data. (See PHP-IDS or mod\_security for
those purposes)

Simply use Scalp by running it as follows (keep in mind there may be
false positives with regards to the attack type, though it is very good
at pulling attack queries from the log):

``./scalp.py --log access_log --filters ./default_filter.xml --html --tough --exhaustive``

`Arshan Dabirsiaghi <http://i8jesus.com/?p=33>`_ recently released
`OWASP
Scrubbr <https://www.owasp.org/index.php/Category:OWASP_Scrubbr>`_.
Scrubbr works by detecting input data in a specified database that does
not match up with a specified AntiSamy policy file. Because Scrubbr uses
an AntiSamy policy to validate data, does not mean it necessarily
detects XSS in your database. Note, one does not require AntiSamy to be
implemented in an application to use Scrubbr. Using Scrubbr, you have
the capability of validating each and every column capable of holding
strings of every row of every table in a database.

Together, Scalp and Scrubbr make for excellent web application security
forensic tools. Scalp can help detect attacks in Apache logs, and
Scrubbr can help you clean your database of content that does not match
your site's policy.
