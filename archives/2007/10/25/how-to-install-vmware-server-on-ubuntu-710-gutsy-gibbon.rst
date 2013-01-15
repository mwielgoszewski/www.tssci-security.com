author: Marcin
disqus_id: 28a2c2c1-3197-4473-b576-91c01427cf8d
disqus_url: http://www.tssci-security.com/archives/2007/10/25/how-to-install-vmware-server-on-ubuntu-710-gutsy-gibbon/
mod_date: 2007-11-01 12:42:49
parent: 0
post_id: 322
post_type: post
pub_date: 2007-10-25 22:43:00
public: 'yes'
slug: how-to-install-vmware-server-on-ubuntu-710-gutsy-gibbon
tags:
- linux
template: post.html
title: How to install VMware Server on Ubuntu 7.10 Gutsy Gibbon

How to install VMware Server on Ubuntu 7.10 Gutsy Gibbon
########################################################

I recently upgraded my laptop to Ubuntu 7.10 'Gutsy Gibbon' from 7.04
'Feisty Fawn' and needed to install VMware Server again. Since my
previous post was very popular in helping people get `VMware Server
installed on
Feisty <http://www.tssci-security.com/archives/2007/04/22/feisty-vmware-install/>`_,
I thought I would do the same for Gutsy for those who are interested.

There are several prerequisites before we get started. We'll need the
following packages installed first:

-  ``build-essential``
-  ``linux-headers-`uname -r```
-  ``xinetd``

Some people report having to have installed ``xorg-dev`` as well, but my
system did not require it. Those who have needed to install it, says it
fixed an issue with the installer failing to accept the serial number. I
do not see the correlation between the two, since ``xorg-dev`` is the
development libraries for Xorg X Windows system.

Anyways, we'll need VMware Server (version 1.0.4) which you can download
from `VMware's download site <http://vmware.com/download/server/>`_. Go
ahead and grab the tar.gz or if you want, the VMware Server Linux client
package that contains an additional Perl scripting and programming
API's. I just downloaded the VMware Server for Linux.

Extract the tar.gz and do as follows:

``marcin@thinker:/vmware$ tar xfz VMware-server-1.0.4-56528.tar.gz marcin@thinker:/vmware$ ls  VMware-server-1.0.4-56528.tar.gz  vmware-server-distrib marcin@thinker:/vmware$ cd vmware-server-distrib/ marcin@thinker:/vmware/vmware-server-distrib$ ls  bin  doc  etc  FILES  installer  lib  man  sbin  vmware-install.pl  vmware-vix``

vmware-install.pl is the installation script we will need to run with
root privileges.

``marcin@thinker:/vmware/vmware-server-distrib/$ sudo ./vmware-install.pl``

From here on, you can go ahead and accept the defaults for all options.
You can view the output of the entire installation script as it went for
me
`here <http://www.tssci-security.com/blog/archives/2007/10/25/how-to-install-vmware-server-on-ubuntu-710-gutsy-gibbon/vmware_install>`_.
I did not run into any problems with installation except for the
following, which is pretty obvious since if you read the paragraph
earlier.

::

    ********
    The VMware VmPerl Scripting API was not installed.  Errors
    encountered during compilation and installation of the
    module can be found here: /tmp/vmware-config0You will not be able to use the "vmware-cmd" program.Errors can be found in the log file:
    '/tmp/vmware-config0/control-only/make.log'
    ********

If everything installed correctly, you should see this (always welcome)
message:

::

    Starting VMware services:
    Virtual machine monitor                                   done
    Virtual ethernet                                          done
    Bridged networking on /dev/vmnet0                         done
    Bridged networking on /dev/vmnet2                         done
    Host-only networking on /dev/vmnet8 (background)          done
    NAT service on /dev/vmnet8                                doneThe configuration of VMware Server 1.0.4 build-56528 for Linux
    for this running kernel completed successfully.

That's all for now.. You can now run ``vmware`` from the terminal or
from 'the application launcher. If you have any questions or comments,
please post a comment. If you've found this post useful and informative,
`Digg
it! <http://digg.com/linux_unix/How_to_install_VMware_Server_on_Ubuntu_7_10_Gutsy_Gibbon>`_
