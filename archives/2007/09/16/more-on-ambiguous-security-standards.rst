author: Marcin
disqus_id: 7c6ee2de-b17e-4bf5-a33d-6489c4594ddf
disqus_url: http://www.tssci-security.com/archives/2007/09/16/more-on-ambiguous-security-standards/
mod_date: 2007-09-16 18:22:22
parent: 0
post_id: 305
post_type: post
pub_date: 2007-09-16 14:22:04
public: 'yes'
slug: more-on-ambiguous-security-standards
tags:
- Security
template: post.html
title: More on Ambiguous Security Standards

More on Ambiguous Security Standards
####################################

When I finished reading through `PCI DSS
v1.1 <https://www.pcisecuritystandards.org/tech/download_the_pci_dss.htm>`_
the other night (for like the fifth time), several requirements continue
to jump out at me. To understand the PCI requirements, we first need to
understand what is subject to PCI.

From the standard, *PCI DSS requirements are applicable if a Primary
Account Number (PAN) is stored, processed or transmitted. If a PAN is
not stored, processed or transmitted, PCI DSS requirements do not
apply.*

A couple weeks ago, Mark Curphey blogged about `Ambiguous Security
Standards <http://securitybuddha.com/2007/09/04/ambiguous-security-standards/>`_;
standards that make "catch all statements." In the comments, Clint
Garrison points out the updated standard (v1.1) specifies:

    **1.1.6** Justification and documentation for any available
    protocols besides hypertext transfer protocol (HTTP), and secure
    sockets layer (SSL), secure shell (SSH), and virtual private network
    (VPN)
    **1.1.7** Justification and documentation for any risky protocols
    allowed (for example, file transfer protocol (FTP), which includes
    reason for use of protocol and security features implemented

Next up, what CardSystems Solutions `failed to
do <http://www.wired.com/science/discoveries/news/2005/06/67980>`_,

    **3.2** Do not store sensitive authentication data subsequent to
    authorization (even if encrypted)

This requirement only applies to authentication data, not cardholder
data. Sensitive authentication data includes the **full magnetic
stripe**, **CVC2/CVV2/CID**, and **PIN/PIN Block**.

During transmission, sensitive cardholder data must be protected using
encrypted tunnels. This is covered under:

    **4.1** Use strong cryptography and security protocols such as
    secure sockets layer (SSL) / transport layer security (TLS) and
    Internet protocol security (IPSEC) to safeguard sensitive cardholder
    data during transmission over open, public networks.
    Examples of open, public networks that are in scope of the PCI DSS
    are the Internet, WiFi (IEEE 802.11x), global system for mobile
    communications (GSM), and general packet radio service (GPRS).

So what about internal networks that have direct access to cardholder
data? Does the data no longer have to be encrypted?

This requirement is laughable to me:

    **5.1** Deploy anti-virus software on all systems commonly affected
    by viruses (particularly personal computers and servers)
    Note: Systems commonly affected by viruses typically do not include
    UNIX-based operating systems or mainframes.

So, basically what this is saying is install A/V on Windows workstations
and servers... What about Linux and Mac?? Oh wait, they don't get
viruses.

Then there's this requirement:

    **6.6** Ensure that all web-facing applications are protected
    against known attacks by applying either of the following methods:

    -  Having all custom application code reviewed for common
       vulnerabilities by an organization that specializes in
       application security.
    -  Installing an application layer firewall in front of web-facing
       applications.

    Note: This method is considered a best practice until June 30, 2008,
    after which it becomes a requirement.

So which method is it? One or the other or both? Installing a WAF lets
you skimp on code review? What about maintaining the WAF after
installation? This requirement should be reviewed and changed to specify
what is required and like Requirement 1.1.6/7, should have an extra
clause.

Many companies have been adopting two-factor authentication for remote
access as a company-wide policy. Under the PCI,

    **8.3** Implement two-factor authentication for remote access to the
    network by employees, administrators, and third parties. Use
    technologies such as remote authentication and dial-in service
    (RADIUS) or terminal access controller access control system
    (TACACS) with tokens; or VPN (based on SSL/TLS or IPSEC) with
    individual certificates.

For which employees is this required, since PCI DSS only applies to the
cardholder data environment and its system components?

    **8.5.12** Do not allow an individual to submit a new password that
    is the same as any of the last four passwords he or she has used.

I would like to add to this requirement the need for non-repudiation
when an individual submits a request for a new password. Anybody can ask
for a password reset using most common "password reset forms." If you
know the username and email address you can reset anyone's password. Not
enough in my opinion.

I wish more organizations implemented `Role-based access
control <http://en.wikipedia.org/wiki/Role-based_access_control>`_. No
one should be running as Administrator or root user on their local
machine. This PCI requirement states:

    **10.1** Establish a process for linking all access to system
    components (especially access done with administrative privileges
    such as root) to each individual user.

Group and system accounts are the worst because there is little to no
ability to do this. Keep these accounts with as few users as possible
and designate someone to be responsible for its security and
maintenance.

I hate hearing the words "We don't scan against production." Frankly, I
don't care to either. There's just something annoying about, "If you
bring down production with your tests, you're dead meat/fired/a goner."
Well, if your production environment was built properly, you shouldn't
have this problem. People who say this are likely responsible for the
most delicate, insecure network or system around. Seriously.

Under the PCI DSS, it's required you:

    **11.2** Run internal and external network vulnerability scans at
    least quarterly and after any significant change in the network
    (such as new system component installations, changes in network
    topology, firewall rule modifications, product upgrades).

    Note: Quarterly external vulnerability scans must be performed by a
    scan vendor qualified by the payment card industry. Scans conducted
    after network changes may be performed by the company's internal
    staff.

    **11.3** Perform penetration testing at least once a year and after
    any significant infrastructure or application upgrade or
    modification (such as an operating system upgrade, a sub-network
    added to the environment, or a web server added to the environment).
    These penetration tests must include the following:

    -  11.3.1 Network-layer penetration tests
    -  11.3.2 Application-layer penetration tests

I think it's great companies are using tools and processes for
increasing security during development and staging phases. But if you're
not testing your production network, your efforts are for granted. Your
adversaries are not attacking your development and staging environments,
they're attacking your production systems.

This last requirement I have some trouble understanding, since it's
under *Requirement 12: Maintain a policy that addresses information
security*.

    **12.3.10** When accessing cardholder data remotely via modem,
    prohibition of storage of cardholder data onto local hard drives,
    floppy disks, or other external media. Prohibition of cut-and-paste
    and print functions during remote access.

So.. do you do this technically or make it policy? and how do you
enforce that?
