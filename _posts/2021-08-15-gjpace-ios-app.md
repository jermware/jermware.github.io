---
title: "gjPace - My First iOS App"
description: an article describing my first ios app
author: "Gavin Jerman"
categories: ios app
layout: post
published: true
---

[**gjPace**](/gjPace) is an iOS app for calculating pace, time, speed, and distance combinations.

<img width="384" src="/images/2021-08-15-gjpace-ios-app-1.png" alt="gjPace"/>


It is my first iOS app and is written in [Swift](https://swift.org), a logical choice given my C# background, with the user interface built using [Storyboards](https://developer.apple.com/xcode/interface-builder/).

In March 2017 I was looking for inspiration for an app to develop and decided to recreate one that I used regularly to calculate pace and mile splits to help me improve my running times. That app was **[Running Pace](https://apps.apple.com/gb/app/running-pace/id519170773)** by **[Fikes Farm, LLC](http://fikesfarm.com/rp/)**.

Development started in March 2017 but was put on hold while I watched numerous online iOS Swift development videos and completed the excellent Stanford University [Developing iOS 11 Apps with Swift - CS193p Fall 2017](https://itunes.apple.com/in/course/developing-ios-11-apps-with-swift/id1309275316) iTunes course until, in March 2019, I started work on the app again.

The feature set of the app is straightforward. Given a specified distance and either a time, pace, or speed, the app calculates the 2 missing values, as well as the cumulative elapsed times for the required split interval. However, the UI is quite complex, especially implementing the [auto-layout constraints](https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/AutolayoutPG/index.html) in Storyboards. With the core functionality of the **[Running Pace](https://apps.apple.com/gb/app/running-pace/id519170773)** app implemented, I added the ability to record my personal running records. The record types (road, track, and trail) and distances are hard coded in the app and are specific to my running needs.

Recreating **[Running Pace](https://apps.apple.com/gb/app/running-pace/id519170773)** from the ground up was a great introduction to developing iOS apps, the Swift programming language, and building user interfaces with Storyboards. Given that **gjPace** is based on an existing app in the [App Store](https://www.apple.com/uk/app-store/), and was created *without* permission from its developers, it will never be released to the App Store. If you want to calculate running paces then you should download **[Running Pace](https://apps.apple.com/gb/app/running-pace/id519170773)**, but be aware, it was last updated in 2017, so you may want to seek out a more recent alternative. **[Pace Me](https://apps.apple.com/gb/app/pace-me-running-calculator/id1166223979)** perhaps?

