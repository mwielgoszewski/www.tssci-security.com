author: dre
disqus_id: 8c0de732-c859-4f01-b711-dbccd064fb1c
disqus_url: http://www.tssci-security.com/archives/2008/03/27/how-to-pwn-pwn2own/
mod_date: 2008-03-27 17:27:35
parent: 0
post_id: 393
post_type: post
pub_date: 2008-03-27 17:15:22
public: 'yes'
slug: how-to-pwn-pwn2own
tags:
- Windows
- Security
- Apple
- Linux
- Conferences
- Hacking
template: post.html
title: How to pwn PWN2OWN

How to pwn PWN2OWN
##################

`Day one of PWN2OWN was
unsuccessful <http://dvlabs.tippingpoint.com/blog/2008/03/26/day-one-cansecwest-pwn-to-own-results>`_,
which is no big surprise. But today, I am really hoping for something --
otherwise we'll have to wait until tomorrow for the third-party
clieint-side exploits.

Here's a little summary I wrote a bit back on how to increase the
likelihood of exploiting the three systems.

**Are Linux and Mac OS X the weakest targets? Maybe so; maybe not.**

For the latest Ubuntu Linux and Mac OS X Leopard, attacking the heap or
finding an integer vulnerability will bypass the stack-based buffer
overflow protections built-ins (e.g. SSP/ProPolice or the Linux 2.6
kernel stack randomization routines) if you don't already know how to
bypass those protections.

With regards to Vista - avoid ASLR enabled binaries (which is almost a
requirement for writing an exploit on this platform). dumpbin.exe
/headers <binary.exe\|dll> \| findstr "DLL characteristics" will have a
"40" (hex value) listed (although there can be more values listed that
include "40") if ASLR is enabled. Also avoid stack-based buffer
overflows, especially if the machine is running Hardware DEP (which is
likely), or if the binary was compiled using GS or SafeSEH.

**Pre-req's**

Unless there is source code available for the application-under-target,
this is going to quickly become a game of cat-and-mouse for the
contenders. Mac OS X Leopard and Vista are more likely to have
closed-source binaries. For Ubuntu, the best plan is to look through the
source code of the applications which are likely to be most vulnerable.
Anyone armed with GrammaTech CodeSurfer will have a distinct advantage,
although I suppose a smart person could use doxygen, cscope, ctags,
sourcenav, LXR, cflow, ctrace, CUTE, and tcov/gcov/lcov. Compiling the
source with Ounce, Fortify SCA, GrammaTech CodeSonar, or Klocwork K7
would be instant success. Anyone armed with Veracode tools, FuzzGuru,
SEEAS, or CAT.NET would clearly be crossing the line, although I would
have no idea how the staff would catch these cheaters.

For Leopard and Vista, EFS as first-pass and Catchconv (with vgprof,
STP, and a copy of "Open-Source Fuzzing") as second-pass are going to be
ideal choices, although EFS requires IDA Pro and IDAPython (for PIDA
file generation). I don't think anyone is going to use IDA Pro as a
debugger, nor ImmDbg (unless there is a need to write a heap-based
exploit), Olly, or even gdb. I also doubt that any binary analysis (e.g.
deadlist review) is going to find much, however bytecode analysis might
help (e.g. FindBugs just added a new security category), as well as
tools such as LookingGlass or bugreport (even if only to point you
towards a more vulnerable app or component thereof).

Under Vista, it's easy to setup the registry when looking for specific
types of vulnerabilities. Any memory access violations (AV's) can cause
WinDbg (or other debugger such as the MS CLR Debugger) to break on
chunks of code that are vulnerable to heap overflows. Just set DWORD
PageHeapFlags to 3 under "HKLM\\Sw\\Ms\\WNT\\CV\\Image File Execution
Options\\<file.exe\|dll>". This method is usually faster than running a
fault monitor or software tracer because it's an OS built-in and almost
guarantees a vulnerable condition. In general, however, you might want
to avoid using an interactive debugger in which case I recommend
strace-0.3.zip (originally from Bindview). PaiMei rarely causes a break
unless there is a valid crash during pstalking, but if you're running
into too many crashes (and not enough exploitable conditions), it's
smart to change to using fault monitoring or software tracing instead of
breaking into a debugger every time. If you do have time (and don't mind
wasting CPU and context switches on every test case), Process Monitor,
TCPView, AccessChk, and AccessEnum (from Microsoft SysInternals) can be
useful. The ObjSD.exe tool that comes with the companion content for the
Microsoft Press book, "Hunting Security Bugs" may also come in useful
here.

For Mac OS X, setup is minimal. All you need is to echo "limit core
unlimited" >> /etc/launchd.conf as root (sudo -u root -s) and download
Xcode Tools 3.0. Everything you need comes with Xcode, including the
Xcode Debugger, Instruments, Shark, and Spin Control. I would probably
rely on "ktrace -di -tcnis -p <pid>" instead of CrashReporter, the Xcode
Debugger, or Shark for speed purposes (on the first pass of any AUT).

With the minimum barrier to entry costing someone either the price of
GrammaTech CodeSurfer ($1490) or DataRescue IDA Pro Advanced ($1470),
this seems to provide an unfair advantage to people who have already
purchased these tools (and an even greater advantage to someone with
Ounce, Fortify SCA, Codesonar, Prevent, or K7). It would be better if
these tools were provided on a few machines. I know that someone can
cobble together a CodeSurfer equivalent, or use the Valgrind extension
methods -- but these are less likely to increase time-to-finding.

**The best three tools you can use -- your brain, your friend's brain,
and the developer's brain**

Smart exploit writers are going to probably use their brains to find the
vulnerabilities. If we're looking at three major browsers, three major
email clients, and a handful of IM clients - it's obvious to me which
you would want to attack first and where. For example, making IE7 as a
target would be a huge mistake (although it would be very cool), and
even Safari is a lot to work with. The mail clients are also larger
applications, which yes - means a larger attack surface but also more
code to dig through. Ideally, you would want to target an application
that was only a few thousand lines of code, although if a similarly
sized external, third-party component is found - this is also a great
target.

The best targets would be the file and/or protocol parsers in those
applications (fortunately all three types of apps do a lot of both).
Protocol handlers in browsers would make ideal targets, but like I
mentioned before - this might be easier in a smaller app such as an IM
client. I'm fairly sure that ProxyFuzz would be a waste of time, and
that using Universal Hooker or Echo Mirage would simply take too much
time to reverse a specification for an interesting protocol. The best
idea I can come up with is to run FileExtInfo.exe and ViewPlgs.exe on
the Vista machine (or write equivalents of these tools for Linux or Mac
OS X), but I doubt the DVLabs staff will allow you to do that. You may
need to guess the patch level (and state their OS is in), as well as
which applications they have installed (and what order they were
installed as).

FileExtInfo.exe and ViewPlgs.exe can be found with the companion content
for the Microsoft Press book, "Hunting Security Bugs" as a free
download. FileExtInfo will help to gather information on which file
parsers are installed locally, while ViewPlgs will help gather
information on which protocol parsers are installed locally. These tools
can provide very fast method of threat-modeling your available attack
surface.

File fuzzing will be a dominate approach for successful exploit writers.
While it's unlikely that a target file parser will accept
null-terminated strings, this will be the best way to find an
exploitable condition in a file parser. If someone can find a bug using
the PaiMei/EFS (I'm not sure if using Codenomicon or beSTORM would be
fair either) file-fuzzing module, this would probably be the fastest
route, although the crash condition needs to be exploitable and the
exploit must also be easy/fast to produce. This is often not the case
with these types of bugs.

There are also problems with patch-levels and "installed software" or
concepts like DLL-Hell. Are all of your imports matched exactly with the
machine-under-test (i.e. the CanSecWest target host)? If not, you might
want to run several different tests under several different installation
environments as guests in a hardware VM.

I never saw a full or accurate list of the applications that can be
targeted, which DVLabs did a really bad job of promoting through the
contest. A solid contender will look at the default install of such
applications, and look for issues such as number of tweakable features,
risky abilities enabled by default, high permissions required to install
(but not necessarily to run), and hard-coded install locations. Once you
get the program running, I think most of us know what to look for -- in
many cases it's input related. However, I'd really like to see something
new -- something like a signal-based or pipe-related exploit.

**Nice-to-have's**

Security Innovation Holodeck is another expensive, but handy, commercial
tool that could be used to help here. Speaking of which, it's possible
to use fault-injection instead of fuzzing, which may have varying
results. The best part about fault-injection is that an exploitable
condition could [very theoretically] be found that wouldn't necessarily
cause a program to crash, allowing continual operation of an AUT in the
background, with examination of all exceptions from a log file at a
later time. The likelihood of a vulnerability being found is much, much
lower than with fuzz testing - but combining these methods could be very
synergistic. However, wasting resources on fault-injection testing may
affect the speed of the fuzz testing so this tactic becomes a
double-edged sword (i.e. may hurt you more than help you).

Using an external laptop for remote debugging is definitely preferred
(you don't want your debugger to crash with the AUT!). If you could use
another laptop with copies of a few hardware-virtualization Xen guests
in varying states, the file fuzzer could be the only running process
besides the AUT.

Contest winners will more likely have a rack of gear or a large amount
of resources. Using Security Innovation Holodeck, you could run various
passes with varying levels of information on every possible AUT possible
in the contest (I assume that the DVLabs staff gives you a list and
possibly even how they are configured if not default). Examples of
information would include: strace, ApiSpy, Rohitab API Monitor, FaultMon
v1.1 (some with specific exception codes - such as c0000005, some with
interactivity, some with both), FaultMon v1.02 (pausing on severe and/or
any exceptions), Process Monitor (in varying configurations), as well as
some of the other tools mentioned earlier (e.g. AccessChk, AccessEnum,
and ObjSD). The crash monitor that comes with Sulley is also worth a
look, including the way you can control it from VMWare.

Determining the exploitability of any given exception is also time
consuming. Especially in the case of heap overflows, which may require
writing to arbitrary memory locations (good luck!), adjacent variables
(mostly useless), authentication values (useful under Linux or Mac OS X
if you can change EUID), and -- ideally -- function pointers. Writing
these is no fun for any platform, but it might be a bit easier on
Windows Vista with all of the literature available.
