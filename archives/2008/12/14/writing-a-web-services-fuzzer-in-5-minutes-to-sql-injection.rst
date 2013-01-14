author: Marcin
disqus_id: 9a3bb8dd-5a0c-4ae9-bbb5-58f5ff434ca9
disqus_url: http://www.tssci-security.com/archives/2008/12/14/writing-a-web-services-fuzzer-in-5-minutes-to-sql-injection/
mod_date: 2008-12-14 00:40:02
parent: 0
post_id: 439
post_type: post
pub_date: 2008-12-14 00:15:50
public: 'yes'
slug: writing-a-web-services-fuzzer-in-5-minutes-to-sql-injection
tags:
- Code
- Security
- Work
template: post.html
title: Writing a web services fuzzer in 5 minutes to SQL injection

Writing a web services fuzzer in 5 minutes to SQL injection
###########################################################

This week, I was doing an internal penetration test for a client of a
`web service <http://1raindrop.typepad.com/>`_, which is used by
applications loaded on kiosk machines around the country. I didn't have
much time to do the test, so I had a couple advantages, like having
network access to the service, the `WSDL <http://www.w3.org/TR/wsdl>`_
and also ability to interact with the developers. This also gave me a
chance to see how capable our web application firewall was at being able
to detect attacks.

I had some trouble with
`WSFuzzer <http://www.owasp.org/index.php/Category:OWASP_WSFuzzer_Project>`_,
and kept getting "XML Fault" errors like the one below:

    There was an anomaly encountered in interfacing with the provided
    target. The neuroFuzz team is aware of these situational conditions
    and we are looking into the root cause(s) ...

    If you would like to help with this type of research send the
    following data along with some details about the target service to
    wsfuzzer@neurofuzz.com

    Response: XML Fault

Ok, no big deal -- I'll just write my own! I loaded up
`soapUI <http://www.soapui.org/>`_ and put in the WSDL address, and
soapUI was able to generate the XML requests according to the WSDL.
soapUI automatically puts a question mark placeholder into the input
areas, so I then saved these as individual XML files -- one for each
service method.

Then, I wrote a quick BASH script that looped through each line in
WSFuzzer's
`Attack\_all.txt <http://wsfuzzer.svn.sourceforge.net/viewvc/wsfuzzer/trunk/WSFuzzer/All_attack.txt?revision=273>`_
and replaced every placeholder parameter in each XML file with the
attack string:

::

    #!/usr/bin/env bash# Generate our attack files
    # Escape slashes and backslashes
    sed -e 's/\\\\/\\\\\\\\\\\\\\\\/g; s/\\//\\\\\\\\\\//g; s/:::.*//g' All_attack.txt > All_attack.txt~echo -n "Generating attacks"n=0
    for i in `ls -1 *.xml`
    do
            while read line
            do
                    sed "s/?/${line}/" $i > $i.$n
                    #echo "Writing $i.$n"
                    echo -n "."
                    let "n+=1"
            done < All_attack.txt~
            let n=0
    doneecho " done"# Cleanup
    echo "Removing temporary files no longer needed."
    rm All_attack.txt~exit 0

This script will then generate one XML file for each attack string per
method. In my case, it generated close to 15,000 XML files. So what do
we do with this? We'll use cURL to POST it to the web server (after
removing SQL shutdown statements and other risky injections):

``$ for i in `ls *.xml.*`; do curl -A "marcin" -s -x 127.0.0.1:8880 -k -d @$i -H "Content-Type: text/xml;charset=UTF-8" -H "SOAPAction: \"\"" https://service-tested:8443/warfile/service/Endpoint; done``

I specified a proxy by using the -x flag with cURL so I can proxy it
through Burp, which keeps a detailed request/response log I could later
pour through.

So there you have it: a web services fuzzer in 5 minutes, or less. Sure,
it doesn't replace WSFuzzer as WSFuzzer does *a lot* more, it was enough
for my purposes and gave me time to do other testing. The best part
about this, was when the database administrator notified us about a SQL
injection we did that caused the CPU load to spike for a duration of
time. He's been asking the developers to fix the query for months now,
but his reasons for fixing were for performance. Now he's got a security
reason to fix the code, and I wouldn't have been surprised if they fixed
it that same day.

Oh, and for those wondering... the WAF missed about 25% of the attacks.
