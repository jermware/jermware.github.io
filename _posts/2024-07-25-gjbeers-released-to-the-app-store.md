---
title: "gjBeers Is on the App Store"
description: an article describing my eighth app released to the app store
author: "Gavin Jerman"
categories: ios app store
layout: post
published: true
---

[**gjBeers**](/gjBeers), my third iOS App, is my eighth app released on the [App Store](https://apps.apple.com/app/gjbeers/id1532589621?platform=iphone).  

![gjBeers screenshots](/images/2024-07-25-gjbeers-released-to-the-app-store-1.png){:width="384px"}


I've been using a version of **gjBeers** on my iPhone for a number of years. In fact, it was the third iOS App I started writing way back in November 2019 using [Swift](https://swift.org/) and [UIKit](https://developer.apple.com/documentation/uikit). Over the years I've been using it to record any new beers I drink and tweaking the code and UI to suit my needs. I had considered releasing it to the App Store but held back since, rather than store any images in the app's database, it stored a reference to the image in the device's photo library. I deliberately did this to save storage space on the device but it meant that if you deleted the image from the device it was not visible in the app. This was fine for me but not ideal for other users. This situation changed when I wrote [**gjPubs**](/gjPubs) and [released it to the App Store](/2024/02/gjpubs-released-to-the-app-store) in February 2024.

**gjPubs** was written using [SwiftUI](https://developer.apple.com/documentation/swiftui/) and [SwiftData](https://developer.apple.com/xcode/swiftdata/) and stores images in its database. The images are compressed to reduce their size and storage requirements while still looking good on the device. Once saved in the app the images can be safely removed from the device's photo library.

With **gjPubs** released to the App Store I decided to use it as a template for a complete rewrite of **gjBeers**. Given that most of the heavy lifting was done in the writing of **gjPubs**, the rewrite of **gjBeers** didn't take too long, about 3 months elapsed time. A fair chunk of the development time was spent writing the conversion and import of my existing beers catalogue into the new format for the rewrite (something that wouldn't be needed for the released version). Once that was done, I spent a couple of weeks field testing it to make sure I was happy with it and a few tweaks later and it was ready to release to the App Store. It passed the App Review first time with no issues. Hurrah!

If you like drinking beer and want to record your favourites, tasting notes etc., download **gjBeers** using the link below and give it a go. Hopefully you'll like it and think it's worth the small fee - cheers!

[![download](/images/Download_on_the_App_Store_Badge_US-UK_RGB_blk_092917.svg)](https://apps.apple.com/app/gjbeers/id1532589621?platform=iphone)
