---
title: "Using the Contrast Jekyll Theme"
description: an article describing forking a Jekyll theme
author: "Gavin Jerman"
categories: jekyll theme
layout: post
published: true
---

In an earlier post [Welcome GitHub Pages and Jekyll](/2020/04/welcome-github-jekyll) I described how I created a minimal website (a single content file, *index.html*) hosted on GitHub and using my custom domain. At this point I could have hand-crafted the structure and content of the website using HTML and CSS files etc. This would have been a perfectly reasonable approach, especially if you like writing HTML, but it does not take advantage of GitHub Pages' support for *Jekyll*.


[Jekyll](https://jekyllrb.com) is a static site generator that can "Transform your plain text into static websites and blogs.". If you want, you can hand-craft a website from scratch using Jekyll, but why not let other people do the hard work for you and use one of many freely available Jekyll themes to create and style your website? Once a theme is applied, you just add the content, typically by writing text in markdown files. There is no need to go near HTML and CSS, unless you want to.

There are many, many, Jekyll themes available, and you can spend hours browsing for your ideal layout and style. Most of them allow you to add a personal touch by customising them via a configuration file, and those that are available in GitHub repositories allow you to clone and customise them to your exact liking.

The Jekyll [theme](https://jekyllrb.com/docs/themes/) documentation lists some of the sites hosting galleries of Jekyll themes. The two I found most useful were [jamstackthemes.dev](https://jamstackthemes.dev/ssg/jekyll/) and [jekyllthemes.io](https://jekyllthemes.io/).

After a couple of false starts, I finally decided on the [Contrast](https://jekyllthemes.io/theme/contrast) Jekyll theme by [Niklas Buschmann](https://github.com/niklasbuschmann). This is a blog theme that is clean, simple, responsive, and supports pagination and syntax highlighting.  
![image1](/images/2020-04-13-using-1.png)

It also supports site navigation, ideal for my iOS app support pages.  
![image2](/images/2020-04-13-using-2.png)

The *Contrast* Jekyll theme is hosted on [GitHub](https://github.com/niklasbuschmann/contrast) and comes with an [Unlicence](https://unlicense.org) i.e. "This is free and unencumbered software released into the public domain.".

The *Contrast* repository provides installation instructions, essentially "Just fork the repo and adjust the _config.yml to use with Github Pages and your page is done.".

I already had a working website repository that was using my custom domain. A personal GitHub account can host only one website and the repository must be named *username.github.io*, where username is your username on GitHub. I would either have to delete or deactivate my current website in order to create a new one. I decided to rename the repository in case in needed to reinstate it. I could delete the original repository once the *Contrast* themed website was up and running.

With no active website repository, I could follow the *Contrast* installation instructions - fork the *Contrast* repository and adjust the *_config.yml* file. I would also need to set the repository's custom domain to my domain.

Here's what I did.

- Renamed the existing **gavinjerman.github.io** website repository to **website.old**. Renaming the repository deactivates the website.  
![image3](/images/2020-04-13-using-3.png)

- Forked the [Contrast](https://github.com/niklasbuschmann/contrast) repository into my GitHub account.  
![image4](/images/2020-04-13-using-4.png)

- Renamed the forked *Contrast* repository to my GitHub website repository name **gavinjerman.github.io**.  
![image5](/images/2020-04-13-using-5.png)

- Set the website *Custom domain* to my custom domain name **www.jermware.net**, ensuring *Enforce HTTPS* was checked.  
![image6](/images/2020-04-13-using-6.png)

Once this was done, my GitHub hosted website, using my custom domain, was running as a clone of the default *Contrast* theme.  
![image7](/images/2020-04-13-using-7.png)

Now to customise the default *Contrast* theme...
