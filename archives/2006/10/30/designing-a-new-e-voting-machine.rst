author: Marcin
disqus_id: 2e517a7a-5b19-4210-9abf-06de3ada1643
disqus_url: http://www.tssci-security.com/archives/2006/10/30/designing-a-new-e-voting-machine/
mod_date: 2006-10-31 15:21:45
parent: 0
post_id: 72
post_type: post
pub_date: 2006-10-30 15:18:47
public: 'yes'
slug: designing-a-new-e-voting-machine
tags:
- links
- tech
- security
template: post.html
title: Designing a New E-Voting Machine

Designing a New E-Voting Machine
################################

With all the problems and flaws in electronic voting machines being
exposed over the past couple months, I'd like to know why there hasn't
been any effort in designing a new voting system from scratch. What does
an electronic voting machine need to be secure and reliable? The effort
almost seems to simple:

-  A paper trail with no edit-ability. Perhaps design a system that will
   punch, cut and read a ticket that the voter can then instantly verify
   before it is dropped into a locked ballot box
-  Eliminate removable memory cards.. How can we reprogram the machine
   after the election for the next one? There still needs to be
   something removable and some tamper-evident stickers and alarms in
   place.
-  The more simple the code is, the less bugs and security flaws it will
   contain
-  Have software check itself using checksums, and perhaps implement
   microchips to take on the task as well.
-  Provide source code to the public. This would give the entire nation
   a chance to review the code, and/or audit running code whenever they
   feel is necessary
-  Random audits and machine checks before the booths open
-  Hand count paper ballots and compare with electronic tallies

Then arises the issue of how can a voter know for sure their vote was
counted correctly? I'm still pondering the idea as well... and it seems
there might not be a simple solution. Anyone have any ideas?
