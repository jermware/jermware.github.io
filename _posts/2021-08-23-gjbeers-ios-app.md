---
title: "gjBeers - My Third iOS App"
description: an article describing my third ios app
author: "Gavin Jerman"
categories: ios app swift
layout: post
published: true
---

[**gjBeers**](/gjBeers) is an iOS app for cataloging real ales.

<img width="384" src="/images/2021-08-23-gjbeers-ios-app-1.png"/>


This is my third iOS app. It is written fully in [Swift](https://swift.org) and uses no third-party libraries.

It was developed to solve a specific requirement. To replace my manual system i.e. spreadsheet, for recording the date, location, and tasting notes for new [real ales](https://en.wikipedia.org/wiki/Real_ale) I drink.

When I drink a new ale I take a photo of the pump clip, or the actual pint if the pump clip is not available, with my iPhone. The app uses the photo's [EXIF](https://en.wikipedia.org/wiki/Exif) data to give the date, time, and location, and I enter the name, brewery, rating, and tasting notes for the beer.

The app does not store the photo of the beer, only a reference to the image in the phone's photo library. This eliminates the significant storage overhead of duplicating the photos but makes restoring the beer collection to a new device difficult. I have a workable solution for this but it is not particularly user friendly and I have yet to find a way to automate this. Does anyone know how to programmatically rename a photo in an iOS photo library e.g. from a device assigned name of _IMG_3622.HEIC_ to _Mosaic - Arbor.HEIC_?

The collection is searchable by beer name and sortable by name, date, brewery, and rating. It is viewable as an image gallery, as a list of beer names, as a list of brewery names, or as a ratings list. From these lists it is possible to view the beer's details.

Various reports can be viewed and copied to the clipboard for exporting to other apps or devices. The CSV report is particularly useful for exporting the collection into a spreadsheet. Options exist to backup/restore the collection to/from iCloud, and the collection can be emptied or populated from the images in a photo library album named _Beers_.

It is very unlikely I will ever release this app to the [App Store](https://www.apple.com/uk/app-store/). It was designed for my specific requirements, and I have no intention of making it more generic to suit other people's needs. Also, the restoring of the collection onto a new device is possible but complicated and would be a support headache.

Coding started in November 2019, code 'complete' June 2020. Various tweaks since but unlikely to be anymore unless future iOS versions break the app.
