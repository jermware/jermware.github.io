---
date: 2025-08-25 21:53
author: "Gavin Jerman"
subtitle: An article describing my tenth ios and first macos app released to the app store.
tags: gjroutes, ios, macos, app, app store
image: /images/blog/2025-08-25-gjroutes-released-to-the-app-store-1.png
layout: BlogPost
published: true
---

# gjRoutes Is on the App Store

[**gjRoutes**](/projects/gjRoutes) is my tenth iOS app and **first** macOS released on the [App Store](https://apps.apple.com/gb/app/gjroutes/id6742377844).

<img src="/images/blog/2025-09-25-gjjotter-released-to-the-app-store-1.png" alt="gjJotter screenshot" width="384">
<br><br>

I'm a runner, mainly off-road, and I like varying my routes and exploring new areas. I wear a [Garmin](https://www.garmin.com/en-GB/p/780139) watch to record my runs and often download the GPX files from [Garmin Connect](https://connect.garmin.com) to see exactly where I’ve been. Most of my runs start and finish at home, so my routes often overlap or run close to each other. I’d been using a GPX viewing app, but it opened files in separate windows instead of one, which was frustrating. Despite lots of apps out there, I couldn’t find exactly what I wanted.

So, I decided to build my own: display multiple GPX files in different colours on a map, with options to change colours and hide routes to declutter the display.

I’d only written iOS apps before ([my apps](/projects)), so I started **gjRoutes** as an [iPad SwiftUI](https://developer.apple.com/documentation/swiftui/) app. The tricky part was reading GPX files and extracting coordinates. Vincent Neo’s [CoreGPX](https://github.com/vincentneo/CoreGPX) [Swift](https://swift.org/) package solved this neatly, making it easy to parse GPX files and display them on a map with Apple’s [MapKit](https://developer.apple.com/documentation/mapkit).

Soon I had a working app on the iPad. With a few tweaks it ran on the iPhone too—even on my smaller [iPhone 13 mini](https://support.apple.com/en-gb/111873). But I also wanted it on the Mac, to use my 5K display.

I’d never built a Mac app before, but luckily iOS, iPadOS and macOS can share the same SwiftUI code base. That meant one app across all platforms with a single purchase unlocking it everywhere. Perfect. I turned to [ChatGPT](https://chatgpt.com) for help adapting the code for macOS. It wasn’t always smooth—sometimes it got stuck in a loop or ran out of tokens—but eventually, **gjRoutes** was running on all three platforms. After testing and fixing bugs, I was ready to publish.

Then I had a brainwave. Garmin Connect automatically uploads my runs to [Strava](https://www.strava.com). Wouldn’t it be great to view Strava runs directly in the app?

Strava provides an [API](https://developers.strava.com), and Gustavo Ferrufino’s [StravaKit](https://github.com/ferrufino/StravaKit) package made integration straightforward. After getting an API key and reorganising some code, **gjRoutes** could display Strava activities alongside GPX files.

Submitting to the App Store wasn’t straightforward. Strava’s default API key only allowed one user—fine for development, but useless for real users or App Review. To fix this, I had to follow Strava’s [brand guidelines](https://developers.strava.com/guidelines/), update some screens, and apply for enhanced API access. Thankfully, I was approved within a week.

App Review itself was tougher. The iOS version took three rounds of rejection before approval, and the Mac version five. Some rejections were my fault, others less so, but persistence paid off.

Now I’m happy to say **gjRoutes** is live on both the App Store and the Mac App Store.

If you’re a GPX user or a runner with a Strava account, download **gjRoutes** using the links below and give it a try. Hopefully you’ll find it worth the small fee, especially with Strava integration. And if you enjoy it, please consider leaving a review—thanks!
<br><br>

[![download](/images/Download_on_the_Mac_App_Store_Badge_US-UK_RGB_blk_092917.svg)](https://apps.apple.com/app/gjroutes/id6742377844?platform=mac)
[![download](/images/Download_on_the_App_Store_Badge_US-UK_RGB_blk_092917.svg)](https://apps.apple.com/app/gjroutes/id6742377844?platform=ipad)
