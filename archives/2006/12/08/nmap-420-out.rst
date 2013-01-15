author: Marcin
disqus_id: 27fc0238-0f94-4c81-b230-0752d554d1ee
disqus_url: http://www.tssci-security.com/archives/2006/12/08/nmap-420-out/
mod_date: 2006-12-09 03:07:59
parent: 0
post_id: 88
post_type: post
pub_date: 2006-12-08 02:46:17
public: 'yes'
slug: nmap-420-out
tags:
- links
- security
template: post.html
title: Nmap 4.20 Out

Nmap 4.20 Out
#############

From the `nmap-dev mailing
list <http://seclists.org/nmap-dev/2006/q4/0172.html>`_:

    From: Fyodor
    <`fyodor\_at\_insecure.org <mailto:fyodor_at_insecure.org?Subject=Re:%20Nmap%204.20!>`_\ >
    Date: Thu, 7 Dec 2006 20:19:00 -0800 Hi Everyone, I just posted the
    binaries for 4.20! Woohoo! This is the first "stable" release in
    almost 6 months, and contains tons of important changes over 4.11.
    But I think you guys are well familiar with those.

    Please give it a try in the next few hours if you can. Unless I hear
    about important problems, I'll release it to the nmap-hackers later
    tonight or tomorrow morning. That posting will include a summary of
    changes, stupid pot smoking jokes, etc.

    You can find the goods at:

    `http://download.insecure.org/nmap/dist/nmap-4.20.tar.bz2 <http://download.insecure.org/nmap/dist/nmap-4.20.tar.bz2>`_
    `http://download.insecure.org/nmap/dist/nmap-4.20-setup.exe <http://download.insecure.org/nmap/dist/nmap-4.20-setup.exe>`_
    `http://download.insecure.org/nmap/dist/nmap-4.20-win32.zip <http://download.insecure.org/nmap/dist/nmap-4.20-win32.zip>`_
    `http://download.insecure.org/nmap/dist/nmap-4.20-1.src.rpm <http://download.insecure.org/nmap/dist/nmap-4.20-1.src.rpm>`_
    `http://download.insecure.org/nmap/dist/nmap-4.20-1.i386.rpm <http://download.insecure.org/nmap/dist/nmap-4.20-1.i386.rpm>`_
    `http://download.insecure.org/nmap/dist/nmap-frontend-4.20-1.i386.rpm <http://download.insecure.org/nmap/dist/nmap-frontend-4.20-1.i386.rpm>`_
    `http://download.insecure.org/nmap/dist/nmap-4.20-1.x86\_64.rpm <http://download.insecure.org/nmap/dist/nmap-4.20-1.x86_64.rpm>`_
    `http://download.insecure.org/nmap/dist/nmap-frontend-4.20-1.x86\_64.rpm <http://download.insecure.org/nmap/dist/nmap-frontend-4.20-1.x86_64.rpm>`_
    `http://download.insecure.org/nmap/dist/nmap-4.20.tgz <http://download.insecure.org/nmap/dist/nmap-4.20.tgz>`_
    And here are the changes since RC2:

    o Integrated the latest OS fingerprint submissions. The 2nd
    generation DB size has grown to 231 fingerprints. Please keep them
    coming! New fingerprints include Mac OS X Server 10.5 pre-release,
    NetBSD 4.99.4, Windows NT, and much more.

    o Fixed a segmentation fault in the new OS detection system which
    was reported by Craig Humphrey and Sebastian Garcia.

    o Fixed a TCP sequence prediction difficulty indicator bug. The
    index is supposed to go from 0 ("trivial joke") to about 260
    (OpenBSD). But some systems generated ISNs so insecurely that Nmap
    went berserk and reported a negative difficulty index. This
    generally only affects some printers, crappy cable modems, and
    Microsoft Windows (old versions). Thanks to Sebastian Garcia for
    helping me track down the problem.

    Enjoy! Fyodor
