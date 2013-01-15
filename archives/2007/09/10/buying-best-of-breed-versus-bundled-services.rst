author: Marcin
disqus_id: dfc4f77a-90ea-48af-8c4c-cbd449901b2e
disqus_url: http://www.tssci-security.com/archives/2007/09/10/buying-best-of-breed-versus-bundled-services/
mod_date: 2007-09-10 12:12:57
parent: 0
post_id: 298
post_type: post
pub_date: 2007-09-10 12:10:27
public: 'yes'
slug: buying-best-of-breed-versus-bundled-services
tags:
- security
template: post.html
title: Buying best of breed versus bundled services

Buying best of breed versus bundled services
############################################

We try and secure our data, our systems, and people as best we can. We
spend months evaluating and deploying firewalls, IDS, IPS, NAC, A/V,
A/S, anti-spam, proxies, VPN, etc. Hopefully, you create matrices of
each product you consider purchasing based on a selection of criteria
that your business deems most important. In the end though, management
usually considers the $ column as most important when purchasing a
product. It may not be the best, not do all the things you need, but
it's the cheapest. What then? You start hearing pitches for a product
and ways of making the cheapest product outperform the others.

Then there are vendors that have an exceptional product in one arena,
but another is inferior to another vendor's product. Vendor A bundles
three services such as Anti-Virus, Anti-Spyware, and Personal Firewall,
but it only excels in A/V. Vendor B dominates the market with their
Anti-Spyware solution and Vendor C has an exceptional firewall. Let's
look at an example pricing structure (in $ per client):

+------------+-----------+-----------+----------+-------------+---------------+-------------------------+
| \*\*\*\*   | **A/V**   | **A/S**   | **PF**   | **Total**   | **Bundled**   | **\*50,000 licenses**   |
+------------+-----------+-----------+----------+-------------+---------------+-------------------------+
| Vendor A   | $2.50     | $2.25     | $3.00    | $7.75       | $6.00         | $300000.00              |
+------------+-----------+-----------+----------+-------------+---------------+-------------------------+
| Vendor B   | $2.75     | $3.00     | $2.50    | $8.25       | $6.65         | $332500.00              |
+------------+-----------+-----------+----------+-------------+---------------+-------------------------+
| Vendor C   | $2.00     | $2.75     | $3.50    | $8.25       | $6.75         | $337500.00              |
+------------+-----------+-----------+----------+-------------+---------------+-------------------------+

Let's say your business needs 50,000 licenses -- Vendor A would amount
to $300,000; Vendor B $332,500; and Vendor C $337,500.00 for each of
their bundled offerings. If we were to pick and choose best of breed
from all three vendors, we would use Vendor A for A/V, Vendor B for A/S,
and Vendor C for PF. For 50,000 licenses, the total would amount to
$450,000 (or $9 per client) -- over $100k more than the most expensive
bundle, but is the most "secure."

Going with one vendor may make system administration tasks easier,
because it's likely the products have been integrated with each other.
But then again this benefit has a downside, creating a
single-point-of-failure scenario in case of a vulnerability in a
vendor's management software. Save the risk equations and values you
come up with for some other time. Which of the solutions would you
choose and why?
