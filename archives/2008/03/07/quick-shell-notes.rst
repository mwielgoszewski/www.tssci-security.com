author: Marcin
disqus_id: 23e77b35-3ae8-49a7-b991-7275283c7d1b
disqus_url: http://www.tssci-security.com/archives/2008/03/07/quick-shell-notes/
mod_date: 2008-03-07 12:34:07
parent: 0
post_id: 382
post_type: post
pub_date: 2008-03-07 12:34:06
public: 'yes'
slug: quick-shell-notes
tags:
- Linux
- Hacking
template: post.html
title: Quick Shell  Notes

Quick Shell  Notes
##################

I've been doing some work lately with text files and have been using
various shell command techniques to manipulate them for whatever
purposes I need. This isn't a HOWTO guide as much as it is a reference
for myself and others that just need something quick to work off of.

The first command I reach for is the ``find`` utility. If you didn't
know, you can pass arguments to ``find`` that will get executed when
``find`` finds a match. This command will find all Nmap greppable output
files and ``grep`` for lines with "Status: Up":

``$ find . -name *.gnmap -exec grep "Status: Up" {} \; Host: 192.168.1.1 ()    Status: Up Host: 192.168.1.10 ()   Status: Up Host: 192.168.1.40 ()   Status: Up Host: 192.168.1.42 ()   Status: Up Host: 192.168.1.102 ()  Status: Up Host: 192.168.1.103 ()  Status: Up``

You can improve the above command further with \`awk\` to only print out
the IP addresses that appeared online:

``$ find . -name *.gnmap -exec \ awk '/Status:\ Up/ {print $2}' {} \; 192.168.1.1 192.168.1.10 192.168.1.40 192.168.1.42 192.168.1.102 192.168.1.103``

If you need to know what file the matching results came from, you can do
the following:

``$ find . -name *.gnmap -exec \ awk '/Status:\ Up/ {print $2}' {} \; -print 192.168.1.1 192.168.1.10 192.168.1.40 192.168.1.42 192.168.1.102 192.168.1.103 ./nmap_scans/192.168.1.0_24.gnmap``

Nmap results are pretty easy to go through, but what if you have Nessus
nbe files? If you've ever seen a Nessus nbe file, it isn't pretty. The
following command will run through a nbe file and print out IP addresses
and NetBIOS names in CSV format. `Nessus PluginID
10150 <http://www.nessus.org/plugins/index.php?view=single&id=10150>`_
identifies scanned hosts' NetBIOS names.

``$ find . -name *.nbe -exec awk -F '|' '$5=="10150"' {} \; | \ awk '{print $63"|"$1}' | awk -F '|' '{print $1","$4}' stacker,192.168.1.10 slaptiva,192.168.1.40 thinker,192.168.1.42``

The last script I have found useful is when I need to pull text broken
up over several lines back into one really long line. I accomplish this
using awk, with the following command:

``$ awk 'BEGIN {RS="\ \ "; FS="\ "} {for (i=1;i<=NF;i++) \ printf "%s ", $i ; printf "\ \ " }'``

The `Handy One-Liners for Awk <http://www.pement.org/awk/awk1line.txt>`_
and `Handy One-Liners for Sed <http://www.pement.org/sed/sed1line.txt>`_
have both been awesome references that I keep bookmarked. I have also
found myself keeping `UNIX Power Tools <http://isbn.nu/0596003307>`_
open all day as well.
