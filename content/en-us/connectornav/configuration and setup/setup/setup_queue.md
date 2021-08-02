---
title: "Task queue setup"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 6
---

#### Setting up a task queue for background processing

The task queue setup is located in the menu under Administration-> IT Administration-> Application Setup-> Task Queue.

![](/images/connectornav/einrichtung_queue.png)<center>_Microsoft Dynamics NAV, task queue_</center>

To execute Connector NAV server jobs, a task queue item is created with the corresponding code unit 5402516. For this item to run, a task queue with corresponding service must be created. There are several ways to do this. In the following example, a task queue is created with the administrator user without any further setup on the server.

##### The task queue
![](/images/connectornav/einrichtung_queue2.png)<center>_Microsoft Dynamics NAV, task queue_</center>

In the overview, a new task queue can be created via the action -> New. The map shown above opens. The following settings can be created as an example:

|Field describtion | |
|---|---|
|Code        | Name of the task queue                      |
|Describtion | A describtion for the task queue (optional).|
|Automatically boot from NAS | This option requires that a corresponding service is set up for the NAS (not used in this example).|
|Start on this NAS computer  | Select NAS computer from the overview where the task queue should start.                           |
|Launch in this NAS instance | Select NAS instance (service) from the overview where the task queue should start.                 |

Then the task queue is started via the Start action and the following information is displayed:

|Field describtion | |
|---|---|
|Started          | Shows wether the task queue was started              |
|Last heartbeat   | Shows at what time the task queue was last active    |
|ServerinstanceID | Shows in which instanceID the task queue is running. |
|SessionID        | Shows the SessionID.                                 |
|Execution as userID<br />Execution on servercomputer<br />Execution in serverinstance | FlowFields, shows the settings from the NAS Settings tab.|

Then a background user for Microsoft Dynamics NAV is created, which is used for the task queue item.

##### The task queue item 

In the overview a new task queue item can be created via the action -> New. The upper map opens. The following settings can be created as an example:

###### Register general
![](/images/connectornav/einrichtung_queue_reg_allgemein.png)<center>_Microsoft Dynamics NAV, task queue item_</center>

|Field describtion | |
|---|---|
|Type of object to be executed | Selection between: Report, Codeunit. In this case, a code unit.|
|ID of object to be executed   | ObjektID, in this case 5402516.|
|Describtion | Describtion of the task queue item (optional).|
|Maximum number of execution attempts | Specifies the number of execution attempts in case of an error.|
|Last Ready Status | Indicates when the task queue item was last active.|
|Earliest start date/time | A combination of date and time can be entered here when the task queue item should start (optional).|
|Expiration date/time | Here you can enter an expiration date when the task queue item should end (optional).|
|Priority | If there are several items, a priority can be set here.|
|Status | Shows the status of the task queue item.|

###### Register repition
![](/images/connectornav/einrichtung_queue_reg_wiederholung.png)<center>_Microsoft Dynamics NAV, task queue item_</center>

Here you can set when the task queue item should be executed. A combination of weekdays, start and end time are possible. Furthermore, it must be specified in which period (number in minutes) the item should repeat. If the e-mails or faxes are sent promptly, a short expiration period is recommended as in the example shown above.