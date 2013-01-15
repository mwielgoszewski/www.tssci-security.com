author: Marcin
disqus_id: 0abd234d-a888-4f73-b5d1-05953e075ac8
disqus_url: http://www.tssci-security.com/archives/2007/07/26/interview-with-richard-bejtlich-ge-director-of-incident-response/
mod_date: 2007-07-26 07:51:15
parent: 0
post_id: 264
post_type: post
pub_date: 2007-07-26 07:38:56
public: 'yes'
slug: interview-with-richard-bejtlich-ge-director-of-incident-response
tags:
- people
- security
template: post.html
title: Interview with Richard Bejtlich -- GE Director of Incident Response

Interview with Richard Bejtlich -- GE Director of Incident Response
###################################################################

Back in May, I attended a meeting to get a feel for the company and
group I would be working for this summer as an IT Security Intern. Much
to my surprise, Richard Bejtlich was in attendance and as it turned out
we'd be working for the same company. Anyways, Richard agreed to do be
interviewed on network security monitoring and his new role as Director
of Incident Response.

**From reading your blog, most of us know you've served in the US Air
Force. How has serving as an Air Force intelligence officer prepared you
for a career in information security?**

My Air Force intelligence training taught me to analyze data and search
for patterns. It gave me some historical background on related fields
like SIGINT. I also attended some specialized training, like the Defense
Intelligence Agency Indications and Warning course. This provided me
with a way to look at events as indicators that can be analyzed to form
warnings, which are then escalated to decision makers. I also learned
proper definitions for terms like "threat" and learned how to model
threats.

**What is the most important lesson you learned serving on the AFCERT?**

I learned many lessons there. I wouldn't be where I am today if I had
not joined the AFCERT. The first that comes to mind is the importance of
collecting alert, session, statistical, and full content data. The
AFCERT was practicing NSM before it really had a name for it. NSM was
the name of the sensor built by Todd Heberlein. My entire detection and
response methodology is built on that AFCERT foundation. I also learned
to appreciate that people are the real threats, not malware or tools.
Malware and tools change and disappear, but people rarely do, and people
are the bad guys.

**What made you want to start your own company, TaoSecurity?**

While working at ManTech, many customers were approaching me directly
for consulting and training help. I thought, "They are trying hire me,
not ManTech. Why not remove the middle man?" So I started independent
consulting in June 2005 and ended in June 2007.

**Every company has ups and downs -- were there ever times you wanted to
just quit [TaoSecurity] and what kept you chugging along at the end of
the day?**

Well, eventually I did quit. I decided I wanted to try working with a
company for the long term, instead of working in one or two week bursts.
Consulting exposes you to many customers, but if you want to really make
a difference for the long term it pays to be an employee.

**What makes a good network security analyst?**

First, you need to want to beat the bad guys. If you are entering the
security field because you heard a commercial on the radio advertising
higher pay, you will not get far. You need to understand the business
you are protecting, the processes and the technologies. I recommend
having some system administration experience. I've had multiple students
in my classes who do not have the foggiest notion where to look for the
files that comprise a static HTML Web site, for example. You have to
understand the attacks the adversary employs. I've talked with people
who "play defense," but who have no interest whatsoever in learning how
the offense operates. If you don't know offense, how are you going to
play defense? I think it's important to read because it helps you stay
current. You also need a curious mind and be detail-oriented so you can
perform investigations.

**Take me through a typical day with Richard Bejtlich, what do you
typically do in the morning? Are you watching packet captures all day?
Readers tend to see only the juicy stuff an NSM expert tackles by way of
your blog, but how much of your time is spent with very mundane stuff?**

My new job as Director of Incident Response is different from my
previous work. During my first month at work I've spent a lot of time
learning about the company and its detection and response requirements.
This has been mostly non-technical, although I've been providing
technical expertise for ongoing projects and cases. I'm working on
assembling an enterprise sensor grid collecting data from various
sources. When that begins to take shape I will have data to investigate,
so I will return to that aspect of work.

I expect at some point to train analysts to do incident detection and
response, so I will be left with the more complex material and the big
picture issues. I try to spend a few minutes each day reviewing my
Bloglines feeds to keep up with current security issues. I also try to
read a few pages from a book on my reading list. If I get any real
reading done, however, it's usually between 9 pm and 12:30 am.

**What path would you recommend to those interested in entering the
field of information security and more specifically, network security
monitoring?**

If you are in middle school, try to get into a tech-oriented high
school. Then go to college for a CS degree. Get a job as a consultant or
with a MSSP. Whatever tech job you have, you can integrate security.

You MUST have a home lab. You MUST run operating systems besides
Windows. Knowledge of Windows is important because many of the victim
systems you will investigate will be Windows. However, you can do far
more with old hardware and zero budget when you open up to the open
source world. I recommend trying FreeBSD. In fact, try a book like
`Building a Server with FreeBSD <http://nostarch.com/freebsd.htm>`_, and
then read `Absolute FreeBSD, 2nd
Edition <http://nostarch.com/abs_bsd2.htm>`_. I also recommend building
your own sensor infrastructure to watch your lab. (I use
`Sguil <http://sguil.sourceforge.net/>`_.)

I also recommend reading my
`books <http://www.taosecurity.com/books.html>`_, starting with Tao. I
wrote it specifically for people just starting out. I got the idea to
write it in 2001 when I was building a MSSP with Sguil developer Bamm
Visscher. Instead of teaching analysts the same information
individually, I thought it would be best to have a book for them to
read. Then we could work on individual issues.

**Ever learn anything from your students or come across something
totally unexpected in your trainings?**

Students usually use me as an on-the-spot consultant. They have been
working on some problems for days, weeks, or months, and they ask me how
to solve it in front of 100 people. Sometimes I can help, sometimes I
can't. One of the last classes I taught before joining GE was for a
military unit. They had me analyze live data in front of them, on the
spot. That was interesting.

**Where or who do you go to for inspiration in your writing?**

I devote each book to someone in my family... Tao was for my wife Amy,
Extrusion for my daughter Elise... now that I have a second daughter,
Vivian, I will have to write a new book. I usually decide that I have
enough original thoughts assembled, or enough material that no one else
is addressing, and then I submit a proposal to a publisher. I have
several on deck now (listed on my books page), but I will probably start
a new project first that's not listed yet.

When I write I usually do it in long stretches that last from after work
until 1 or 2 in the morning. I can do that once or twice a week, which
is good for a chapter. I spend the rest of the week fixing what I wrote.
After 12-20 weeks I have a draft manuscript, and copyediting begins.
That can take 4-6 weeks. Production takes 4 months. So writing a whole
book, if you add in about 2 months of preparation, can take about one
year. That's very aggressive. I think if you take too long events pass
by... unless you're writing THE ONE TRUE BOOK OF SECURITY FOR ALL TIME.
:-)

**You mentioned you were recently hired by General Electric to be the
new director of Incident Response. What new challenges are you facing
that you might not have been exposed to in your private consulting?**

The biggest challenge is the scope of the company. The closest
organization in size was the Air Force. Honestly, the challenge is the
reason I was interested in the job in the first place.

**How do you plan on tackling those challenges?**

An obstacle I've encountered that needs to be overcome is the desire to
avoid action because the company is too big. It's ok to take a sampling
approach. With no data, you have nothing to investigate. With some data,
you can make discoveries. Those bring investigative leads which direct
additional data gathering. That is my plan for this challenge.

**Over the next 2-3 years, what are the biggest challenges you think the
security industry is going to face?**

I see several challenges. If it hasn't happened already, people are
going to wonder why they spent several million dollars deploying a
SIM/SEM/SIEM, and they are "still being hacked." I am exceptionally
worried about clients being exploited via Web browsers and subsequently
controlled via encrypted Web channels. I see more of our investigation
and security tools being directly targeted. I think people are going to
spend millions on NAC and also ask why they are "still being hacked."
I'm hearing that organizations with 80% NAC coverage are seeing
intruders target the remaining 20%. Which, interestingly enough, are the
most vulnerable already -- all those embedded Web servers on printers,
routers, etc... along with new consumer equipment. There's no shortage
of work.

**During those years, what do you think we'll have to do right?**

My constant plea is for more visibility. If you cannot see what is
happening, you cannot make effective security decisions. To the extent
you do anything right without visibility, you're just lucky. It's like
playing goal with a blindfold. Visibility should be a design and
deployment consideration, just like security is becoming.

**More assets are being introduced to the enterprise. How do we deal
with the risks introduced by threats who learn how to exploit vulnerable
assets?**

I return to visibility. The world changes too fast for anyone to
understand it. If you can't understand it, the next best bet is to be
able to watch it. If you can't watch it, how are you supposed to defend
it -- or even know that an asset exists? I am not advocating abandoning
your resistance mechanisms. (Notice I do not say "prevention."
Prevention implies 100% effectiveness. Resistance implies that
prevention eventually fails.) You should resist wherever possible but
detect resistance failures. Sometimes that is only possible by keeping
track of as much as you can, and then querying that data after-the-fact.
Then you feed those lessons into your resistance mechanisms and repeat.

**And finally, are we really still secure after all these years?**

Nope! :-) Security is "the process of maintaining an acceptable level of
perceived risk." It never ends.

**Thank you Richard!**

Thanks for the chance to share a few thoughts!
