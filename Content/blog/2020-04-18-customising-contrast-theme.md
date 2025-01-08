---
date: 2020-04-18 09:41
author: "Gavin Jerman"
subtitle: An article describing customising a Jekyll theme.
tags: github pages, jekyll, theme
layout: BlogPost
---

# Customising the Contrast Jekyll Theme

In an earlier post [Using the Contrast Jekyll Theme](/blog/2020-04-13-using-contrast-theme) I described how I forked the [Contrast](https://github.com/niklasbuschmann/contrast) Jekyll theme by [Niklas Buschmann](https://github.com/niklasbuschmann) to create my website with the default theme.

In this post I describe how I customised the *Contrast* theme to suit the layout and style I wanted for my website.


As a reminder, here's the default *Contrast* theme.
<img src="/images/blog/2020-04-18-customising-1.png" alt="image1" width="1000">

I amended the *_config.yml* configuration file to include my information, to show the sidebar, show article excerpts, and to always show the site title.

<img src="/images/blog/2020-04-18-customising-2.png" alt="image2" width="1000">
<br><br>

With these changes in place the website looked like this.
<img src="/images/blog/2020-04-18-customising-3.png" alt="image3" width="1000">

Next I enabled the *Subscribe* option.

<img src="/images/blog/2020-04-18-customising-4.png" alt="image4" width="1000">
<br><br>

This provides displays a Subscribe link in the sidebar and a site RSS feed at */feed.xml*.
<img src="/images/blog/2020-04-18-customising-5.png" alt="image5" width="1000">
<br><br>

I amended the *navigation* section to include links in the sidebar to the *Projects*, *Archive*, and *About* pages.

<img src="/images/blog/2020-04-18-customising-6.png" alt="image6" width="1000">
<br><br>

The *Archive* page is included in the *Contrast* theme, but you will need to create the *About.md* and *Projects.md* files for their links to be active. I created stubbed pages, the content can be added later.

<img src="/images/blog/2020-04-18-customising-7.png" alt="image7" width="40%">
<br><br>

Here's what the website looks now.
<img src="/images/blog/2020-04-18-customising-8.png" alt="image8" width="1000">

I amended the *permalink* option to include the year and month, as well as the title, of the article.

<img src="/images/blog/2020-04-18-customising-9.png" alt="image9" width="1000">
<br><br>

This seemed a more logical naming convention to me.

<img src="/images/blog/2020-04-18-customising-10.png" alt="image10" width="1000">
<br><br>

I added pagination to the articles displayed on the home page by including the *jekyll-paginate* plugin and providing the required *paginate* and *paginate_path* settings.

<img src="/images/blog/2020-04-18-customising-11.png" alt="image11" width="1000">
<br><br>

Which looks like this on the website.
<img src="/images/blog/2020-04-18-customising-12.png" alt="image12" width="1000">

Adding *jekyll-sitemap* to the *plugins* section...

<img src="/images/blog/2020-04-18-customising-13.png" alt="image13" width="1000">
<br><br>

Automatically generates a site map at */sitemap.xml*.
<img src="/images/blog/2020-04-18-customising-14.png" alt="image14" width="1000">

The remaining changes I made involved getting my hands dirty and writing some HTML.

I added support for a *favicon* by creating a *favicon.png* file with the appropriate image and copying it to the root folder of the website i.e. same location as *_config.yml*, and amending *default.html* file in the *_layouts* folder to set the *shortcut icon*.

<img src="/images/blog/2020-04-18-customising-15.png" alt="image15" width="1000">
<br><br>
<img src="/images/blog/2020-04-18-customising-16.png" alt="image16" width="1000">

Finally I added a page to search for articles by title, URL, category, tags, date, and description. The search functionality was provided in a JavaScript library by [Simple-Jekyll-Search](https://github.com/christian-fei/Simple-Jekyll-Search) - see *search.js* in the root folder. The article data fields to search are specified using JSON in the *search.json* in the root folder.

<img src="/images/blog/2020-04-18-customising-17.png" alt="image17" width="60%">
<br><br>

A search page *search.md* was created to capture the search text and display the matching articles in a list similar to the *Archive* page, and added to the *navigation* in *_config.yml*.

<img src="/images/blog/2020-04-18-customising-18.png" alt="image18" width="1000">
<br><br>

Here's the search page in action.
<img src="/images/blog/2020-04-18-customising-19.png" alt="image19" width="1000">

With these customisations in place, here's what the final website looks like.
<img src="/images/blog/2020-04-18-customising-20.png" alt="image20" width="1000">

Now to add some content...
