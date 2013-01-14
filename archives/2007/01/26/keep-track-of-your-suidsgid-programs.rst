author: Marcin
disqus_id: 63b29a14-89dc-4658-8802-34fe74ae49f3
disqus_url: http://www.tssci-security.com/archives/2007/01/26/keep-track-of-your-suidsgid-programs/
mod_date: 2007-01-27 18:44:57
parent: 0
post_id: 144
post_type: post
pub_date: 2007-01-26 14:35:28
public: 'yes'
slug: keep-track-of-your-suidsgid-programs
tags:
- Security
template: post.html
title: Keep track of your SUID/SGID programs

Keep track of your SUID/SGID programs
#####################################

Part of any monitoring and intrusion detection strategy should include
file integrity checking and regularly auditing programs capable of
privilege escalation. These programs are often replaced or modified by
intruders, creating processes or performing other functions than they
were originally designed to. In Linux, these programs are identified via
a SUID or SGID bit in the permission set. An example of of a program
with the SUID bit set, is:

1004904 24 -rw\ **s**\ r-xr-x 1 root root 23588 Oct 19 15:52
/usr/bin/chsh

Notice I bolded the **s**, which identifies this program as one capable
of acquiring root privileges. A program with the SGID would have the
executable group permission set to **s** as well. i.e. -rwsr-**s**\ r-x

To locate all the SUID programs on your system: in a terminal, enter the
following command:

# find / -type f -perm -04000 -ls

For SGID programs, run the following command:

# find / -type f -perm -02000 -ls

I like to cat the output of these commands into files and then calculate
an md5sum. I store this md5 hash in another location and I can perform
the same command a month, 3 months, even 6 months from now and quickly
check the list of programs for changes.

# find / -type f -perm -04000 -ls > suid.txt # find / -type f -perm
-02000 -ls > sgid.txt # md5sum suid.txt bc8m092ciuhmds09238yfhkd8q3halc2
suid.txt # md5sum sgid.txt bc12e97ea5c11d206382a30f4cb9487c sgid.txt
