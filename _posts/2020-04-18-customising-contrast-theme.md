---
title: "Customising the Contrast Jekyll Theme"
description: an article describing customising a Jekyll theme
author: "Gavin Jerman"
categories: jekyll theme
layout: post
published: true
---

In an earlier post [Using the Contrast Jekyll Theme](/2020/04/using-contrast-theme) I described how I forked the [Contrast](https://github.com/niklasbuschmann/contrast) Jekyll theme by [Niklas Buschmann](https://github.com/niklasbuschmann) to create my website with the default theme.

In this post I describe how I customised the *Contrast* theme to suit the layout and style I wanted for my website.


As a reminder, here's the default *Contrast* theme.  
![image1](/images/2020-04-18-customising-1.png)

I amended the *_config.yml* configuration file to include my information, to show the sidebar, show article excerpts, and to always show the site title.  
![image2](/images/2020-04-18-customising-2.png)

With these changes in place the website looked like this.  
![image3](/images/2020-04-18-customising-3.png)

Next I enabled the *Subscribe* option.  
![image4](/images/2020-04-18-customising-4.png)

This provides displays a Subscribe link in the sidebar and a site RSS feed at */feed.xml*.  
![image5](/images/2020-04-18-customising-5.png)

I amended the *navigation* section to include links in the sidebar to the *Projects*, *Archive*, and *About* pages.  
![image6](/images/2020-04-18-customising-6.png)

The *Archive* page is included in the *Contrast* theme, but you will need to create the *About.md* and *Projects.md* files for their links to be active. I created stubbed pages, the content can be added later.  
![image7](/images/2020-04-18-customising-7.png){:height="50%" width="50%"}

Here's what the website looks now.  
![image8](/images/2020-04-18-customising-8.png)

I amended the *permalink* option to include the year and month, as well as the title, of the article.  
![image9](/images/2020-04-18-customising-9.png)

This seemed a more logical naming convention to me.  
![image10](/images/2020-04-18-customising-10.png)

I added pagination to the articles displayed on the home page by including the *jekyll-paginate* plugin and providing the required *paginate* and *paginate_path* settings.  
![image11](/images/2020-04-18-customising-11.png)

Which looks like this on the website.  
![image12](/images/2020-04-18-customising-12.png)

Adding *jekyll-sitemap* to the *plugins* section...  
![image13](/images/2020-04-18-customising-13.png)

Automatically generates a site map at */sitemap.xml*.  
![image14](/images/2020-04-18-customising-14.png)
The remaining changes I made involved getting my hands dirty and writing some HTML.

I added support for a *favicon* by creating a *favicon.png* file with the appropriate image and copying it to the root folder of the website i.e. same location as *_config.yml*, and amending *default.html* file in the *_layouts* folder to set the *shortcut icon*.  
![image15](/images/2020-04-18-customising-15.png)
![image16](/images/2020-04-18-customising-16.png)

Finally I added a page to search for articles by title, URL, category, tags, date, and description. The search functionality was provided in a JavaScript library by [Simple-Jekyll-Search](https://github.com/christian-fei/Simple-Jekyll-Search) - see *search.js* in the root folder. The article data fields to search are specified using JSON in the *search.json* in the root folder.  
![image17](/images/2020-04-18-customising-17.png){:height="70%" width="70%"}

A search page *search.md* was created to capture the search text and display the matching articles in a list similar to the *Archive* page, and added to the *navigation* in *_config.yml*.  
![image18](/images/2020-04-18-customising-18.png)

Here's the search page in action.  
![image19](/images/2020-04-18-customising-19.png)

With these customisations in place, here's what the final website looks like.  
![image20](/images/2020-04-18-customising-20.png)

Now to add some content...
