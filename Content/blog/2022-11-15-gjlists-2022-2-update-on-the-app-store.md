---
date: 2022-11-15 09:41
author: "Gavin Jerman"
subtitle: An article describing an update to gjlists released to the app store.
tags: gjlists, ios, app, app store
---

# gjLists Updated on the App Store

[**gjLists**](/projects/gjLists) has been updated to **v2022.2** on the [App Store](https://apps.apple.com/gb/app/gjlists/id1528217135?platform=iphone).

This is a maintenance release with the following changes:
- Now requires iOS 15.0 or above.
- The _Export_ and _Import_ lists menu options have been moved to the _Settings -> Maintenance_ screen and renamed _Backup_ and _Restore_ lists.
- The _Settings_, _Maintenance_, _Credits_, and _View Log_ screens have been rewritten in [SwiftUI](https://developer.apple.com/xcode/swiftui/). This has significantly reduced the amount of code needed for these screens, and allows them to be more easily shared with my future apps e.g. [**gjNotes**](/projects/gjNotes), which I'm hoping to release to the [App Store](https://apps.apple.com/gb/developer/gavin-jerman/id1528217377) soon.
- Landscape mode is no longer supported on iPhones.
- If enabled in the _Settings -> Maintenance_ screen, the log file stored on the device in the _'gjLists'_ folder has been renamed _'gjLists-log.txt'_.
- Anonymous aggregated counters from [CountAPI](https://countapi.xyz) are used to provide usage data, not linked to you, for private analytics to help understand how the app is used and to support future developments.
<br>

[![download](/images/Download_on_the_App_Store_Badge_US-UK_RGB_blk_092917.svg)](https://apps.apple.com/gb/app/gjlists/id1528217135?platform=iphone)
