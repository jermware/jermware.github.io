---
date: 2026-05-24 17:31
author: "Gavin Jerman"
subtitle: An article describing my third macos app released to the app store.
tags: gjgpxpreview, macos, app, app store, claude, quicklook
image: /images/blog/2026-05-25-gjgpxpreview-released-to-the-app-store-1.png
layout: BlogPost
published: true
---

# gjGPXPreview Is on the App Store

[**gjGPXPreview**](/projects/gjGPXPreview) is my third macOS app released on the [App Store](https://apps.apple.com/app/gjgpxpreview/id6769827229).

<img src="/images/blog/2026-05-25-gjgpxpreview-released-to-the-app-store-1.png" alt="gjGPXPreview screenshot" width="384">
<br><br>

During the development of [**gjRoutes**](/projects/gjRoutes), my multi-route [GPX](https://en.wikipedia.org/wiki/GPS_Exchange_Format) viewer for macOS, iPadOS, and iOS, I often found myself wanting to quickly peek at the contents of a GPX file on my Mac before loading it into **gjRoutes** for testing. On macOS there's a great solution for this called [Quick Look](https://support.apple.com/en-gb/guide/mac-help/mh14119/mac) — but nothing I had installed supported it for GPX files, so I decided to write my own.

Once again, I called on [Claude](https://claude.ai) to help with the code. My original plan was to build a standalone proof-of-concept that could preview GPX files via Quick Look, with the intention of eventually folding it into **gjRoutes**. But once it was working and feature-complete, it struck me that a lightweight standalone app might actually be more useful to more people than something tucked away inside a full GPX viewer.

And so, **gjGPXPreview** was born. Claude did the heavy lifting on the code but, unlike [**gjPDFs**](/projects/gjPDFs), I did write and tweak some of it myself. One interesting difference from **gjRoutes**: rather than using the excellent [CoreGPX](https://github.com/vincentneo/CoreGPX) package, Claude opted to roll its own GPX parser — and it works really well.

If you work with GPX files and want to quickly check their contents without firing up a full app, grab **gjGPXPreview** from the link below and give it a go. Hopefully you'll think it's worth the small fee — and if you enjoy it, a review would be much appreciated. Thanks!
<br><br>

[![download](/images/Download_on_the_Mac_App_Store_Badge_US-UK_RGB_blk_092917.svg)](https://apps.apple.com/app/gjgpxpreview/id6769827229)
