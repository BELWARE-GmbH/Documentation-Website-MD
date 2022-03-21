---
title: "Incoming calls/CTI client"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### Working with CTI for STARFACE

### Incoming calls and the CTI client
The Connector 365 CTI for STARFACE app automatically opens the contact card of the calling person for incoming calls. For this process to work smoothly, two things need to be taken care of.

1. The phone number of the person calling is stored in a contact. If this is not the case, only the unknown number is displayed and a follow up action happens depending on your user setup.

2. The **"CTI Client"** must be open, the client is the core of the Connector 365 CTI for STARFACE App and is mandatory. You can open the client in the Role center via a dedicated button, alternatively you can find it using the search function under **"CTI Client "**. You can also open the client in another window so that it does not hinder you in your further work.

In case you accidentally close the client, you will be briefly warned before closing it.

![](images/apps/cticlientRole centeren.PNG)

If there is an incoming call, this is displayed in the client, all users in the same group can see who is being called and what the current status of the call is. At the same time, an entry is written in the job list and the contact card for the corresponding contact is opened, if it exists.

![](images/apps/cticlientde.png)

### Behavior when numbers do not exist
If the system detects that a number is not yet stored in the system, an action is automatically triggered depending on the user's setup.

![](images/apps/cticlientunknown.jpg)

The following choices exist and are set in the user setup

**Empty/None**
No follow-up action is triggered for unknown numbers.

**Question**
The user is asked if he wants to create a contact for the unknown number. If confirmed, the corresponding dialog will be opened.

**Create contact**
The system automatically creates a new contact and the corresponding dialog opens.


