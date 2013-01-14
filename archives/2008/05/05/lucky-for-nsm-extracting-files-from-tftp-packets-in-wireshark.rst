author: Marcin
disqus_id: 33723739-3c4e-4b3e-a5ca-739ea5a0464f
disqus_url: http://www.tssci-security.com/archives/2008/05/05/lucky-for-nsm-extracting-files-from-tftp-packets-in-wireshark/
mod_date: 2008-05-06 00:12:25
parent: 0
post_id: 402
post_type: post
pub_date: 2008-05-05 23:29:35
public: 'yes'
slug: lucky-for-nsm-extracting-files-from-tftp-packets-in-wireshark
tags:
- Security
- Work
template: post.html
title: Lucky for NSM -- Extracting files from TFTP packets in Wireshark

Lucky for NSM -- Extracting files from TFTP packets in Wireshark
################################################################

So the other day I get a call from the forensics team at work asking for
help with some packet analysis. A client's users had reported phishing
activity, so they decided to run a full-content capture using Wireshark
on the external and internal network interfaces. Upon doing so, they
witnessed suspicious activity; commands such as cmd.exe were triggering
alerts on their Snort sensors as well. Oh boy...

After the attack was contained, the client's internal security team had
reconstructed the attack and learned that the attacker had compromised a
server, downloaded tools to C:\\Windows\\system32\\, including
Foundstone's SuperScan and Sysinternal's
`PsExec <http://technet.microsoft.com/en-us/sysinternals/bb897553.aspx>`_,
and then uploaded three RAR files via TFTP.

My goal: see what was in those RAR files. Whether it be intellectual
property, client information, etc, the most important task was to
identify the sensitivity of the data inside. I opened the raw capture in
Wireshark and identified the three TFTP streams. I thought I would
right-click and select "Follow UDP Stream," then save the raw data as a
RAR file. Unfortunately, when I did this, I could then not extract the
contents of the archive. Looking for an alternative, Landon pointed me
to `tcpxtract <http://tcpxtract.sourceforge.net/>`_ (as `detailed on
Bejtlich's
blog <http://taosecurity.blogspot.com/2006/01/network-forensic-traffic.html>`_),
which at the time sounded good, but I couldn't get it to compile under
Cygwin and I wanted to get this done quickly. Oh well, with a name like
tcpxtract, can it even handle UDP streams?

So, looking at the packets again, there were only about 20 per stream, I
decided to do this task manually. Who knew if it would work, but I gave
it a try. I manually selected each individual TFTP Data Packet (not
acknowledgments!) and selected the TFTP Data portion which began at the
47th byte in the packet. I did a Ctrl-H (or select File > Export >
Selected Packet Bytes) and saved as block01, block02, block03 for each
packet in the stream. I then cat all the files and redirected stdout to
file01.rar like so:

``$ cat block* > file01.rar``

I opened the RAR file and extracted the contents without a problem. I
admit I was a bit excited at this point, interested to see its contents.
I later spoke with Richard about this, who pointed me to a `blog
post <http://taosecurity.blogspot.com/2007/09/tftpgrab.html>`_ from last
year about `TFTPgrab <http://pseudo-flaw.net/tftpgrab/>`_. Remembering
this post now, I find it interesting that there was no way to rebuild
files transferred through TFTP before TFTPgrab. Yet, I successfully
managed to do so here.

Anyways, here are some lessons learned. The attacker was sloppy, amateur
at best. To call it amateur would be an insult to amateurs everywhere.
For the client, it was sheer luck they ran a full-content capture at the
moment of the intrusion and our adversary used a non-encrypted medium to
transfer data. Had he encrypted his files or used an SSL tunnel, we
wouldn't have anything. Not to mention, if this is the kind of stuff
that gets picked up during a random packet capture, who knows what kinds
of malicious activity they have been or are currently subject to. Even
more so, why are companies not doing egress filtering of traffic? TFTP
should have been blocked at the firewall no ifs, ands or buts.

One last lesson. When you outsource IDS monitoring activities to an MSSP
(who probably has one or two analysts per 30-35 clients like yourself),
attacks against you will not be treated with the same diligence you
would expect of your own staff. They just don't care as much as you do.
