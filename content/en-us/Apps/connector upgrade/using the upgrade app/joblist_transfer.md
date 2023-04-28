---
title: "Upgrade of joblist(CON Joblist)"
date: 2020-02-28T00:00:00+09:00
description:
draft: false
collapsible: false
weight: 5
---

### Upgrade from Connector 365 setup

Please check the [prerequisites](/en-us/apps/connector-upgrade/first-steps/introduction) before proceeding.

The ***Joblist*** logs all activities performed as part of the Connector NAV/BC functions.
The ***Connector 365 Apps*** use a similar table (***Connector 365 Activities***) to record any activities.
However, as the two tables are not identical, a process is required to transfer the data from the ***Joblist*** to the ***Connector 365 Activities*** list.

The ***Connector 365 Upgrade*** app provides a function for data synchronisation.

When the data transfer function is activated, each entry in the ***Joblist*** is gradually transferred to the ***Connector 365 Activities***.

If the process is terminated prematurely, e.g. due to server problems, the process can be repeated as desired. In this case, the process is not completely restarted, but continues after the last successfully transferred data record. Even in the case of multiple unexpected terminations, this procedure can be repeated until all data sets have been successfully transferred.

{{< notice info hint >}}
If the amount of data to be transferred is very large, the upgrade may take a long time to complete.
It is therefore recommended to schedule the upgrade outside business hours and that sufficient time resources are available for the execution.
{{</ notice >}}

### What data is taken into account during the upgrade?

During the upgrade, all field contents that are available in both the ***Activities*** list and the ***Connector NAV/BC Joblist*** are transferred.
In addition, other tables are taken into account, which are directly related to the ***Joblist***:
* <u>Status Feedback</u> (***Table CON Feedback***):
    Any number of status feedbacks can be assigned to each ***Joblist*** entry. In the course of the upgrade, all ***CON Feedback*** entries are transferred to the ***BEL365 Feedback Entry*** table. This way, the status information of the ***Joblist*** ('+', '-') remains available.
* <u>File Attachments</u> (***Table CON File***):
    In addition to status information, an entry in the ***joblist*** can contain any number of attachments. These will also be transferred during the upgrade.
    The target for the attachments in the ***Connector 365*** series is the ***BEL365 Activity Entry File*** table.

### Perform upgrade


{{< notice warning Important >}}
The ***Connector NAV/BC job list*** is company independent. However, the ***Connector 365 Activities*** table is company specific.
This means that when transferring the ***Joblist***, the current company is filtered. If there is a wish to transfer the complete ***Joblist*** and there are several companies, the following process must be executed once per company.
{{< /notice >}}

<br>

You can use the Business Central search function to access the Connector 365 setup:
|![](/images/apps/Upgrade%20App/en/connector-setup-suche.png)|
|-|

Here you will find in the menu "Actions"
|![](/images/apps/Upgrade%20App/en/connector_einrichtung_aktionen.png)|
|-|

the button ***Transfer Joblist***
|![](/images/apps/Upgrade%20App/en/button_transferiere_jobliste.png)|
|-|

As soon as the process is completed, a corresponding message appears. It will also note, if an update has been completetd before.

|![](/images/apps/Upgrade%20App/en/joblist_transfer_beendet.png)|
|-|

To view the activities list, type ***Connector 365 Activities*** in the search bar:

|![](/images/apps/Upgrade%20App/en/aktivitäten_suche.png)|
|-|