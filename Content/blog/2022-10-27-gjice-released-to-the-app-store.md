---
date: 2022-10-27 09:41
author: "Gavin Jerman"
subtitle: An article describing my third app released to the app store.
tags: gjice, ios, app, app store, swift, swiftui
image: /images/blog/2022-10-27-gjice-released-to-the-app-store-1.png
layout: BlogPost
---

# gjICE Is on the App Store

[**gjICE**](/projects/gjICE), my sixth iOS App, has been released on the [App Store](https://apps.apple.com/gb/app/gjice/id6443990092?platform=iphone).

<img src="/images/blog/2022-10-27-gjice-released-to-the-app-store-1.png" alt="gjIce screenshots" width="384">
<br><br>

With the release of iOS 16.0 on September 12, 2022, Apple allowed third-party widgets to be displayed on iPhone [Lock Screens](https://support.apple.com/en-gb/guide/iphone/iph4d0e6c351/ios#iph0ee454f4c).

Three types of Lock Screen widgets supported by iOS 16:

<img src="/images/gjICE/0-widget-types.png" alt="types of widget" width="300">
<br><br>

- an inline rectangular widget displayed above the date and alongside the time
- small circular widgets displayed below the date
- rectangular widgets displayed below the data

As well as limiting the size and number of Lock Screen widgets, iOS places other restrictions on their functionality such as colour vibrancy, user interaction, and the frequency with which they are refreshed.

Lock Screen widgets **must** be written in [SwiftUI](https://developer.apple.com/documentation/swiftui/) and use [WidgetKit](https://developer.apple.com/widgets/).

Although at the time of their announcement I was in the middle of updating [**gjLists**](/projects/gjLists) and working on a releasable version of [**gjNotes**](/projects/gjNotes), the draw of shiny new development was strong, and so I decided to create my own Lock Screen widget.

The idea for my widget was simple. I like to have 'if found, or in case of emergency, please call' contact details on my phone's Lock Screen wallpaper. If someone finds my phone or I'm incapacitated in some way, my information and contact details are available even if the phone is locked. In the past, I have done this by using an app, [If Found Lock Screen 2](https://apps.apple.com/us/app/if-found-lock-screen-2/id1141408678), to edit my Lock Screen wallpaper and add my contact details to it. I had to do this every time I changed my Lock Screen wallpaper, and the app was last updated in October 2019. Not ideal.

Time to develop my own Lock Screen widget that would display my emergency contact details independently of the wallpaper.

Enter **gjICE**. The _ICE_ in **gjICE** stands for _**I**n **C**ase of **E**mergency_.

The initial development was a breeze. SwiftUI makes UI layout very easy, when it supports what you want to do. In my case it was just 2 rows of text with my emergency contact details hardcoded. That was it. I had a working Lock Screen widget displaying my ICE information.

<img src="/images/blog/2022-10-27-gjice-released-to-the-app-store-2.png" alt="lockscreen widget screenshot" width="300">
<br><br>

I was going to leave it at that and only use the widget for my own personal use, but I decided that it shouldn't take too much effort to turn it into app that could be used by others and released on the App Store. I amended the app to have 3 user entry text fields that would persist their data on the device, added a preview of what the Lock Screen widget would look like, and added an _About_ section and some support screens. SwiftUI makes creating these UI layouts so easy, and within a few days I had a version of the app that I was happy to release to the App Store.

I also took the opportunity to try out implementing some anonymous data analytics. My previous apps on the App Store, [**gjPwd**](/projects/gjPwd) and **gjLists**, don't collect any usage data, meaning I have no idea how my apps are used, what features are popular, what features are never used etc. Having this information available would be useful in planning future maintenance and enhancement releases for my apps.

I had already been looking at a free service that I could use for anonymous data analytics and decided to implement it in **gjICE**. If it got through App Store review and was successful in providing useful data, I could retrofit it to my existing apps and use it in future apps.

[**CountAPI**](https://countapi.xyz) is a free counting service with an API that allows for the creation of simple numeric counters. It advertises itself as an "_IaaS, Integer as a Service_". Put simply, it allows for a counter to be created and incremented/decremented/reset when a specific action is triggered. All counters are accessible if you know the key, and there are no private counters.

In **gjICE** there are 6 counters that are incremented when:
- the app is launched
- the app is brought to the foreground
- the ICE details are read from the device
- the ICE details are saved to the device
- the Credits screen is visited
- the Privacy Policy screen is visited

Each of the counters are global and are used by _ALL_ instances of **gjICE** i.e., whenever a user updates and saves their ICE details the same '_save_' counter is incremented. When I look at the '_save_' counter all I see is a single number, which is the total number of times _ALL_ users of **gjICE** have saved their details. Similarly, whenever a user visits the _Credits_ screen, the '_credits_' counter is incremented, and all I can see is that the _Credits_ screen has been visited, say, 67 times in total by all users of the app.

***The counters are anonymous and aggregated. I cannot associate them with individual users.***

The use of anonymous data analytics in **gjICE** was a bit of an experiment. Apple rightly has strict rules regarding app privacy, and I wasn't sure exactly what I needed to do in order to get through the App Store review. In the end it was quite straightforward. I just needed to declare that usage data was collected but was not linked to a user's identity.

**UPDATE:** _CountAPI_ has since been replaced with [TelemetryDeck](https://telemetrydeck.com) for anonymous data analytics. See [Goodbye CountAPI, Hello TelemetryDeck](/blog/2023-08-31-goodbye-countapi-hello-telemetrydeck)

With everything in place, I submitted **gjICE** for App Store review and **v2022.1** was approved first time. Happy days!

If you want to display your emergency contact details, or up to 3 lines of any information, on your Lock Screen, give **gjICE** a try. It's free and there are no ads. What's not to like? You can download it from the App Store using the link below.
<br><br>

[![download](/images/Download_on_the_App_Store_Badge_US-UK_RGB_blk_092917.svg)](https://apps.apple.com/gb/app/gjice/id6443990092?platform=iphone)
