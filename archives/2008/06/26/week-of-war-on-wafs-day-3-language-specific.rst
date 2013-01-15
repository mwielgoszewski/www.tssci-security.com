author: dre
disqus_id: 11aa1ed2-faad-4950-b3c7-b563a8ba4b7f
disqus_url: http://www.tssci-security.com/archives/2008/06/26/week-of-war-on-wafs-day-3-language-specific/
mod_date: 2008-06-26 02:15:28
parent: 0
post_id: 419
post_type: post
pub_date: 2008-06-26 02:15:28
public: 'yes'
slug: week-of-war-on-wafs-day-3-language-specific
tags:
- defense
- security
template: post.html
title: 'Week of War on WAF''s: Day 3 -- Language specific'

Week of War on WAF's: Day 3 -- Language specific
################################################

This post comes via WAF thoughts from `Christian Matthies's
blog <http://christ1an.blogspot.com>`_ circa one year ago. Christian
starts out with a bang:

    [...] it seemed to me that quite a lot of people aren't aware of how
    effective such solutions in fact are. Basically I agree that
    different layers of protection [are] always a good idea to get at
    least close to a status that can considered to be secure.

In christ1an's post, `The real effectiveness of current
WAF <http://christ1an.blogspot.com/2007/05/real-effectiveness-of-current-waf.html>`_,
he speaks rather positively about WAF technology, but ends on a rather
sour note:

    [...] these solutions are actually doomed to fail by design [...]
    unless a Web application firewall is **implemented exclusively for a
    specific language**, it is very likely to be insecure and therefore
    using them should be well considered.

He makes some interesting points that you should certainly check out.
Best -- this jives with what Fortify research on dynamic taint
propagation discussed in their recent OWASP AppSec EU 2008 presentation,
` <http://www.owasp.org/index.php/AppSecEU08_The_Dynamic_Taint_Propagation_Finding_Vulnerabilities_Without_Attacking>`_\ `Dynamic
Taint Propagation: Finding Vulnerabilities Without Attacking
[PPT] <http://www.owasp.org/images/d/d3/AppSecEU08_Dynamic_Taint_Propagation_OWASP.ppt>`_--
and paper, `Watch What You Write: Preventing Cross-Site Scripting by
Observing Program Output
[PDF] <http://www.owasp.org/images/9/9d/OWASP-AppSecEU08-Madou.pdf>`_.

christ1an seems positive about Mario Heiderich's `PHPIDS Monitoring
attack surface activity
[PPT] <http://www.owasp.org/images/d/dd/AppSec08_PHPIDS_Monitoring_attack_surface_activity.ppt>`_
web application attack \`detection' work (also presented at OWASP AppSec
EU 2008). Fortify, on the other hand, seemed bullish on the `CORE
GRASP <http://grasp.coresecurity.com/>`_ attack \`prevention' project
(also for PHP).

With regards to XSS and SQL injection attacks, this work is nice because
as some of us know -- neither attack is primarily about input
validation. SQL injection is a software weakness that can be prevented
through parameterized queries with binding of all variables (thanks, Jim
Manico, for this verbiage). Cross-site scripting (and particular
variations such as HTML/CSS/JS injection) is a software weakness that
can be prevented by output encoding (although for exhaustive methods,
check out the work by Arshan Dabirsiaghi in the `OWASP AntiSamy
Project <http://www.owasp.org/index.php/Category:OWASP_AntiSamy_Project>`_).

Now if we could only start to talk about the other 600+ software
weaknesses and their root-causes and strongest defense strategies.
