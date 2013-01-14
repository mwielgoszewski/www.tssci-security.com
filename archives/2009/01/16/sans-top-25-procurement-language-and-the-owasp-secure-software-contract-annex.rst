author: Marcin
disqus_id: f4d6d81f-f6cd-4a53-a7bb-d79977414787
disqus_url: http://www.tssci-security.com/archives/2009/01/16/sans-top-25-procurement-language-and-the-owasp-secure-software-contract-annex/
mod_date: 2009-01-16 12:19:38
parent: 0
post_id: 443
post_type: post
pub_date: 2009-01-16 00:17:40
public: 'yes'
slug: sans-top-25-procurement-language-and-the-owasp-secure-software-contract-annex
tags:
- People
- Politics
- Security
template: post.html
title: SANS Top 25 Procurement Language and the OWASP Secure Software Contract Annex

SANS Top 25 Procurement Language and the OWASP Secure Software Contract Annex
#############################################################################

As many of you have probably already heard,
`SANS <http://www.sans.org/>`_, in a combined effort with
`MITRE <http://www.mitre.org/>`_ released the `CWE/SANS Top 25 Most
Dangerous Programming Errors <http://www.sans.org/top25errors/>`_. There
have been numerous discussions on both the `Secure Coding
List <http://krvw.com/pipermail/sc-l/2009/001645.html>`_ and `Webappsec
mailing
lists <http://www.webappsec.org/lists/websecurity/archive/2009-01/msg00019.html>`_,
along with a column from Gary McGraw and `11 reasons why Top 10 (or Top
25) lists don't
work <http://www.informit.com/articles/article.aspx?p=1322398>`_. This
post is not about that.

Back in 2004, OWASP published the `Secure Software Contract
Annex <https://www.owasp.org/index.php/OWASP_Secure_Software_Contract_Annex>`_
(referred to as OWASP Contract hereon out) to help software buyers and
sellers achieve a meeting of the minds on application security. The
OWASP Contract was generously placed in the public domain so that
end-users could use it without license burdens. Since that time, the
OWASP Contract has been widely used, even included in a Government
acquisition guide (with full attribution). Now SANS has published their
`SANS Application Security Procurement
Language <http://www.sans.org/appseccontract/>`_ (referred to as SANS
Contract) along with the release of the CWE Top 25.

There is no question, that the SANS Contract contains a ton of language
from the OWASP Contract. Roughly 75% of the SANS Contract is taken from
the OWASP Contract (see below for a side-by-side comparison).

In comparison the original contract put out by OWASP, the SANS-added
contract language is very biased. The OWASP Contract was meant to be
fair, and balanced -- between the software developers and the software
buyers. In the SANS Contract, the terms have been slanted to solely
benefit software buyers and SANS. Yes, SANS; through including terms
that require developers "pass competency tests on application security,"
which map directly back to SANS-offered application security training
and certification exams. In their contract, the vendor bears the burden
of almost every term.

In no way do I intend that this post undermine the incredible efforts
the MITRE organization has done with the `Common Weakness
Enumeration <http://cwe.mitre.org/>`_ project. Steven M. Christey of
MITRE `even
suggests <http://www.webappsec.org/lists/websecurity/archive/2009-01/msg00069.html>`_
"promoting these efforts \*NOW\* while people are still paying
attention."

Instead of looking to the CWE/SANS Top 25 and SANS Application Security
Procurement Language, I suggest everyone review the `OWASP Application
Security Verification
Standard <https://www.owasp.org/index.php/Category:OWASP_Application_Security_Verification_Standard_Project>`_
and `OWASP Secure Software Contract
Annex <https://www.owasp.org/index.php/OWASP_Secure_Software_Contract_Annex>`_.
These two OWASP documents, brought together, set the bar for application
security, and take a truly positive approach. No longer are we
enumerating badness -- creating lists of things to watch out for -- but
what makes an application truly secure. Take it one step further, and
look at Andrew van der Stock's `OWASP Coding
Standard <http://www.greebo.net/2008/09/24/coding-standard/>`_ to what
developers should be doing.

So I leave you all now with the following comparison between the two
contracts and leave the rest up for discussion.

`Side-by-side comparison (diff -u
output) <http://www.tssci-security.com/upload/owasp-sans-diff.txt>`_

`OWASP Contract (Dec
2004) <http://www.owasp.org/index.php/OWASP_Secure_Software_Contract_Annex>`_

`SANS Contract (Jan 2009) <http://www.sans.org/appseccontract/>`_

    WARNING:
    THIS DOCUMENT SHOULD BE CONSIDERED GUIDANCE ONLY. OWASP STRONGLY
    RECOMMENDS THAT YOU CONSULT A QUALIFIED ATTORNEY TO HELP YOU NEGOTIATE A
    SOFTWARE CONTRACT.

    DISCLAIMER

    THIS DOCUMENT SHOULD BE CONSIDERED GUIDANCE ONLY. IT IS STRONGLY
    RECOMMENDED THAT YOU CONSULT A QUALIFIED ATTORNEY TO HELP YOU NEGOTIATE
    A SOFTWARE CONTRACT

    5. PERSONNEL AND ORGANIZATION

    (a) Security Architect Developer will assign responsibility for security
    to a single senior technical resource, to be known as the project
    Security Architect. The Security Architect will certify the security of
    each deliverable.

    Personnel

    The Vendor shall identify in writing the person who will be responsible
    for overall security of the application development, management, and
    update process throughout the Contract period. The person identified
    shall be a single senior technical security specialist, to be known as
    the project Security Lead. The Security Lead shall certify in writing
    the security of each deliverable.

    Security Training

    Developer will be responsible for verifying that all members of the
    developer team have been trained in secure programming techniques.

    Security Training

    The Vendor shall be responsible for verifying that all members of the
    developer team have been successfully trained in secure programming
    techniques.

    Trustworthy Developers

    Developer agrees to perform appropriate background investigation of all
    development team members.

    Background Checks of Developers

    Vendor shall perform appropriate background investigation of all
    development team members and shall certify that all individuals who will
    be involved in this Contract and the software development process have
    cleared the background investigation.

    Vulnerabilities Are Expected

    Both Client and Developer will strive to identify vulnerabilities as
    early as possible in the lifecycle.

    Vulnerabilities, Risks and Threats

    The Vendor shall agree in writing that he will strive to identify
    vulnerabilities, risks and threats as early as possible at any time
    during the software lifecycle.

    Developer and Client agree to work together to understand and document
    the risks facing the application. This effort should identify the key
    risks to the important assets and functions provided by the application.
    Each of the topics listed in the requirements section should be
    considered.

    The Vendor shall identify the key risks to the important assets and
    functions provided by the application. The Vendor shall conduct an
    analysis of the attached 25 most common programming errors and document
    in writing that they have been mitigated.

    Developer agrees to provide secure configuration guidelines that fully
    describe all security relevant configuration options and their
    implications for the overall security of the software. The guideline
    shall include a full description of dependencies on the supporting
    platform, including operating system, web server, and application
    server, and how they should be configured for security. The default
    configuration of the software shall be secure.

    The Vendor shall provide secure configuration guidelines in writing to
    the Purchaser that fully describe all security relevant configuration
    options and their implications for the overall security of the software.
    The guideline shall include a full description of dependencies on the
    supporting platform, including operating system, web server, and
    application server, and how they should be configured for security. The
    default configuration of the software shall be secure.

    Developer agrees to provide documentation that clearly explains the
    design for achieving each of the security requirements.

    The Vendor shall provide written documentation to the Purchaser that
    clearly explains the design for achieving each of the security
    requirements.

    Developer agrees to provide and follow a set of secure coding
    guidelines. These guidelines will indicate how code should be formatted,
    structured, and commented. All security-relevant code shall be
    thoroughly commented. Specific guidance on avoiding common security
    vulnerabilities shall be included. Also, all code shall be reviewed by
    at least one other Developer against the security requirements and
    coding guideline before it is considered ready for unit test.

    The Vendor shall provide and follow a set of secure coding guidelines.
    These guidelines will indicate how code should be formatted, structured,
    and commented. All security-relevant code shall be thoroughly commented.
    Specific guidance on avoiding common security vulnerabilities shall be
    included. Also, all code shall be reviewed by at least one other
    Developer against the security requirements and coding guideline before
    it is considered ready for test.

    6. DEVELOPMENT ENVIRONMENT

    (a) Secure Coding Developer shall disclose what tools are used in the
    software development environment to encourage secure coding.

    (b) Configuration Management Developer shall use a source code control
    system that authenticates and logs the team member associated with all
    changes to the software baseline and all related configuration and build
    files.

    (c) DistributionDeveloper shall use a build process that reliably builds
    a complete distribution from source. This process shall include a method
    for verifying the integrity of the software delivered to Client.

    7. LIBRARIES, FRAMEWORKS, AND PRODUCTS

    (a) Disclosure Developer shall disclose all third party software used in
    the software, including all libraries, frameworks, components, and other
    products, whether commercial, free, open-source, or closed-source.

    (b) Evaluation Developer shall make reasonable efforts to ensure that
    third party software meets all the terms of this agreement and is as
    secure as custom developed code developed under this agreement.

    II. DEVELOPMENT ENVIRONMENT

    (a) Secure Coding The Vendor shall disclose what tools are used in the
    software development environment to encourage secure coding.

    (b) Configuration Management The Vendor shall use a source code control
    system that authenticates and logs the team member associated with all
    changes to the software baseline and all related configuration and build
    files.

    (c) Distribution The Vendor shall use a build process that reliably
    builds a complete distribution from source. This process shall include a
    method for verifying the integrity of the software delivered to Client.

    (d) Disclosure The Vendor shall document in writing to the Purchaser all
    third party software used in the software, including all libraries,
    frameworks, components, and other products, whether commercial, free,
    open-source, or closed-source.

    (e) Evaluation The Vendor shall make reasonable efforts to ensure that
    third party software meets all the terms of this agreement and is as
    secure as custom developed code developed under this agreement

    (e) Security Analysis and Testing

    Developer agrees to provide and follow a security test plan that defines
    an approach for testing or otherwise establishing that each of the
    security requirements has been met. The level of rigor of this activity
    should be considered and detailed in the plan. Developer will execute
    the security test plan and provide the test results to Client.

    III. TESTING

    (a) General The Vendor shall provide and follow a security test plan
    that defines an approach for testing or otherwise establishing that each
    of the security requirements has been met. The level of rigor of this
    test process shall be detailed in the plan. The vendor shall implement
    the security test plan and provide the test results to Client in
    writing.

    9. SECURITY ISSUE MANAGEMENT

    (a) IdentificationDeveloper will track all security issues uncovered
    during the entire lifecycle, whether a requirements, design,
    implementation, testing, deployment, or operational issue. The risk
    associated with each security issue will be evaluated, documented, and
    reported to Client as soon as possible after discovery.

    Tracking Security Issues

    The Vendor shall track all security issues uncovered during the entire
    software lifecycle, whether a requirements, design, implementation,
    testing, deployment, or operational issue. The risk associated with each
    security issue shall be evaluated, documented, and reported to Purchaser
    as soon as possible after discovery

    10. ASSURANCE(a) AssuranceDeveloper will provide a "certification
    package" consisting of the security documentation created throughout the
    development process. The package should establish that the security
    requirements, design, implementation, and test results were properly
    completed and all security issues were resolved appropriately.(b)
    Self-Certification The Security Architect will certify that the software
    meets the security requirements, all security activities have been
    performed, and all identified security issues have been documented and
    resolved. Any exceptions to the certification status shall be fully
    documented with the delivery.

    (c) No Malicious Code Developer warrants that the software shall not
    contain any code that does not support a software requirement and
    weakens the security of the application, including computer viruses,
    worms, time bombs, back doors, Trojan horses, Easter eggs, and all other
    forms of malicious code.

    IV. DELIVERY OF THE SECURE APPLICATION

    The Vendor shall provide a "certification package" consisting of the
    security documentation created throughout the development process. The
    package shall establish that the security requirements, design,
    implementation, and test results were properly completed and all
    security issues were resolved appropriately.

    Self-Certification The Security Lead shall certify to the purchaser in
    writing that the software meets the security requirements, all security
    activities have been performed, and all identified security issues have
    been documented and resolved. Any exceptions to the certification status
    shall be fully documented with the delivery.

    No Malicious Code Developer warrants that the software shall not contain
    any code that does not support a software requirement and weakens the
    security of the application, including computer viruses, worms, time
    bombs, back doors, Trojan horses, Easter eggs, and all other forms of
    malicious code.

    11. SECURITY ACCEPTANCE AND MAINTENANCE

    (a) Acceptance The software shall not be considered accepted until the
    certification package is complete and all security issues have been
    resolved.

    (b) Investigating Security Issues After acceptance, if security issues
    are discovered or reasonably suspected, Developer shall assist Client in
    performing an investigation to determine the nature of the issue.

    V. SECURITY ACCEPTANCE AND MAINTENANCE

    Acceptance The software shall not be considered accepted until the
    Vendor certification package is complete and all security issues have
    been resolved.

    Investigating Security Issues After acceptance, if security issues are
    discovered or reasonably suspected, Vendor shall assist Purchaser in
    performing an investigation to determine the nature of the issue
