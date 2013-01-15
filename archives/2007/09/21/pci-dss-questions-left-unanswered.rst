author: Marcin
disqus_id: 43e12467-e53d-462a-bb08-7c8a689b8c8f
disqus_url: http://www.tssci-security.com/archives/2007/09/21/pci-dss-questions-left-unanswered/
mod_date: 2007-09-21 15:39:14
parent: 0
post_id: 308
post_type: post
pub_date: 2007-09-21 15:39:14
public: 'yes'
slug: pci-dss-questions-left-unanswered
tags:
- security
template: post.html
title: PCI DSS questions left unanswered

PCI DSS questions left unanswered
#################################

Chris Eng of Veracode, attended the first PCI Community Meeting in
Toronto, an organized panel that brings QSAs, ASVs and those subject to
PCI together with the PCI DSS council, and lives to\ `blog about
it <http://www.veracode.com/blog/?p=63>`_. Several days ago, I `posted
some
thoughts <http://www.tssci-security.com/archives/2007/09/16/more-on-ambiguous-security-standards/>`_
on the PCI DSS and several of it's ambiguous requirements. Chris is left
with some of the same unanswered questions and more after attending two
panel discussions -- one covering the Payment Application Data Security
Standard (PA-DSS) and Requirement 6.6 of the PCI Data Security Standard
(PCI-DSS).

On PA-DSS and Visa's Payment Application Best Practices (PABP):

    The panel outlined the changes to PABP as follows:

    -  Explanation/Clarification. Just providing additional text around
       the best practices, presumably to make them easier to understand.
    -  Enhancements. Things necessary to turn a Best Practices document
       into a standard. The panel did not go into exhaustive detail on
       the enhancements, but the examples given were requiring assessors
       to use forensic tools to examine the output of the PA,
       introducing stronger lab requirements, and requiring a
       penetration test of the PA to identify common (e.g. OWASP-style)
       vulnerabilities.

    Unfortunately, this was the extent of the detail. I wanted more
    information on the enhancements but didn't get a chance to ask a
    question due to time constraints. Specifically, it would be nice to
    understand whether code analysis would be an alternate option for
    the penetration test requirement. Or what exactly they meant by
    using forensic tools to examine the application's output.

Interesting... I'd like to know more about "using forensic tools to
examine the application's output" as well. In my previous post, I
specifically wrote in regards to PCI DSS Requirement 6.6:

    ***6.6** Ensure that all web-facing applications are protected
    against known attacks by applying either of the following methods:*

    -  *Having all custom application code reviewed for common
       vulnerabilities by an organization that specializes in
       application security.*
    -  *Installing an application layer firewall in front of web-facing
       applications.*

    *Note: This method is considered a best practice until June 30,
    2008, after which it becomes a requirement.*

    So which method is it? One or the other or both? Installing a WAF
    lets you skimp on code review? What about maintaining the WAF after
    installation? This requirement should be reviewed and changed to
    specify what is required and like Requirement 1.1.6/7, should have
    an extra clause.

Well, the panel did not answer much about that either, and Chris had
other question's regarding automated source code analysis and whether it
would satisfy the requirement for code review. Due to false
positives/negatives, an automated source code analysis would *not*
satisfy it and would still require a security professional to do the
review. Chris brings up a point on benchmarking WAFs for false
positives/negatives -- since as it's written, Requirement 6.6 is an
either-or and a security compromise to take.

So there are a lot of questions left unanswered, and unfortunately the
questions asked were ones that any QSA/ASV should be able to answer. The
technical meat behind PCI was left on the backburner. doh!
