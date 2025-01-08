---
date: 2024-11-16 09:58
author: "Gavin Jerman"
subtitle: An article describing switch from jekyll to ignite.
tags: jekyll, ignite, publish, github pages, hacking with swift, markdown, python
image: /images/blog/ignite-logo.png
layout: BlogPost
---

# Goodbye Jekyll, Hello Ignite

This site is now generated using [twostraws'](https://github.com/twostraws) open source static site generator [Ignite](https://github.com/twostraws/Ignite). 

<img src="/images/blog/ignite-logo.png" alt="ignite logo" width="200">
<br><br>

When I first launced this site back in April 2020 (see [Welcome GitHub Pages and Jekyll](/blog/2020-04-09-welcome-github-jekyll/)), it seemed a sensible choice to use [Jekyll](https://jekyllrb.com/) as the static site generator for a website hosted on [GitHub Pages](https://pages.github.com).

Indeed, it has served me well over the last four years.

However, I always felt somewhat uneasy that **Jekyll** was a black box. I had no real understanding of how it worked and was unable to tweak it if necessary: _what it does is what you get_. Also, getting it to run locally on my Mac to test changes before deploying them to the live website wasn't as staighforward as it could have been. In fact, I found it challenging enough that I documented the process ([Installing Jekyll](blog/2020-04-15-installing-jekyll)) in case I needed it the future. (_Note: it has been some time since I last followed these instructions, and they may no longer work with a clean install of the latest macOS — Sequoia 15.1 at the time of writing._).

With this in mind, I was always on the lookout for a better alternative. I thought I had found the solution in John Sundell's [Publish](https://github.com/JohnSundell/Publish) static site generator written in _Swift_. I spent a little time looking into it but, I'm not sure why, it didn't gel with me. Almost certainly _Publish_ can do everthing I need. In fact, it's probably overkill for what I want. So, I held off from migrating my website away from _Jekyll_ ...

... until [Paul Hudson](https://www.hackingwithswift.com/about) released **Ignite**.

_Side note_: If you're a _Swift_ developer then Paul's [Hacking with Swift](https://www.hackingwithswift.com) site is the place to go. It's packed full of information, code samples, and free tutorials to help you learn, and improve, _Swift_ development. If you're serious about _Swift_ development then a membership to [HWS+](https://www.hackingwithswift.com/plus) is an excellent investment.

_Ignite_ is an open-source static site generator written in _Swift_, aimed at Swift developers. The codebase is very accessible, and like all of Paul’s work, it is readable and well-documented. I watched Paul’s [Brush & Bark](https://www.hackingwithswift.com/plus/live-streams/brush-bark) video, which fully details how to create a website with it. My initial impression was that it was exactly what I was after. I watched the video again and examined the codebase. I was sold. I decided to migrate my website away from _Jekyll_ and adopt _Ignite_.

The migration was pretty straightforward. The biggest headache being tweaking the [markdown](https://en.wikipedia.org/wiki/Markdown) in my posts to work with _Ignite's_ markdown parser rather than _Jeyll's_. There were a few occasions where I wasn't sure how to implement something so I either looked at the [Ignite Samples](https://github.com/twostraws/IgniteSamples) repository and website, or just delved into the _Ignite_ code base.

_Ignite_ is written in _Swift_, which is a significant advantage over the black box that is _Jekyll_. If I’m unsure how to do something or how something works, I can simply look at the code. If I want to implement a feature that isn’t supported, I can develop it myself and submit it as a pull request for possible inclusion in _Ignite’s_ published codebase. Fabulous!

_Ignite_ includes a tool for previewing your website in a local browser. Use the Terminal command:
<br><br>`ignite run --preview`

That tells Ignite to launch a local web server, then open it in your web browser so you can see what was produced. Under the covers _Ignite_ is using the local web server included with [Python](https://en.wikipedia.org/wiki/Python_(programming_language)) installed on all Macs so, unlike _Jekyll_, there is no complicated installation process needed to get the site working locally.

With my website migrated to Ignite, it was simply a matter of deploying it to [GitHub Pages](https://pages.github.com). I couldn’t find any documentation on the Ignite website detailing how to do this. A bit of Googling led me to the article [Building a Static Site in Swift using Ignite and GitHub Pages](https://medium.com/@Khaptonstall/building-a-static-site-in-swift-using-ignite-and-github-pages-5fa74f3d9b9d) — exactly what I needed.

If you're reading this, everything is working as expected. Happy days!
