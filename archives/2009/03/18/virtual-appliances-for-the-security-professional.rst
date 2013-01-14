author: dre
disqus_id: 72c41a31-2a5c-4db6-97b4-0712b964ec46
disqus_url: http://www.tssci-security.com/archives/2009/03/18/virtual-appliances-for-the-security-professional/
mod_date: 2009-03-18 20:54:50
parent: 0
post_id: 449
post_type: post
pub_date: 2009-03-18 18:35:56
public: 'yes'
slug: virtual-appliances-for-the-security-professional
tags:
- Defense
- Hacking
- Security
template: post.html
title: Virtual appliances for the security professional

Virtual appliances for the security professional
################################################

**Virtual Infrastructure Security Facts**

-  The number of virtual servers will rise to more than 1.7 million
   physical servers by 2010, resulting in 7.9 million logical servers.
   Virtualized servers will represent 14.6% of all physical servers in
   2010 compared to just 4.5% in 2005 (IDC)
-  **60% of production virtual machines will be less secure** than their
   physical counterparts through to 2009 (Gartner)
-  More than 75% of respondents cited reducing infrastructure hardware
   and software costs as the critical driver in data center planning
   (Ziff Davis)
-  Overall virtualization market has grown from approximately $560
   million in 2005 to a forecasted $2.7 billion in 2009 (IDC)
-  10% of servers will be virtual by 2009, 60% by 2013 (Gartner)
-  **Fewer than 10%** of organizations **are doing anything** special
   **for virtualization security** (Ziff Davis)

Virtual Appliances (VAs) have several advantages over Live CD
distributions. They are easier to enable persistence and customize
(especially for real performance in a VM, instead of via a bootable
ISO). It's easier to take snapshots that represent a "point-in-time" to
rollback configurations -- or prevent security scanners from running
into loop or crash conditions. Cloning and templating can have
significant advantages in terms of agility for testing and scaling
architectures, in addition to aiding changes and repair processes.

Microsoft (including the **free**\ Hyper-V Server) and VMware (including
the **free** ESXi) are the major players for hardware-VMM server
virtualization, with the FOSS project, Xen, being prominent in some
other product implementations.

Both VMware and Microsoft have their own disk formats for importing VMs
(aka "Guests") on to their Hosts (aka Hypervisor or Virtual Machine
Monitor -- VMM). There is also a third, open format called OVF (or `Open
Virtualization
Format <http://en.wikipedia.org/wiki/Open_Virtualization_Format>`_).

#. Microsoft: VHD (Virtual Hard Disk)
#. VMware: vmdk (virtual machine disk)
#. Open Virtualization Format: ovf

Sometimes, one-off scenarios will utilize tar, zip, or rar files to
distribute VMs or encapsulated VMs, but this is becoming more and more
rare.

**Virtual Appliances**

A Virtual Appliances is a pre-packaged VM. Normally, a VM is just like a
new machine -- no OS, no nothing. Virtual Appliances come with stuff,
and usually only require booting into a DHCP-enabled network, where they
self-configure themselves and become available via a web interface for
further interaction.

You can find VAs at the following sources:

-  VMware --
   `http://www.vmware.com/appliances/ <http://www.vmware.com/appliances/>`_
   `http://www.vmware.com/appliances/partner/ <http://www.vmware.com/appliances/partner/>`_
-  Microsoft -- `VHD Test Drive
   Program <http://technet.microsoft.com/en-us/bb738373.aspx>`_, `VHD
   Partners <http://www.microsoft.com/windowsserversystem/virtualserver/partners/vhdpartners.mspx>`_,
   `VHDs by Product <http://technet.microsoft.com/en-us/bb738372.aspx>`_

For those of you still using the outdated OSI model (i.e. you stupid
network security geeks, j/k ;> ), here is a general layout of what is
available for you:

-  Layer 7 --`Stonegate Virtual
   IPS <http://www.vmware.com/appliances/directory/1320>`_
-  Layers 5&6 -- `Checkpoint VPN-1 Virtual
   Edition <http://www.checkpoint.com/products/vpn-1_ve/index.html>`_
-  Layer 4 --
   `X-m0n0wall <http://www.vmware.com/appliances/directory/150>`_
-  Layer 3 -- `Vyatta Community Edition
   5 <http://www.vyatta.org/documentation/>`_
-  Layer 2 --
   `HoneyMole <http://www.honeynet.org.pt/index.php/HoneyMole>`_

Certainly, if you haven't read or seen Chris Hoff's various recent
presentations, then you're going to screw this up. However, anyone with
even a few weeks of virtual infrastructure experience will understand
the application of the above VAs in a virtual infrastructure
environment.

VMware is very useful for fuzz testing (as seen with
`Sulley <http://www.fuzzing.org/category/sulley/>`_ and other frameworks
which include interfaces to VMware monitors), and full-state or kernel
debugging (as seen with `Syser <http://www.sysersoft.com>`_, the
replacement to the classic SoftICE), but this is more often for the
VMware Server/Workstation products, not their Virtual Infrastructure
products (i.e. ESX, ESXi, Virtual Center, `vCenter
Server <http://www.vmware.com/download/download.do?downloadGroup=VCVA-BETA>`_,
and vSphere).

Many ISOs are moving to VAs.

Many demo-ware and software evaluations are moving from standalone
installs directly to VAs (i.e. demo the new app on the new OS at the
same time!).

Take these examples outlined in the next sections for a test drive.

**Pen-test VAs**

Would it be nice if you could setup a perfect pen-test environment, save
it, and then clone it a bunch of times in order to tweak one specific
thing and then run all your tests in parallel (say, with different
credentials). Well this is exactly what Pen-test VAs are going to allow
you to do. One machine: 4 web application security scanners.

Or better -- run DRS (VMware's Distributed Resource Schedule), which
will automatically move VMs around contended Host resources. Say you
have four physical machines, all with a dual-core 2.2GHz proc and 3GB of
memory. Now say that you're scanning some client machines in far away
places (with constant ISP bandwidth churn on both ends -- and in
between). Let's pretend you have this setup:

-  IBM AppScan running default-mode with regular user credentials
-  Acunetix WVS with AcuSensor tweaked specifically to the app using (at
   the very least) the web configuration files and structural layout.
   One of your co-workers is changing the configuration as he/she learns
   more about the app from the client and working with the Acunetix
   support team
-  WebInspect running in four more VMs, two with admin rights -- two
   others with user rights. They're setup to do parameter tampering and
   see if they can pollute access controls from admin to admin, user to
   user, or any combination

If any of you know what CloudAV is... think what CloudWASS would look
like. I call it "WhiteRockSec", which is... "like WhiteHatSec, but on
Crack".

Of course nobody has built these VAs yet. In the meantime, you can use
these two VAs to accomplish something similar:

#. `OWASP Live CD <http://www.vmware.com/appliances/directory/73789/>`_
   VA
#. InGuardians `Samurai Web Testing
   Framework <http://www.vmware.com/appliances/directory/node/73043/>`_

**WAF VAs or as I like to call them: VA+WAF**

VA+WAF is a Virtual Appliance that includes a WAF. To those of you who
don't love my humor, you're bound to definitely hate me for flipping the
script on this marketing terminology.

Because network vendors (F5, Citrix, Breach, Cisco, Barracuda, Imperva,
et al) really like to sell expensive appliances, it's likely that they
aren't too keen on the idea of selling a software-based VA that is
equivalent to their mind like an ISO (anyone remember the presentation
on how to reverse-ISO a Netscreen IDP onto cheap PC hardware?). So you
don't see too many of these around yet.

I did happen to find these two though:

#. Microsoft `IAG 2007 Virtual Machine
   Trial <http://www.microsoft.com/downloads/details.aspx?displaylang=en&FamilyID=558b262b-f953-435c-a255-53e9d450527d>`_
#. `Security Enhanced Web Application
   Server <http://www.vmware.com/appliances/directory/393/>`_ with
   mod-security

**AppDev/AppSec VAs**

Again, there really isn't much here yet.

Microsoft has:

#. `Visual Studio Team System 2008 VSTS Hyper-V Image
   (Trial) <http://www.microsoft.com/downloads/details.aspx?displaylang=en&FamilyID=9eb65c97-29c9-4d05-ae45-73d22ad4b86e>`_
#. `Visual Studio Team System 2008 TFS Hyper-V Image
   (Trial) <http://www.microsoft.com/downloads/details.aspx?displaylang=en&FamilyID=39644cdd-db4d-445e-b087-dd3e3cdf03fb>`_
#. `Microsoft Pre-release Software Visual Studio 2010 and .NET Framework
   4.0 Community Technology Preview
   (CTP) <http://www.microsoft.com/DOWNLOADS/details.aspx?FamilyID=922b4655-93d0-4476-bda4-94cf5f8d4814&displaylang=en>`_

Note well that the last link above, for the VSTS 2010 pre-release, has
the VA in "vmc" format. "vmc format" was from Microsoft's older product.
Searching the Microsoft Download Center for vmc or vhd both have great
results, but hopefully Microsoft will standardize on VHD or OVF. For
now, you can convert in many ways -- including the latest tool from
Microsoft, the `VMC to Hyper-V Import
Tool <http://technet.microsoft.com/en-us/magazine/2009.03.utilityspotlight.aspx>`_.

Integrating AppSec with the above VSTS and TFS tools is relatively easy.
For those not familiar with FxCop, StyleCop, and CAT.NET -- you
certainly should be. TFS has some great built-ins for Governance that
apply equally well between quality and security. The `TFS Team
Blog <http://blogs.msdn.com/teams_wit_tools/>`_ has some decent postings
on topic, not directly to security yet (but probably in the future). I'm
working on additional ideas, heavily borrowed from the `Microsoft
Process Templates and
Tools <http://msdn.microsoft.com/en-us/teamsystem/aa718795.aspx>`_
development center -- and from watching `how Microsoft uses
TFS <http://blogs.infragistics.com/blogs/ed_blankenship/archive/2009/02/27/microsoft-process-template.aspx>`_
with their new `MPT toolkit <http://mpt.codeplex.com/>`_.

Security folk such as myself might want to just load Source Insight (or
the Microsoft Express Editions) along with using the command-line
CAT.NET or possibly SharpDevelop until Ounce O2 is widely available.

For Java, you can search the VMware Appliance Directory, but I found
nothing useful. Currently, the easiest and cheapest way to get JEE
AppDev/AppSec going is to use
`EasyEclipse <http://www.easyeclipse.org/site/plugins/>`_. There is a
commercial equivalent called Yoxos that also sounds very promising. I
think most of us would be flying blind without a few Eclipse plugins
such as Classlocator, Jupiter, Flow4J, IvyDE, FindBugs, and PMD. Build
server ISOs such as `Buildix <http://buildix.thoughtworks.com/>`_ would
be wonderful to turn into a VA.

Again, us security folk would probably stick to Source Insight and/or
SciTE along with the command-line versions of FindBugs and PMD. Static
analysis tools are slowly turning to be out of vogue these days... so
YMMV.

**Summary**

Learning Virtual Infrastructure is going to take some time, but the
payoff is worth it. In no time, you'll be turning your
minimally-equipped Security Operations Center or appsec group into a
real infrastructure to fear.

Download the hardware-VMMs to "whitebox supported" hardware (note: this
doesn't always have to be on an "official list" from the vendor). Try
both the evaluation versions (Microsoft Windows Server 2008 R2 Beta with
Hyper-V Role enabled ; VMware ESX and vCenter Server VA) and the free
ones (Microsoft Hyper-V Server 2008 R2 Beta ; VMware ESXi). Download a
few VAs in various formats and learn how to import and start them.
You're on your way!
