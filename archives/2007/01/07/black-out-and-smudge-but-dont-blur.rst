author: Marcin
disqus_id: 0d8738e1-c90a-48db-ba86-260cd1ac9a0b
disqus_url: http://www.tssci-security.com/archives/2007/01/07/black-out-and-smudge-but-dont-blur/
mod_date: 2007-01-07 13:11:56
parent: 0
post_id: 111
post_type: post
pub_date: 2007-01-07 13:11:56
public: 'yes'
slug: black-out-and-smudge-but-dont-blur
tags:
- security
template: post.html
title: Black out and smudge, but don't blur

Black out and smudge, but don't blur
####################################

I'm at the airport right now, after having gone through an extensive,
supposedly random TSA security screening and came across this article at
`dheera.net <http://dheera.net/projects/blur.php>`_. In summary, the
article states blurring sensitive text in photos is a bad idea. The
reason being, through trial and error anybody can derive the information
that was blurred. I've had that same idea in my head for awhile now;
it's interesting to see that the method works.

To mitigate this risk, black out text in an image or use the "smudge"
tool in Photoshop. In a document, don't just set the text background to
black... black text on black background is still text. `A simple
copy/paste into vi or notepad will show the
text <http://it.slashdot.org/article.pl?sid=06/06/22/138210>`_.
