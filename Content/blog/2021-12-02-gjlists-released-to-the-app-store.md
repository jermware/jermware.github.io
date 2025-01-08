---
date: 2021-12-02 09:41
author: "Gavin Jerman"
subtitle: An article describing my second app released to the app store.
tags: gjlists, ios, app, app store, swift
image: /images/blog/2021-12-02-gjlists-released-to-the-app-store-1.png
layout: BlogPost
---

# gjLists Is on the App Store

[**gjLists**](/projects/gjLists), my fourth iOS App, has been released on the [App Store](https://apps.apple.com/gb/app/gjlists/id1528217135?platform=iphone).

<img src="/images/blog/2021-12-02-gjlists-released-to-the-app-store-1.png" alt="gjLists screenshots" width="384">
<br><br>

Like my previous apps, I wrote it to solve a problem I had. I like lists. I have many lists, for all sorts of things. I have lists for grocery shopping, general to-do items, rooms sizes, bike settings, bugs/features for my apps, all sorts of lists. Originally, I put my lists in text files, then I migrated them to Apple Notes. But I found maintaining and organising them cumbersome. I like to strike out done items and move items around within a list and this was not straightforward in Notes. Yes, I could have found an app on the App Store, but I'm a developer and I wanted to improve my Swift and iOS development skills. So, I decided to write my own app. And I think it worked out well. At least, it works for me.

**gjLists** is written completely in [Swift](https://swift.org). It uses 2 open-source Swift projects. [SwiftReorder](https://github.com/adamshin/SwiftReorder) for drag and drop reordering of lists and list items, and [SwiftyMarkdown](https://github.com/SimonFairbairn/SwiftyMarkdown) for displaying the markdown text used in the _Credits_ screen.

The app uses iCloud to store its lists and to synchronise the lists across devices logged into the same iCloud account. This was my first foray into the world of iCloud synching and took quite some trial and effort to get working. Ultimately the app is at the whim of the Apple servers to perform the synchronisation, but it seems to work well. There is a setting to turn-off iCloud sync if you don't want it.

I also wanted to explore using _StoreKit_. Rather than charging for the app, I decided to add a tip jar, which is quite a common feature in free apps today. It turns out that tips are 'consumables' in _StoreKit_ parlance and are much easier to implement than non-consumables or subscriptions. Even so, it took me longer to implement and test than I was expecting. I guess that's why [RevenueCat](https://www.revenuecat.com) is so popular. It looks like _StoreKit 2_ has made life much easier under [SwiftUI](https://developer.apple.com/xcode/swiftui/), so fingers crossed for my next app.

Given my previous experience with [**gjPwd**](/projects/gjPwd), the App Store review was process was straightforward. The only complication being setting up the in-app purchases correctly for the tip jar. All went well and **v2021.12** was approved first time.

If you're into lists and/or to-do items, give **gjLists** a try. It's free, and there are no ads. You can download it from the App Store using the link below. If you find it useful, and can spare some change, you can show your appreciation by throwing some coins in the tip jar - thanks.
<br><br>

[![download](/images/Download_on_the_App_Store_Badge_US-UK_RGB_blk_092917.svg)](https://apps.apple.com/gb/app/gjlists/id1528217135?platform=iphone)
