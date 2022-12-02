---
layout: page
title: gjLists
permalink: /gjLists
---

{% include slider.html %}

<span style="float: left; line-height: 0px;">
<img width="64" height="64" src="/images/gjLists/gjLists-icon.png">
</span>
<span style="float: left; padding: 25px 0px 0px 17px;">
An iOS app for creating lists.
</span>
<div style="clear: both;"></div>

<div id="gallery">
    <ul id="lightSlider" class="cS-hidden">
        <!-- <li data-src="large"><img src="medium"></li> -->
        <li data-src="/images/gjLists/gjLists-1m.png"><img src="/images/gjLists/gjLists-1s.png" width=256px></li>
        <li data-src="/images/gjLists/gjLists-2m.png"><img src="/images/gjLists/gjLists-2s.png" width=256px></li>
        <li data-src="/images/gjLists/gjLists-3m.png"><img src="/images/gjLists/gjLists-3s.png" width=256px></li>
        <li data-src="/images/gjLists/gjLists-4m.png"><img src="/images/gjLists/gjLists-4s.png" width=256px></li>
        <li data-src="/images/gjLists/gjLists-5m.png"><img src="/images/gjLists/gjLists-5s.png" width=256px></li>
        <li data-src="/images/gjLists/gjLists-6m.png"><img src="/images/gjLists/gjLists-6s.png" width=256px></li>
        <li data-src="/images/gjLists/gjLists-7m.png"><img src="/images/gjLists/gjLists-7s.png" width=256px></li>
        <li data-src="/images/gjLists/gjLists-8m.png"><img src="/images/gjLists/gjLists-8s.png" width=256px></li>
    </ul>
</div>

Use **gjLists** to manage your lists and to-do items using a clean, simple, and intuitive interface.

A list is just a collection of items (names, words, sentences, etc.), but by marking items as done/complete, it can be used as a to-do list.

Creating lists is easy. Tap the ⨁ to add a new list or list item.

Swiping right on an item will mark it as done, either by displaying a checkmark or using strikeout text (the _Strikeout completed items_ setting configures which option is used):
<br>![mark item as done](/images/gjLists/0-done.png){:width="300px"}

Swiping right on a completed item will undo it:
<br>![undo item](/images/gjLists/0-undo.png){:width="300px"}

Swipe left on a list or list item to delete it:
<br>![delete list or item](/images/gjLists/0-delete.png){:width="300px"}

Swipe right on a list to edit the list's name:
<br>![edit list name](/images/gjLists/0-edit.png){:width="300px"}

Rearrange lists and items by tapping, holding, and dragging them.

If you are logged into your iCloud account and the _Sync to iCloud_ setting is on (enabled by default), your lists are saved to iCloud and will be synchronised with all your iCloud devices. If the setting is off, your lists will only be stored locally on your device.

Lists can also be created by pasting them from the device's clipboard. For example, when on the lists screen, selecting the _Paste from clipboard_ option from the ellipsis (…) menu with the following text on the clipboard:
<br>
~~~ plain
[pasted list]
red
orange
yellow
green
blue
indigo
violet
~~~

will create the following list:
<br>
![pasted list](/images/gjLists/0-pasted-list.png){:width="300px"}
<br>
This allows lists to be created in other apps e.g. text editors, either on or off the device, pasted to the device's clipboard e.g. via _Universal Clipboard_ and pasted into **gjLists**. One or more lists may be pasted from the clipboard. The name of the list is taken from the text inside the `[]` and must be on its own line. Each line of text after the list name is taken as a list item, unless it is a multi-line item, see below.

As well as pasting new lists from the clipboard, list items may be pasted from the clipboard and appended to the end of an existing list. For example, when on the list items screen, selecting the _Paste from clipboard_ option from the ellipsis (…) menu with the following text on the clipboard:
<br>
~~~ plain
item one
"item two
on multiple lines"
item three with 'quotes'
[x] item four marked as done
~~~

will add the following items to the list:
<br>
![pasted items](/images/gjLists/0-pasted-items.png){:width="300px"}
<br>Each item must be on its own line, except for multi-line items which must be enclosed in double-quotation marks i.e. `"item"`. Completed items must be prefixed by `[x] ` - note the space after the closing `]`. Again, this allows list items to be created outside of the app and simplifies the creation of large lists or exporting list items from other apps.

The following options are available to configure the behaviour of lists:
- ***Done items at end*** - items marked as done/completed are moved to the end of the list. Default is `No`.
- ***Undo items at start*** - items marked as undone are moved to the beginning of the list. Default is `No`.
- ***New items at end*** - new items are added to the end of the list. Default is `Yes`.

These settings apply to the list for which they were set i.e. each list has its own settings. To configure a list, view it and select the appropriate setting from the ellipsis (…) menu to toggle the setting. Just selecting the ellipsis (…) menu will show the list's current settings.

The following housekeeping options to manage the items in a list are available from the ellipsis (…)  menu when viewing the list:
- ***Mark all items as done*** - any item marked as undone will be marked as done.
- ***Duplicate list*** - the current list is copied into a new list with the same name suffixed with _' - copy'_. This is useful for creating working lists from a master list.
- ***Delete done items*** - all items marked as done are deleted from the list.
- ***Delete all items*** - all items are deleted from the list i.e. the list is emptied.

The following housekeeping options to manage all lists are available:
- ***Delete all lists*** (accessible from the ellipsis (…) menu on the lists screen) - all lists, and their items, are deleted from the device and iCloud (if iCloud syncing is turned on). You will have no lists after confirming this option. ***Use with caution***.
- ***Backup lists*** (accessible from the _Settings -> Maintenance_ screen) - all lists are saved to the selected location in iCloud, a device folder, a shared location etc. Use this to regularly back up your lists. You never know when you will need it.
- ***Restore lists*** (accessible from the _Settings -> Maintenance_ screen) - all existing lists are deleted and replaced with the lists contained in the backup file in the selected location in iCloud, a device folder, a shared location etc. Use this to restore lists from a previous back up. Your existing lists will be replaced after using this option. ***Use with caution***.

**Features:**
- Requires iOS 15.0 or later.
- Designed for iPhone and iPad.
- iCloud list synchronisation across devices.
- Supports system dark and light modes.
- Drag and drop reordering from [SwiftReorder](https://github.com/adamshin/SwiftReorder).
- Anonymous usage statistics from [CountAPI](https://countapi.xyz).
- List icon from [SVG Repo](https://www.svgrepo.com/svg/177/list).

**gjLists** is free, there are no ads, and you can download it from the App Store using the link below. If you find it useful and would like to show your appreciation by dropping some spare coins in the tip jar on the *Settings* screen, it would be most appreciated.

[![download](/images/Download_on_the_App_Store_Badge_US-UK_RGB_blk_092917.svg)](https://apps.apple.com/gb/app/gjlists/id1528217135?platform=iphone)

<br>
<h3 id="privacy">Privacy Policy</h3>

The policy applies to all information collected on **gjLists'** website and our apps for iPhone and any other devices and platforms.

**TL;DR**  
**Your data is your data.**  
**We don’t want to have any of your data.**  
**We don't use trackers.**  
**We can't read your lists.**  

**Information**  
No personal information, location data are collected.

We collect anonymous usage data for private analytics to help understand how the app is used and to support future developments. This is done by incrementing a number whenever you use certain features, but we only do a +1 on aggregated global counters so we have no idea who sent the event.

The usage data are not used for marketing, tracking, advertisement or anything alike.

**iCloud**  
All data syncing is done through Apple’s iCloud service. The only data stored in iCloud are your lists. These data are only accessible by you when using the app on a device logged into your iCloud account.

**Local Storage**  
Your lists are always saved locally on your device, even when iCloud syncing is enabled in the _Settings_ screen. This allows you to access your lists even if iCloud access is not available. Your lists will remain on your device until you delete them within the app, or you delete the app from your device.

**Diagnostics**  
If you turn on _Diagnostics_ in the app's _Settings_ screen (the default setting is off), a log file containing debugging information is written to your device. The log file is written to until you turn off _Diagnostics_, and remains on your device until you delete it. The contents of the log file are never transmitted by the app and remain on your device unless you explicitly share them with someone else. No personal information is saved in the log file.

**Your Consent**  
By using our website or apps, you consent to our privacy policy.

**Contact Us**  
If you have any questions regarding this privacy policy, you may email [jermware@mac.com](mailto:jermware@mac.com).

**Changes to this Policy**  
If we decide to change our privacy policy, we will post those changes on this page. Summary of changes so far:

- November 30, 2021: First published.
- October 23, 2022: Added 'We don’t want to have any of your data' to the **TL;DR** section.
- November 11, 2022: Added 'We collect anonymous usage data...' to the **Information** section.

<br>
##### November 11, 2022
