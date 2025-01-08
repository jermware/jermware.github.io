---
date: 2024-07-16 06:03
author: "Gavin Jerman"
subtitle: My fourth iOS app.
tags: gjlists, ios, app store
layout: ProjectPost
---

# gjLists

<br><br>
<img width="64" height="64" src="/images/gjLists/gjLists-icon.png">
&nbsp;&nbsp;An iOS app for creating lists.

Use **gjLists** to manage your lists and to-do items using a clean, simple, and intuitive interface.

A list is just a collection of items (names, words, sentences, etc.), but by marking items as done/complete, it can be used as a to-do list.

Creating lists and items is easy. Enter the name in the _New list/item_ field and tap _Done_. 

Swiping right on an item will mark it as done, either by displaying a checkmark or using strikeout text (the _Strikeout completed items_ setting configures which option is used):

<img src="/images/gjLists/0-done.png" alt="mark item as done" width="300">
<br><br>

Swiping right on a completed item will undo it:

<img src="/images/gjLists/1-undo.png" alt="undo item" width="300">
<br><br>

Swipe left on a list or item to delete it:

<img src="/images/gjLists/2-delete.png" alt="delete list or item" width="300">
<br><br>

Tap on _More..._ in a list to edit the list's name:

<img src="/images/gjLists/3-more.png" alt="edit list name" width="300">
<br><br>
<img src="/images/gjLists/4-name.png" alt="edit list name" width="300">
<br><br>

Tap on the list's ⚙ to edit its settings:

<img src="/images/gjLists/5-settings.png" alt="edit list name" width="300">
<br><br>

Rearrange lists and items by tapping, holding, and dragging them.

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

<img src="/images/gjLists/6-pasted-list.png" alt="pasted list" width="300">
<br><br>

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

<img src="/images/gjLists/7-pasted-items.png" alt="pasted items" width="300">
<br><br>

Each item must be on its own line, except for multi-line items which must be enclosed in double-quotation marks i.e. `"item"`. Completed items must be prefixed by `[x] ` - note the space after the closing `]`. Again, this allows list items to be created outside of the app and simplifies the creation of large lists or exporting list items from other apps.

The following options are available to configure the behaviour of lists:
- ***Add new items to end*** - new items are added to the end of the list. Default is `Yes`.
- ***Move done items to end*** - items marked as done/completed are moved to the end of the list. Default is `No`.
- ***Move undo items to start*** - items marked as undone are moved to the beginning of the list. Default is `No`.

These settings apply to the list for which they were set i.e. each list has its own settings.

The following housekeeping options to manage the items in a list are available from the ellipsis (…)  menu when viewing the list:
- ***Mark all items as done*** - any item marked as undone will be marked as done.
- ***Mark all items as not done*** - any item marked as done will be marked as undone.
- ***Duplicate list*** - the current list is copied into a new list with the same name suffixed with _' - copy'_. This is useful for creating working lists from a master list.
- ***Delete done items*** - all items marked as done are deleted from the list.
- ***Delete all items*** - all items are deleted from the list i.e. the list is emptied.

The following housekeeping options to manage all lists are available:
- ***Delete all lists*** (accessible from the ellipsis (…) menu on the lists screen) - all lists, and their items, are deleted from the device and iCloud. You will have no lists after confirming this option. ***Use with caution***.
- ***Backup lists*** (accessible from the _Settings -> Maintenance_ screen) - all lists are saved to the selected location in iCloud, a device folder, a shared location etc. Use this to regularly back up your lists. You never know when you will need it.
- ***Restore lists*** (accessible from the _Settings -> Maintenance_ screen) - all existing lists are deleted and replaced with the lists contained in the backup file in the selected location in iCloud, a device folder, a shared location etc. Use this to restore lists from a previous back up. Your existing lists will be replaced after using this option. ***Use with caution***.

If you are logged into your iCloud account, your lists are saved to iCloud and will be synchronised with all your iCloud devices. Otherwise, your lists will only be stored locally on your device.

**Features:**
- Requires iOS 17.5 or later.
- Designed for iPhone and iPad.
- Swipe actions to delete lists/items and mark items as done/undone.
- Strikeout completed/done items or mark with a checkmark.
- Drag to rearrange lists and items.
- Copy lists and items to and from the clipboard.
- Duplicate lists.
- No limit on the number of lists or items in a list.
- Backup and restore your lists.
- iCloud list synchronisation across devices.
- Supports system dark and light modes.

**gjLists** is free, there are no ads, and you can download it from the App Store using the link below. If you find it useful and would like to show your appreciation by dropping some spare coins in the tip jar on the *Settings* screen, it would be most appreciated.

[![download](/images/Download_on_the_App_Store_Badge_US-UK_RGB_blk_092917.svg)](https://apps.apple.com/gb/app/gjlists/id1528217135?platform=iphone)

<br><h5 id="privacy">Privacy Policy</h5>

The policy applies to all information collected on **gjLists'** website and our apps for iPhone and any other devices and platforms.

**TL;DR**  
**Your data is your data.**  
**We don’t want to have any of your data.**  
**We don't use trackers.**  
**We can't read your lists.**  

**Information**  
No personal information or location data are collected.

We use [TelemetryDeck](https://telemetrydeck.com) to collect anonymized usage data. This helps us understand how our users are using our app and how we can improve it. TelemetryDeck does not collect any personally identifiable information. You can read more about TelemetryDeck’s privacy policy [here](https://telemetrydeck.com/privacy).

The usage data are not used for marketing, tracking, advertisement or anything alike.

**iCloud**  
All data syncing is done through Apple’s iCloud service. The only data stored in iCloud are your lists. These data are only accessible by you when using the app on a device logged into your iCloud account.

**Local Storage**  
Your lists are always saved locally on your device, even when iCloud syncing is enabled in the _Settings_ screen. This allows you to access your lists even if iCloud access is not available. Your lists will remain on your device until you delete them within the app, or you delete the app from your device.

**Your Consent**  
By using our website or apps, you consent to our privacy policy.

**Contact Us**  
If you have any questions regarding this privacy policy, you may email [jermware@mac.com](mailto:jermware@mac.com).

**Changes to this Policy**  
If we decide to change our privacy policy, we will post those changes on this page. Summary of changes so far:

- November 30, 2021: First published.
- October 23, 2022: Added 'We don’t want to have any of your data' to the **TL;DR** section.
- November 11, 2022: Added 'We collect anonymous usage data...' to the **Information** section.
- August 30, 2023: Removed the **Diagnostics** section since the _Diagnostics_ option in the app's _Settings_ screen is no longer available. Removed the reference to global counters in the **Information** section.
- February 11, 2024: Added reference to TelemetryDeck.
