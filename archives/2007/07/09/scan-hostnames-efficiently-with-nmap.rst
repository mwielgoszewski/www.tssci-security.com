author: Marcin
disqus_id: e1bc1bef-15fb-4057-8436-f02e670315ae
disqus_url: http://www.tssci-security.com/archives/2007/07/09/scan-hostnames-efficiently-with-nmap/
mod_date: 2007-07-09 17:52:00
parent: 0
post_id: 257
post_type: post
pub_date: 2007-07-09 09:40:58
public: 'yes'
slug: scan-hostnames-efficiently-with-nmap
tags:
- security
- work
template: post.html
title: Scan hostnames efficiently with Nmap

Scan hostnames efficiently with Nmap
####################################

So your DNS team sends you the company's entire domain name inventory in
a CSV (comma-separated values) file. You're tasked with port scanning
those hosts, to perform a network inventory, discover rogue services and
other policy violations. It's simple to do this with a short list of
domains and a small number of servers. For those who are responsible for
entire data centers, hosting thousands of domain names, you'll need an
efficient way to perform this. Since some IP addresses can be hosting
more than one domain, and some domains are hosted on multiple servers, a
little scripting can help you out.

The script below will resolve all the hostnames in the CSV file to IP
addresses, and will only report back those that have successfully
resolved. In a sample list of ~650 domain names, only ~520 were actually
live systems. The rest were domains we owned but were not live yet.

::

    #!/usr/bin/ruby -w
    require 'resolv'input = File.open("hosts.csv", "r")
    output = File.open("hosts2.csv", "w")input.each_line {|line|
        line = line.chop
        Resolv::DNS.new.each_address("#{line}") {|addr|
            output.puts "#{line},#{addr}"
        }
    }

Now, using a little shell action, you can do a uniq\|sort on this list
to get the IP addresses.

``$ ruby resolve.rb $ sed 's/,/ /' hosts2.csv | awk '{print $2}' | sort | uniq``

That script will replace the comma with a space and using awk, will
print the IP addresses. It then sorts the IP's and then removes
duplicate entries. From there, you can now feed this list into Nmap for
scanning. My list of ~520 live domain names were hosted on about 75
unique IP addresses, which sure beats scanning 650 domain names. =)

``$ sed 's/,/ /' hosts2.csv | awk '{print $2}' | sort | uniq | nmap -sSU -A -P0 -p U:53,111,137,T:1-65535 -T4 -iL - -oX filename.xml``

If you have any other tips relating to this post, please reply with a
comment! I'd love to hear feedback with better ways of making this
process even more efficient.
