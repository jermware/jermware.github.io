---
date: 2024-02-20 09:41
author: "Gavin Jerman"
subtitle: An article describing my sixth app released to the app store
tags: gjpubs, ios, app, app store, swiftui, swiftdata
image: /images/blog/2024-02-20-gjpubs-released-to-the-app-store-1.png
---

# gjPubs Is on the App Store

[**gjPubs**](/projects/gjPubs), my eighth iOS App, is my sixth app released on the [App Store](https://apps.apple.com/app/gjpubs/id6475642254?platform=iphone).  

<img src="/images/blog/2024-02-20-gjpubs-released-to-the-app-store-1.png" alt="gjPubs screenshots" width="384">
<br><br>

This wasn't meant to happen! I was nearing the end of the rewrite of [**gjLists**](/projects/gjLists) using [SwiftUI](https://developer.apple.com/documentation/swiftui/) and [SwiftData](https://developer.apple.com/xcode/swiftdata/). I had almost completed the testing of the data conversion from [CloudKit](https://developer.apple.com/icloud/cloudkit/) to *SwiftData*, after which all I needed to do was create the new screenshots (tedious), before submitting to App Store Connect for review and then, hopefully, release.

But, thanks to [Paul Hudson](https://www.hackingwithswift.com/articles/263/build-your-first-app-with-swiftui-and-swiftdata), I got distracted. I watched his excellent [Create your first app with SwiftUI and SwiftData](https://www.youtube.com/watch?v=n4SCMC25BxY) YouTube video and it inspired me to write **gjPubs**. In the video he wrote an app from scratch using *SwiftUI* and *SwiftData* that stored data and images in [iCloud](https://www.apple.com/uk/icloud/) using *SwiftData*. He showed how easy it was to save an image using *SwiftData*'s external storage to ensure the database remained performant. 

This got me thinking. I started writing [**gjBeers**](/projects/gjBeers) way back in 2020 to allow me to catalogue and rate real ales. Although it's written using [Swift](https://swift.org/), it uses [UIKit](https://developer.apple.com/documentation/uikit) rather than *SwiftUI* for the UI, and a [JSON](https://www.json.org) file for storage. The app allows me to 'store' images of beer pump clips, but it does this by storing references to the images in the device's photos library, not the actual image. If you delete the image from the photo library, it's gone, and the app cannot display the image. **gjBeers** does not save its own images because I didn't want to duplicate all the images. Currently I have 965 different beers in my collection and duplicating those images would take up a lot of device storage. So far this has worked because I'm the only user of **gjBeers**, it's not on the App Store, and I make sure I keep copies of my beer images off the device. If I had a catastrophic failure and lost all/any of my beer images, I would be able to get them back. It would be a manual process, but it could be done.

After watching Paul's video and a little online research, I realised that I should be able to store compressed images using *SwiftData*. Hopefully the images wouldn't take up too much space, they would be independent of the device's photo library, and could be backed up to an external file for safe keeping. I decided to investigate. Anything other than screenshots for the **gjLists** rewrite!

Rather than experiment using my **gjBeers** collection, I decided to start afresh and to write a proof of concept to catalogue something else close to my heart, pubs! Like the beers I drink, I like to remember and rate pubs I have visited so I know which to avoid, and which to revisit, be it because of the beer or the food. And, like beers, it's always good to have an image as an aide-mémoire. Hence, the birth of **gjPubs**.

It went well. I started coding **gjPubs** at the end of December 2023 and, eight weeks later, it's in the App Store! That's pretty good going for me. As with all software development, the last 20% of the work took 80% of the time, c.f. [Pareto principle](https://en.wikipedia.org/wiki/Pareto_principle). Even producing the screenshots was a breeze thanks to the excellent [RocketSim](https://www.rocketsim.app).

What about storing the images using *SwiftData*? So far, it looks okay. I do compress the images to reduce their size and storage requirements, and they still look good on the device. I've added a setting in the app to allow the user to adjust the compression quality from the lowest, 1, to the best, 10. I'm using the app with the default compression setting of 5 and my current collection of 20 pubs, all with an image taken on my iPhone 13 mini, is using 3.9MB of *SwiftData*'s external storage. Some images, based on their size, are stored in the *SwiftData* [SQLite](https://www.sqlite.org) database, which explains why the size of the external backup file for all 20 pubs and their images is 5.3MB. I don't think that's too bad. If the storage needs scale linearly, it suggests that a 1,000 beer collection with images is likely to need around 265MB. I'm okay with that.

So, it looks like a rewrite of **gjPubs** using *SwiftUI* and *SwiftData* is on the cards. I just need to need finish the new **gjLists** screenshots and get it released to the App Store with no further distractions.

Why release **gjPubs** to the App Store? Although it was only meant to be a proof of concept for the rewrite of **gjBeers**, I've found it useful and didn't want it to wither and die. If it's on the App Store I will need to maintain and enhance it, especially if people are paying for it.

Why are you charging for **gjPubs** rather than making it free with a tip jar like your other apps? To be honest, I'm being lazy. I couldn't be bothered to write the tip jar screen and processing for it. It's so much easier to set a price for the app in App Store Connect and be done with it.

If you like visiting pubs and want to log your thoughts, ratings, visits etc., download **gjPubs** using the link below and give it a go. I think you'll like it and find it worth the small fee - thanks.
<br><br>

[![download](/images/Download_on_the_App_Store_Badge_US-UK_RGB_blk_092917.svg)](https://apps.apple.com/app/gjpubs/id6475642254?platform=iphone)
