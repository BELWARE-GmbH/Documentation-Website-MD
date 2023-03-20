---
title: "Connector 365 Einrichtung"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---
### Setup

#### Base App in the Connector 365 Setup

You can use the search function of Business Central to access the Connector 365 setup:
![](/images/apps/Base/search_connector_setup_en.png)

There you will find two switches to set up the Base App:
![](/images/apps/Base/base_setup_en.png)

The switch "Save Files in Joblist" determines whether documents created with the Connector 365 are saved in the activity list of the Connector 365. If the switch is activated, the reports are stored as files in the Business Central database and can be accessed via the activity list. If the resulting consumption of memory shall be avoided, this option can be deactivated. Processes triggered via the Connector 365 are then logged in the activity list without associated documents.

The "Email Protocol" button can be used to select whether e-mails sent via the Business Central Standard are also logged in the activity list of the Connector 365.
