---
title: "Manual recording of CTI entries"
date: 2023-10-05
description: 
draft: false
collapsible: false
weight: 5
---
# Manual recording of CTI entries

Under certain circumstances, there are use cases in which telephone calls are handled outside of STARFACE, e.g. via mobile communication.
In the case of phone calls that are of interest for various business processes, there may be a desire to log them in the same way as STARFACE phone calls.
For this purpose, the **Connector 365 CTI for STARFACE** app offers a function that allows manual CTI entries to be recorded in the **Connector 365 Activities** list. In doing so, you can enter common properties such as the call duration or the contact that was called.
Below you will learn how to manually enter CTI entries using the **Connector 365 CTI for STARFACE** app.

## How to record CTI entries manually

To access the manual recording feature, navigate to the **Connector 365 Activities** page.

|![](images/apps/cti_starface/en/search-con365-activities.png)|
|-|

Now search and activate the action **Create Telephony Entry**. You can find this action in the menu bar.

|![](images/apps/cti_starface/en/action-create-cti-entry.png)|
|-|

When the action is activated, the following page opens:

|![](images/apps/cti_starface/en/create-cti-entry-dialog.png)|
|-|

The page contains the following fields:

| Field | Meaning |
|-|-|
| **Contact no.** | The number of the contact with whom a telephone connection was established. |
| **Accepted At** | The time when the phone call started. By default, the current time is entered. Of course, you can also select a time in the past at this point. |
| **Direction** | Specifies whether the call is incoming or outgoing. |
| **Call Duration** | Specifies the duration of the call in hours. |
| **Subject** | Specifies the subject of the call. |

Now enter the information that applies to the phone call you want to log.
Then click **OK** to confirm and save your entry.

|![](images/apps/cti_starface/en/confirm-cti-entry.png)|
|-|

After successful confirmation, a new CTI entry with the entered properties has been created under **Connector 365 Activities**.

|![](images/apps/cti_starface/en/activity-cti-entry-in-list.png)|
|-|