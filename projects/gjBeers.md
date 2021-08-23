---
layout: page
title: gjBeers
permalink: /gjBeers
---

{% include slider.html %}

<span style="float: left; line-height: 0px;">
<img width="64" height="64" src="/images/gjBeers/gjBeers-icon.png">
</span>
<span style="float: left; padding: 17px 0px 0px 17px;">
An iOS app for cataloging real ales.
</span>
<div style="clear: both;"></div>

<div id="gallery">
    <ul id="lightSlider" class="cS-hidden">
        <!-- <li data-src="large"><img src="medium"></li> -->
        <li data-src="/images/gjBeers/gjBeers-1l.png"><img src="/images/gjBeers/gjBeers-1m.png" width=256px></li>
        <li data-src="/images/gjBeers/gjBeers-2l.png"><img src="/images/gjBeers/gjBeers-2m.png" width=256px></li>
        <li data-src="/images/gjBeers/gjBeers-3l.png"><img src="/images/gjBeers/gjBeers-3m.png" width=256px></li>
        <li data-src="/images/gjBeers/gjBeers-4l.png"><img src="/images/gjBeers/gjBeers-4m.png" width=256px></li>
        <li data-src="/images/gjBeers/gjBeers-5l.png"><img src="/images/gjBeers/gjBeers-5m.png" width=256px></li>
        <li data-src="/images/gjBeers/gjBeers-6l.png"><img src="/images/gjBeers/gjBeers-6m.png" width=256px></li>
        <li data-src="/images/gjBeers/gjBeers-7l.png"><img src="/images/gjBeers/gjBeers-7m.png" width=256px></li>
        <li data-src="/images/gjBeers/gjBeers-8l.png"><img src="/images/gjBeers/gjBeers-8m.png" width=256px></li>
        <li data-src="/images/gjBeers/gjBeers-9l.png"><img src="/images/gjBeers/gjBeers-9m.png" width=256px></li>
        <li data-src="/images/gjBeers/gjBeers-10l.png"><img src="/images/gjBeers/gjBeers-10m.png" width=256px></li>
        <li data-src="/images/gjBeers/gjBeers-11l.png"><img src="/images/gjBeers/gjBeers-11m.png" width=256px></li>
        <li data-src="/images/gjBeers/gjBeers-12l.png"><img src="/images/gjBeers/gjBeers-12m.png" width=256px></li>
        <li data-src="/images/gjBeers/gjBeers-13l.png"><img src="/images/gjBeers/gjBeers-13m.png" width=256px></li>
        <li data-src="/images/gjBeers/gjBeers-ipad-3l.png"><img src="/images/gjBeers/gjBeers-ipad-3m.png" width=760px></li>
        <li data-src="/images/gjBeers/gjBeers-ipad-2l.png"><img src="/images/gjBeers/gjBeers-ipad-2m.png" width=346px></li>
    </ul>
</div>

**gjBeers** is my third iOS app. It is written fully in [Swift](https://swift.org) and uses no third-party libraries.

It was developed to solve a specific requirement. To replace my manual system i.e., spreadsheet, for recording the date, location, and tasting notes for new [real ales](https://en.wikipedia.org/wiki/Real_ale) I drink.

When I drink a new ale I take a photo of the pump clip, or the actual pint if the pump clip is not available, with my iPhone. The app uses the photo's [EXIF](https://en.wikipedia.org/wiki/Exif) data to give the date, time, and location, and I enter the name, brewery, rating, and tasting notes for the beer.

The app does not store the photo of the beer, only a reference to the image in the phone's photo library. This eliminates the significant storage overhead of duplicating the photos but makes restoring the beer collection to a new device difficult. I have a workable solution for this but it is not particularly user friendly and I have yet to find a way to automate this. Does anyone know how to programmatically rename a photo in an iOS photo library e.g., from a device assigned name of _IMG_3622.HEIC_ to _Mosaic - Arbor.HEIC_?

The collection is searchable by beer name and sortable by name, date, brewery, and rating. It is viewable as an image gallery, as a list of beer names, as a list of brewery names, or as a ratings list. From these lists it is possible to view the beer's details.

Various reports can be viewed and copied to the clipboard for exporting to other apps or devices. The CSV report is particularly useful for exporting the collection into a spreadsheet. Options exist to backup/restore the collection to/from iCloud, and the collection can be emptied or populated from the images in a photo library album named _Beers_.

It is very unlikely I will ever release this app to the [App Store](https://www.apple.com/uk/app-store/). It was designed for my specific requirements, and I have no intention of making it more generic to suit other people's needs. Also, the restoring of the collection onto a new device is possible but complicated and would be a support headache.

Notes:

- Written in Swift, uses no third-party libraries.
- Coding started in November 2019, code 'complete' June 2020. Various tweaks since but unlikely to be anymore unless future iOS versions break the app.
- Supports system dark and light modes.
- Beer glass icon by [Freepik](https://www.freepik.com) from [Flaticon](https://www.flaticon.com/free-icon/alcohol_1764407).
- Custom rating control based on [RatingView](https://github.com/shantaramk/RatingView).
- Zoomable and scrollable image viewer based on [ImageScrollView](https://github.com/huynguyencong/ImageScrollView).

<br/>

##### August 23, 2021
