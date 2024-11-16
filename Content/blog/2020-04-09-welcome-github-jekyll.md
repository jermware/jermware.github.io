---
date: 2020-04-09 09:41
author: "Gavin Jerman"
subtitle: An article describing using GitHub Pages and Jekyll for the first time.
tags: github pages, jekyll
---

# Welcome GitHub Pages and Jekyll

I finally got around to looking into GitHub Pages and Jekyll, and this website is the end result.

I've had my own domain name for many years but have only ever used it for email addresses, never for a website. I couldn't think of any content for it and, to be honest, I didn't want to pay the hosting fees. 


In my spare time I've been learning how to develop Apple iOS apps using Swift, and I now have a number of my own apps on my iPhone - see my [Projects](/projects) page. Although the apps were written to solve a particular need I had, I thought it might be interesting to release one or more of them on Apple's App Store for other people to try. However, in order to submit an app for inclusion in the App Store, I must provide URLs for a support page and a privacy policy. So, I need a website.

I recently discovered  that I could host a website for free on [GitHub](https://github.com) using [GitHub Pages](https://pages.github.com). And, using [Jekyll](https://jekyllrb.com), I could easily generate and maintain a static website. This is exactly what I was looking for.

Googling for *GitHub Pages* and *Jekyll* returned lots of information and tutorials on how to go about hosting a static website on GitHub and how to use a Jekyll Theme to customise it to my personal needs.

I decided on the following steps to create my website:

1. Create a bare minimum website at the default GitHub Pages URL. For me this would be [http://gavinjerman.github.io](http://gavinjerman.github.io).

2. Redirect the default GitHub Pages domain to my custom domain [jermware.net](https://www.jermware.net) hosted by [123 Reg](https://www.123-reg.co.uk).

Once I had a minimal website up and running using my custom domain, I could spend some time choosing and customising what theme to use from one of the many freely available Jekyll themes. After that, it would just be a case of adding the content!

Although the information to needed complete these steps is available elsewhere online, for completeness, here's what I did.

Step 1:

- I followed the instructions at [GitHub Pages](https://pages.github.com) to create a **public** repository named **gavinjerman.github.io**.  
I did not select the *'Initialize this repository with a README'* option. I wanted to keep the repository as clean as possible since I would eventually be overwriting it with a custom theme.

- I did not follow the instructions to *'Clone the respository'* and create an *index.html* file. Instead, I chose the **creating a new file** link in the *'Quick setup - if you've done this kind of thing before'* section.  

<img src="/images/blog/2020-04-09-welcome-1.png" alt="image1" width="1000">
<br><br>

  I named the file **index.html** with the contents *'Hello World'* and committed the new file.  

<img src="/images/blog/2020-04-09-welcome-2.png" alt="image2" width="1000">
<br><br>

  My repository looked like this:  

<img src="/images/blog/2020-04-09-welcome-3.png" alt="image3" width="1000">
<br><br>

- At this point the website was live at [http://gavinjerman.github.io](http://gavinjerman.github.io):  
<img src="/images/blog/2020-04-09-welcome-4.png" alt="image4" width="1000">

Step 2:

- Following the GitHub instructions at [Managing a custom domain for your GitHub Pages site](https://help.github.com/en/github/working-with-github-pages/managing-a-custom-domain-for-your-github-pages-site), I set the *'Custom Domain'* to **www.jermware.net** in the repository's *Settings*. This creates a **CNAME** file specifying the custom domain. Whilst in *Settings*, I also selected the *'Enforce HTTPS'* option.  

- To complete the Custom Domain changes I needed to make some changes with my DNS provider. After googling for instructions specific to my DNS provider **123 Reg** ([these were particularly useful](http://www.benjaminday.co.uk/blog/misc/2015/01/08/github-pages-and-123-reg-dns/)), I created the a **CNAME** and 4 **A** records in my DNS:  
<img src="/images/blog/2020-04-09-welcome-5.png" alt="image5" width="1000">
<br><br>

- Once the DNS changes had propagated (this can take a couple of days), my website was available at [jermware.net](https://www.jermware.net). The original URL [http://gavinjerman.github.io](http://gavinjerman.github.io) now redirects to [jermware.net](https://www.jermware.net):  
<img src="/images/blog/2020-04-09-welcome-6.png" alt="image6" width="1000">

I now have a website using my custom domain and hosted on GitHub. Now to decide on a theme and customise it to my liking...
