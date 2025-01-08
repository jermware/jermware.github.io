---
date: 2023-08-31 13:32
author: "Gavin Jerman"
subtitle: An article describing switch from countapi to telemetrydeck.
tags: telemetrydeck, ios, app, app store
layout: BlogPost
---

# Goodbye CountAPI, Hello TelemetryDeck

With the release of [**gjICE**](/projects/gjICE) in October 2022 I started using the free counting service [CountAPI](https://countapi.xyz) (link likely to 404 in the future) to collect anonymous usage data for private analytics to help understand how my apps are used and to support future developments.

Unfortunately, some months ago I noticed that CountAPI was not responding to the http calls to increment my counters. At first it looked like an intermittent problem with their API server, but it soon became obvious that the problem was terminal and it was unlikely to be resolved any time soon, if at all. It was time to look for an alternative, more robust and, ideally free, solution for gathering anonymous usage data. Enter [TelemetryDeck](https://telemetrydeck.com).

**TelemetryDeck's** tagline is "_light-weight app analytics that’s not evil_", with the sub-headline "_TelemetryDeck helps app and web developers improve their product by supplying immediate, accurate usage data while users use their app. And the best part: It's all anonymized so users' data stays private!_".

This is just what I was looking for and allows me to send 100,000 'signals' per month for free. If I need more than that then my apps are doing really well and I might have to consider charging for them to cover the cost of upgrading to the paid plan that allows up to 1.5 million signals a month. I'll cross that bridge _if_ I come to it.

**TelemetryDeck** provides a Swift API making it much simpler to call than CountAPI's https interface, and the online dashboard to summarise and query the usage data is excellent. All in all, **TelemetryDeck** is a vast improvement over **CountAPI**.

As of today, all of my apps on the [App Store](https://apps.apple.com/gb/developer/gavin-jerman/id1528217377) have been updated to use **TelemetryDeck**.

Happy days.
