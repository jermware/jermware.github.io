---
title: "gjNotes Is on the App Store"
description: an article describing my fourth app released to the app store
author: "Gavin Jerman"
categories: ios app store
layout: post
published: true
---

[**gjNotes**](/gjNotes), my fifth iOS App, is my fourth app released on the [App Store](https://apps.apple.com/app/gjnotes/id1562333522?platform=iphone).  

![gjNotes screenshots](/images/2022-12-03-gjnotes-released-to-the-app-store-1.png){:width="384px"}


I started work on **gjNotes** back in April 2021 when I was still working on [**gjLists**](/gjLists) but was distracted by the 'new shiny' of [SwiftUI](https://developer.apple.com/documentation/swiftui/). I already had the idea for an app that would allow me to make simple plain text notes (as well as making lists, I like jotting things down in 'scratch' notes) and decided this would be an ideal candidate for my first SwiftUI app. SwiftUI makes creating list/table view based apps so simple compared to [UIKit](https://developer.apple.com/documentation/uikit) that it wasn't long before I had a [MVP](https://en.wikipedia.org/wiki/Minimum_viable_product).

I'm a big fan of [Quick Draft](https://apps.apple.com/us/app/quick-draft-simple-scratchpad/id1496067471) and use it regularly to jot down info on my Mac that sychronises with my iPhone and vice versa. I had experience of synchronising data across devices using [iCloud](https://www.apple.com/uk/icloud/) and [CloudKit](https://developer.apple.com/icloud/cloudkit/) in **gjLists** and spent the next few weeks researching and implementing iCloud synchronisation in SwiftUI. This turned out to be surprisingly straightforward, and it wasn't long before I had an app that had all the basic functionality I wanted.

Now came the hard bit, adding the 'spit and polish'. The first 80% was relatively simple, it's the last 20% that bites you in the bum. Whilst supposedly working on **gjLists**, I spent way too much time adding the final touches to **gjNotes**. Often I would come across showstoppers that were due to the limitations of the current release of SwiftUI and had to pause development. Eventually, with the release of iOS 16.0, I was able to complete all the functionality I wanted for the first release of **gjNotes**.

And, finally, here it is, **v2022.1** the first release of **gjNotes**. A simple, plain text, note taking app that synchronises across your iCloud devices. As with all of my apps, it does what I need it to do. Hopefully it will prove useful to you. 

If you want to create plain text notes that synchronise over your iCloud devices, give **gjNotes** a try. It's free and there are no ads. Fabulous! You can download it from the App Store using the link below.

[![download](/images/Download_on_the_App_Store_Badge_US-UK_RGB_blk_092917.svg)](https://apps.apple.com/app/gjnotes/id1562333522?platform=iphone)
