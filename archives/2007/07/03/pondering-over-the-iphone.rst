author: Marcin
disqus_id: ff13e4c9-193a-4515-a32a-5d9f1f1e3cb0
disqus_url: http://www.tssci-security.com/archives/2007/07/03/pondering-over-the-iphone/
mod_date: 2007-07-26 04:45:19
parent: 0
post_id: 251
post_type: post
pub_date: 2007-07-03 22:05:45
public: 'yes'
slug: pondering-over-the-iphone
tags:
- tech
- security
template: post.html
title: Pondering over the iPhone

Pondering over the iPhone
#########################

`|thumb\_img\_2472.jpg| <http://www.tssci-security.com/blog/wp-content/uploads/2007/07/img_2472.jpg>`_\ I
passed up a chance to get an iPhone last week because I couldn't spare
the time to wait in line for it. I was headed to New Hampshire to stay
up at Lake Winnipesaukee with some friends and watch the NASCAR
Modified, Busch, and Nextel Cup races at NHIS in Loudon.

During our long drive, I started asking myself questions about the
iPhone in regards to security and the concerns I have with it and other
"smart" phones. Below were just a bunch of the questions I had, and is
by no means comprehensive. Most could or have probably already been
answered, but here goes anyway.

**Wireless**

-  How does the iPhone connect to Wi-Fi networks? Auto-connect to
   nearest AP or is it manually?
-  Can the phone run in infrastructure mode? (can the phone be an access
   point?)
-  Bluetooth support: can it be turned on/off? Can it be told to limit
   access to specific devices?
-  Is there a VPN client?
-  What is the Bluetooth/Wi-Fi range of the device?

**Encryption**

-  What does the iPhone support in the encryption arena?
-  Is data encrypted on the device? in removable memory? while in
   transit?
-  Does it support PGP or S/MIME?
-  What encryptions algorithms does it support? AES, 3DES, Blowfish,
   SSL, etc
-  If it has VPN client, what protocols does it support? IPSec, L2TP,
   PPTP?

**Authentication**

-  Does it support Kerberos, LDAP, etc for domain/application
   authentication?
-  Does the phone automatically lock itself after a period of no
   activity?
-  Can the phone be locked requiring a passcode to unlock it?
-  Can the SIM card require a PIN number?
-  What does the user run as? Are all applications running as
   root/administrator?
-  Does the phone support proxies?
-  Do phones come with a default password? Do any services have a
   default password? Will the device require you to change it? What
   security policies can be enforced?

**Security**

-  Does the device have a firewall? If so, what is allowed
   inbound/outbound?
-  Does the device have a need for A/V?
-  Can calls be spoofed to and from the phone?
-  Can activation be bypassed? Unlocked to work with other carriers
   (T-mobile, Alltel, Sprint etc)
-  What are the secret/maintenance codes (both listed and unlisted)

**Tracking**

-  If device is lost what can be done? Macbooks have a program that can
   "phone home", like a Lo-Jack for laptops – is there such a thing
   for the phone?

**Applications**

-  What applications/plugins are installed by default? which can access
   the Internet?

   -  Mail client

   -  Web browser

   -  Instant messaging, games

   -  iTunes, Quicktime, PDF, Flash, etc..

-  What applications can the user install?
-  Do applications support encryption? (SSL, IMAPS, etc)

**Services**

-  What services are running?
-  What ports are services listening on?
-  What clients can you run, (ie. telnet, ssh, vnc)?

**Hardware**

-  What processor architecture is used?
-  Can users download and install their own firmware?
-  What can be plugged into the device? USB, firewire, etc
-  What filesystem is used and what form factor is the memory card?
-  How are updates handled? Automatic security updates?
-  How much storage is available? How much storage does the OS take up?

**Attack Vectors**

-  Vulnerabilities that exist on PCs will exist on the iPhone
-  Operating system, web browser, applications, services -- supposedly
   OS and browser have not been stripped down for "mobile" use.
-  Firewall configuration
-  User accesses malicious website which could take over phone or a
   running application
-  Theft
-  Weak encryption algorithms
-  Default passwords
-  Phishing

.. |thumb\_img\_2472.jpg| image:: http://www.tssci-security.com/blog/wp-content/uploads/2007/07/thumb_img_2472.jpg
