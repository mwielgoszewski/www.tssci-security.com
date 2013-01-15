author: dre
disqus_id: fdc5aace-4321-401e-97ef-c02bdd588dae
disqus_url: http://www.tssci-security.com/archives/2008/02/05/hardware-vm-security-past-and-present/
mod_date: 2008-02-05 17:39:47
parent: 0
post_id: 377
post_type: post
pub_date: 2008-02-05 17:35:04
public: 'yes'
slug: hardware-vm-security-past-and-present
tags:
- tech
- linux
- security
- hacking
template: post.html
title: 'Hardware VM security: past and present'

Hardware VM security: past and present
######################################

Marcin and I were talking a bit about mainframe security today. I
recalled how fantastic mainframes were while he had his hands in the
trenches. Yes, I know that IBM renamed MVS to z/OS (as well as other
things) years ago. However, the concepts remain the same: TSO, ISPF, and
JCL are still there.

I tried to explain some of the differences between z/VM and z/OS. z/VM
is based on VM/CMS, which ran an antiquated version of hardware
virtualization concepts that we find in modern technology such as Xen. I
also pointed Marcin to the Wikipedia entry for
`RACF <http://en.wikipedia.org/wiki/IBM_Resource_Access_Control_Facility>`_,
where we checked out and discussed all the links. Recently, I had also
read `Mainframe Basics for Security
Professionals <http://isbn.nu/9780131738560>`_, so you can check it out
if you want more information.

As we got deeper into the conversation, we talked less and less about
mainframes and more and more about Xen. I related concepts of clustering
from the Big Blue days of IBM, which ran AIX on SP2 clusters. What Xen
and new-age hardware virtualization packages are lacking is not only
security concepts, but also general improvements and refinement of
technique.

The whole point of running multiple OSes on a single machine escapes
most people. They mostly want it so that they can run Mac OS X and
Windows on the same laptop. That's the opposite of what this technology
is meant to do. It's for big servers with lots of processors and memory.
It's intended to be able to migrate, restore, route-around availability
issues, and increase performance.

That's correct: increase performance while also moving an OS between
physical machines. Late at night, an entire mainframe-sized machine or
two can be shutdown for maintenance and to save money on power -- while
another mainframe-sized machine picks up that work until early in the
morning.

Some people say, "well if this computer is sitting here only running one
task on CPU for 4 hours a day at 90%, then we can just run SETI@home the
rest of the time it's idling at 10%". This is exactly the kind of
attitude that caused the Dot-Com era way of thinking. The real goal is
to move services off that machine when it's not using them, and safely
carry them out elsewhere.

Speaking of the laptop, think of Xen save/restore/migrate more like your
laptop's hibernate feature. When it comes up again, you're back in
business. Xen migrate makes moving an OS between machines "instant
business". The primary extra difficulty system administrators and IT
people have with understanding Xen migration is that it requires shared
storage. I've setup iSCSI with Xen and maintained it using CentOS
(RedHat Enterprise Linux, or RHEL), even in a clustered configuration.
When architecting this sort of solution -- you really have to look at
all the dependencies you create, otherwise you're just adding more
headache. For an introduction to the subject, check out this article on
`Live Migration of Xen Domains <http://www.linux.com/articles/55773/>`_.

While separating out every service into its own guest seems like a great
idea at first, it also would require installing many OSes and keeping
them all up-to-date with patches. This would seem to lessen the security
since most people install an OS using a CDROM or DVD using default
configurations. They don't want to take the time to setup and manage
"more" machines, when they already have their fill with the current
situation/mess they are in.

Enter VMcasting. VMcasting allows package updates to be distributed via
RSS feeds to the guests. I had first heard about VMcasting from a
company who makes both Enterprise Xen control software, as well as an
open-source version --
`Enomalism <http://en.wikipedia.org/wiki/Enomalism>`_. Enomalism has
features that are very different than most of the other Xen Enterprise
managers, including VMcasting. It supports
`sHype <http://www.research.ibm.com/secure_systems_department/projects/hypervisor/>`_
(a hypervisor access-control system similar to SELinux or RACF, with
support of RBAC and TE), a firewall management application, centralized
user management with LDAP controls, and a custom web API written in --
you guessed it -- Ajax. I can't believe I just used Ajax and RSS in the
same paragraph as describing the benefits of hardware virtualization as
it applies to vulnerability management, but there you have it.

The additional benefit of Enomalism comes in the form of its EVA
containers (Enomalism Virtual Appliances). An EVA is a package, but that
package can contain multiple virtual machines, such as two web servers
and two database servers. These can be pre-configured and ready to be
put into a lab or staging environment right away. Speaking of labs,
imagine setting up a security penetration-testing lab using EVA
containers.

After recently also reading "Penetration Tester's Open-Source Toolkit,
Volume 2", the updated section on *Building Penetration Test
Labs*\ gives some excellent suggestions on using Pen-Test "system lab"
LiveCD's for learning purposes. Booting from CDROM as a virtual
environment takes a lot of the work out, but imagine if you combined it
into a bootable Pen-Test "network lab" with an EVA package.

Check out the authors' website at `DE-ICE.Net <http://www.de-ice.net>`_
for a list of the LiveCD "system lab" packages. See if you can spend
some time making them into an EVA container, but don't VMcast and
accidentally upgrade all of the out-of-date packages! Also of note would
be the SecurityDistro website, which lists many of the FOSS LiveCD
projects -- be sure to check out their `new Beta website
portal <http://beta.securitydistro.com/>`_ (register and join the
fourms!), which should `roll into their main
site <http://www.securitydistro.com/>`_ very shortly.
