author: Marcin
disqus_id: 5e68318f-a631-4adc-8f43-7fac37a0426b
disqus_url: http://www.tssci-security.com/archives/2007/06/17/notes-for-using-burp-suite-on-ubuntu/
mod_date: 2007-06-17 17:50:01
parent: 0
post_id: 244
post_type: post
pub_date: 2007-06-17 17:50:01
public: 'yes'
slug: notes-for-using-burp-suite-on-ubuntu
tags:
- linux
template: post.html
title: Notes for using Burp suite on Ubuntu

Notes for using Burp suite on Ubuntu
####################################

I went ahead and tried to run `Burp
suite <http://portswigger.net/suite/>`_ on my laptop running Ubuntu
today. First, check the readme.txt, which says I need JRE 1.4 or later
installed.

``marcin@thinker:~/burpsuite_v1.01$ java --fullversion java full version "gcj-1.4.2"``

Okay... 1.4.2, but it's Java built into gcc. When I first tried to run
it, I got this error:

``marcin@thinker:~/burpsuite_v1.01$ java -jar burpsuite_v1.01.jar Exception in thread "main" java.awt.AWTError: Cannot load AWT toolkit: gnu.java.awt.peer.gtk.GtkToolkit at java.awt.Toolkit.getDefaultToolkit(libgcj.so.70) at javax.swing.ImageIcon.<init>(libgcj.so.70) at javax.swing.ImageIcon.<init>(libgcj.so.70) at burp.interface.long.<init>(Unknown Source) at burp.StartBurp.main(Unknown Source) Caused by: java.lang.UnsatisfiedLinkError: libgtkpeer: libgtkpeer.so: cannot open shared object file: No such file or directory at java.lang.Runtime._load(libgcj.so.70) at java.lang.Runtime.loadLibrary(libgcj.so.70) at java.lang.System.loadLibrary(libgcj.so.70) at gnu.java.awt.peer.gtk.GtkToolkit.<clinit>(libgcj.so.70) at java.lang.Class.initializeClass(libgcj.so.70) at java.lang.Class.forName(libgcj.so.70) at java.awt.Toolkit.getDefaultToolkit(libgcj.so.70) ...4 more``

So, I did a little searching and found I needed the libgcj7-awt package.
I went ahead and installed it using apt-get. I try running it a second
time and bam, another error!

``Exception in thread "main" java.lang.StringIndexOutOfBoundsException at java.lang.String.substring(libgcj.so.70) at burp.while.public.else(Unknown Source) at burp.while.public.instanceof(Unknown Source) at burp.while.x.instanceof(Unknown Source) at burp.while.je.instanceof(Unknown Source) at burp.interface.long.for(Unknown Source) at burp.StartBurp.main(Unknown Source)``

What the hell! I remember seeing in the readme something about
troubleshooting,

    If burp suite fails to start, or generates the error "Exception in
    thread main", check that the correct JRE version has been installed.
    If so, check that the "java" command is launching the most recent
    JRE, and not an earlier installed version. If necessary, modify the
    startup command to contain absolute paths to both the JRE and the
    JAR file, e.g. "/usr/bin/java -jar /usr/tools/burpsuite\_v1.01.jar".

``marcin@thinker:~/burpsuite_v1.01$ which java /usr/bin/java``

Check... hmm, I'll give my buddy a ring and see what he says. He told me
straight up to just get rid of gcj and install Sun's JDK. Here's the
`link <http://java.sun.com/javase/downloads/index_jdk5.jsp>`_, get "JDK
5.0 Update 12." I installed it using the self-extracting binary and
wallah!, no more problems trying to run Burp suite. =D

So do yourself a favor and remove gcj -- get `Sun's
JDK <http://java.sun.com/javase/downloads/index_jdk5.jsp>`_.
