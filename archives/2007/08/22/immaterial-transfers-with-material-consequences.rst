author: Marcin
disqus_id: aeddf8be-2830-41fd-903b-46031fabc01d
disqus_url: http://www.tssci-security.com/archives/2007/08/22/immaterial-transfers-with-material-consequences/
mod_date: 2007-08-23 17:53:24
parent: 0
post_id: 291
post_type: post
pub_date: 2007-08-22 11:17:37
public: 'yes'
slug: immaterial-transfers-with-material-consequences
tags:
- defense
- security
template: post.html
title: Immaterial Transfers with Material Consequences

Immaterial Transfers with Material Consequences
###############################################

Last year, a colleague pointed me to an article by Roland L. Trope in
`September/October 2006 IEEE Security &
Privacy <http://csdl2.computer.org/persagen/DLAbsToc.jsp?resourcePath=/dl/mags/sp/&toc=comp/mags/sp/2006/05/j5toc.xml>`_,
`Immaterial Transfers with Material
Consequences <http://doi.ieeecomputersociety.org/10.1109/MSP.2006.122>`_.
From the abstract:

    The need for such regulations is clear, but many firms underestimate
    the challenges of complying with the defense trade controls embodied
    in the US International Traffic in Arms Regulations (ITAR).
    Companies hoping to enter into defense contracts must therefore
    redefine their basic approach to technical data because the ITARs
    require that they control the destinations of their communications.
    For example, the ITARs prohibit unlicensed communications of
    sensitive data to foreign destinations (another country or a foreign
    national).

Trope recounts a fictitious company's plans and their problems with ITAR
and IT. Based on real events, in March 2006 The Boeing Company and L-3
Communications agreed to pay civil penalties of $15 million and $7
million USD respectively for not complying with ITAR. The consequences
and fines for illegal exports are real. If the Directorate of Defense
Trade Controls determines a violation(s) were unintentional, it can
impose a civil penalty up to $500,000 per violation. If it determines
violations to be intentional, it can impose up to $1 million for each
violation. This can spell numerous violations and result in huge fines
if for example, over the course of one day hundreds of emails are
exchanged between engineers who are both US Citizens and foreign
nationals.

The company planned to encrypt all sensitive traffic and use code names
for email attachments containing sensitive data. They believed using
code names to disguise data would minimize the risk, but in reality,
engineers would select select names from a theme for one project, and
names from another theme for another. It wouldn't take long for someone
to group the emails into their respective project. Many companies adopt
a policy and reliance on encryption for protecting their most sensitive
data. If a laptop goes missing, it is deemed not a risk because it was
encrypted with X algorithm. Not in the eyes of the ITAR, which must
distinguish between procedures that retain control over data and
procedures that relinquish control. By making it available to a foreign
national to obtain a copy, you are committing an export. Encryption is
*not* enough to comply with ITAR because it is not a durable safeguard.
I think we can all agree on this, that given enough computing power and
time, a determined attacker will crack the encryption.

The article also brings up the issue of disclosure and transfer of data.
Data can be disclosed orally or visually through any number of means
such as email, instant message, presentations, etc. If one makes it
possible for a foreign national to obtain a copy of sensitive data
during transmission, an export has occurred. The company in the story
stored sensitive data in an unlocked closet at one of their locations.
Foreign nationals visiting from other countries would be allowed to
store their briefcases in that closet, and consequently give them access
to ITAR-controlled data.

Protecting sensitive data, whether it be ITAR-controlled, classified, or
restricted internal communication is important for every company. Much
of the policies and solutions we implement ignore the problems that
arise when people need to decide on the fly which files contain
sensitive information. It's a huge undertaking to classify existing
data, but you gotta start somewhere -- create a (scalable) data
classification policy and start with all new data.
