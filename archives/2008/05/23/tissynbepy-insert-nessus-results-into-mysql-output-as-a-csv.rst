author: Marcin
disqus_id: e53f232e-3ffe-48ee-853f-aacc3528d3f6
disqus_url: http://www.tssci-security.com/archives/2008/05/23/tissynbepy-insert-nessus-results-into-mysql-output-as-a-csv/
mod_date: 2008-05-28 10:23:58
parent: 0
post_id: 407
post_type: post
pub_date: 2008-05-23 14:33:35
public: 'yes'
slug: tissynbepy-insert-nessus-results-into-mysql-output-as-a-csv
tags:
- code
- security
template: post.html
title: tissynbe.py -- Insert Nessus results into MySQL, output as a CSV

tissynbe.py -- Insert Nessus results into MySQL, output as a CSV
################################################################

I mentioned in `previous
posts <http://www.tssci-security.com/archives/2008/03/07/quick-shell-notes/>`_
that I had been working with Nessus -- I used it a lot. At the end of
the engagement, we had almost a gigabyte of Nessus data saved in nbe
format. So to quickly go through and analyze all the results, inserting
it into a database was essential. I was using
`Nessquick <http://www.atriskonline.com/archives/00000048.shtml>`_ at
the time, which was a couple of Perl scripts used for inserting the data
into a database and exporting the data. I also had a bunch of sed and
awk scripts that would then clean up the results and fix various
punctuation and presentation issues I didn't like. The process became a
bit tedious, so I decided to write up a Python script to do all this for
me.

Here are some example uses from the usage:

``./tissynbe.py -d database -f results.nbe ./tissynbe.py -d database -o output.csv ./tissynbe.py -d database -o output.csv --order scriptid --sort desc ./tissynbe.py -d database -o output.csv --count ./tissynbe.py -f results.nbe -o output.csv ./tissynbe.py -f results.nbe -d database -o output.csv``

You can download tissynbe.py from the `tissynbe.py project
page <http://www.tssci-security.com/projects/tissynbe_py/>`_.

Now here's where I ask for some help. I'm by no means a programming
guru, so to all you Python developers and hackers, if you can take a
look at my code and offer any suggestions, I would greatly appreciate
it. I think I have a handle on most of the code as it's fairly
straightforward, but I think it could use some tweaking and optimization
in the clean\_nbe() method.

Comments and suggestions are encouraged!
