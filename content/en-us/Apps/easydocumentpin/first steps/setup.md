---
title: "Setup"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 4
---
### First steps

### Setup

##### Permission sets
Before you start the setup, you need to assign new permission sets to the users of the app. In doing so, we provide the following:

- **CON365, VIEW**
    This basically allows users to interact with the app and send receipts with automatic attachments.

- **CON365, EDIT**
    In the case of the Easy Document Pin app, this set provides the same permissions as **VIEW**.

- **CON365, SETUP**
    This permission set is necessary to make changes to the app setup and should be assigned to the administrator.


##### Connector 365 Setup
Open the search function and search for **Connector 365 setup** and open it. In the setup window, there is a separate section for the Connector 365 Easy Document Pin App.

The setup can be set up at two levels - **Global** or per **Reminder Method**.

![](images/apps/edpsetupen.PNG)

**Global**
To enable automatic sending of dunned invoices **global**, check **Append invoice document when sending Reminder notice [Global]**, then you still need to specify under **Append invoice document when Reminder level [Global]** from when the invoices will be sent automatically.

**Reminder method**
If you prefer to have one setup per **Reminder Method**, do not check the box in Global Setup, this will allow you to edit the **Setup per Reminder Method**. Click on **Reminder method setup** and then on **Refresh Reminder method rows** to automatically copy your Reminder methods to the rows in the table. After that you have to define from which Reminder level invoices should be attached and if they should be addressed at all, in case you have Reminder methods where automatic sending is not desired.


After you have completed the setup, you can start working with Easy Document Pin.

