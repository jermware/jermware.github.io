---
layout: page
title: gjPace
permalink: /gjPace
---

{% include slider.html %}

<span style="float: left; line-height: 0px;">
<img width="64" height="64" src="/images/gjPace-icon.png">
</span>
<span style="float: left; padding: 17px 0px 0px 17px;">
An iOS app for calculating pace, time, speed, and distance combinations.
</span>
<div style="clear: both;"></div>

<div id="gallery">
    <ul id="lightSlider" class="cS-hidden">
        <!-- <li data-src="large"><img src="medium"></li> -->
        <li data-src="/images/gjPace-1l.png"><img src="/images/gjPace-1m.png"></li>
        <li data-src="/images/gjPace-2l.png"><img src="/images/gjPace-2m.png"></li>
        <li data-src="/images/gjPace-3l.png"><img src="/images/gjPace-3m.png"></li>
        <li data-src="/images/gjPace-4l.png"><img src="/images/gjPace-4m.png"></li>
        <li data-src="/images/gjPace-5l.png"><img src="/images/gjPace-5m.png"></li>
        <li data-src="/images/gjPace-6l.png"><img src="/images/gjPace-6m.png"></li>
        <li data-src="/images/gjPace-7l.png"><img src="/images/gjPace-7m.png"></li>
        <li data-src="/images/gjPace-8l.png"><img src="/images/gjPace-8m.png"></li>
        <li data-src="/images/gjPace-9l.png"><img src="/images/gjPace-9m.png"></li>
    </ul>
</div>

**gjPace** is my first iOS app. It is written in [Swift](https://swift.org), a logical choice given my C# background, with the user interface (UI) built using [Storyboards](https://developer.apple.com/xcode/interface-builder/).

In March 2017 I was looking for inspiration for an app to develop and decided to recreate an app that I used regularly to calculate pace and mile splits to help me improve my running personal best times. That app was **[Running Pace](https://apps.apple.com/gb/app/running-pace/id519170773)** by **[Fikes Farm, LLC](http://fikesfarm.com/rp/)**.

I started development of the app using the free version of an [Apple Developer Account](https://developer.apple.com). At first this provided everything I needed as I tested the waters of the Apple development ecosystem. However, having the app on my iPhone expire every 7 days necessitating an XCode redeployment soon became tedious, especially if I was trying to use my app away from my development iMac when it expired. At the time I wasn't ready to invest the princely sum of £79 to enrol in a full Apple Developer account, my interest in developing the app waned, and I put it on the back burner. I continued to watch iOS development related videos on YouTube and completed the excellent Stanford University [Developing iOS 11 Apps with Swift - CS193p Fall 2017](https://itunes.apple.com/in/course/developing-ios-11-apps-with-swift/id1309275316) iTunes course. In March 2019 I started work on the app again, and in June 2019 I enrolled in a paid Apple Developer account, renewing this yearly since.

On the face of it, the feature set of the app is fairly simple. Given a specified distance and either a time, pace, or speed, the app calculates the 2 missing values, as well as the cumulative elapsed times for the given split interval. However, the UI is quite complex, especially implementing the [auto-layout constraints](https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/AutolayoutPG/index.html) in Storyboards. This was a very useful introduction to Storyboards but proved to be very time consuming and tricky to implement correctly to get the UI layout to adapt to different device screen sizes. Although an excellent learning exercise, it was something I did not want to go through again. This was to be my first, and last, iOS App with the UI built in Storyboards. From now on, my user interfaces would be written in code.

With the basic functionality of the **[Running Pace](https://apps.apple.com/gb/app/running-pace/id519170773)** app implemented, I decided to enhance its functionality and added the ability to record my personal running records. The record types (road, track, and trail) and distances are hard coded in the app and are specific to my running needs.

Recreating **[Running Pace](https://apps.apple.com/gb/app/running-pace/id519170773)** from the ground up was a great introduction to developing iOS apps, the Swift programming language, and building user interfaces with Storyboards. Given that **gjPace** is based on an existing app in the [App Store](https://www.apple.com/uk/app-store/), and was created without permission of its developers, it will never be released to the App Store. If you want to calculate running distance, time, pace, and speed combinations then you should download **[Running Pace](https://apps.apple.com/gb/app/running-pace/id519170773)** from the App Store. Unfortunately **[Running Pace](https://apps.apple.com/gb/app/running-pace/id519170773)** has not been updated since 2017 so you may want to seek out a more recent alternative, **[Pace Me](https://apps.apple.com/gb/app/pace-me-running-calculator/id1166223979)** perhaps?

Points of interest:

- Written in Swift with UI built using Storyboards.
- a shameless rip-off of **[Running Pace](https://apps.apple.com/gb/app/running-pace/id519170773)** by **[Fikes Farm, LLC](http://fikesfarm.com/rp/)**.
- First code cut March 2017, coding proper resumes March 2019, code 'complete' November 2019. Numerous tweaks since but unlikely to be anymore unless iOS upgrades break the app.
- Supports system dark and light modes.
- Custom keyboard toolbar e.g., common race distances.
- Custom pickers for time and pace.
- Stopwatch icon from [OnlineWebFonts.COM](https://www.onlinewebfonts.com/icon/65694).
- Keyboard avoidance implemented using [IQKeyboardManager](https://github.com/hackiftekhar/IQKeyboardManager).

<br/>
##### August 16, 2021
