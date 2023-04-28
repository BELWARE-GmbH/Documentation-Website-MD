---
title: "Upgrade of communication matrix (CON Communication Matrix)"
date: 2020-02-28T00:00:00+09:00
description: 
draft: false
collapsible: false
weight: 6
---

## Upgrade of communication matrix (CON Communication Matrix)

### Introduction

Please check the [prerequisites](/en-us/apps/connector-upgrade/first-steps/introduction) before proceeding.

The communication matrix of the Connector NAV/BC contains, if maintained, setup data that determines if and how documents for individual customers, vendors or contacts are processed. 
In the product series ***Connector 365*** (Business Central versions > 14), the communication matrix is no longer available as a separate table.
Instead, the ***Document Layouts*** are used for similar facilities.

The **Connector Upgrade** app provides a feature to synchronize facility data of the communication matrix with the document layouts.
It should be noted that the number of fields to be transferred depends in part on which ***Connector 365*** apps are installed at the time of the upgrade.
For example, the ***Ident-Id*** (XRechnung module) from the communication matrix will only be transferred if the ***Connector 365 XRechnung*** app is installed.
The following explains the steps that need to be taken to upgrade the communication matrix to the document layouts.

### Perfrom upgrade

{{< notice warning Important >}}
When transferring the communication matrix, it is assumed that customers and vendors that are entered in the communication matrix,
can be addressed with the same number in the Business Central environment.
{{</ notice >}}
<br>

Make sure that the desired ***Connector 365 Apps*** are installed.
Then navigate via the search bar to the ***Connector 365 setup***.

|![](/images/apps/Upgrade%20App/connector_einrichtung_suche.png)|
|-|

On the ***Connector 365 Setup*** page, click ***Actions***.
There should be a button ***Transfer Communication Matrix*** visible.

|![](images/apps/Upgrade%20App/connector_transferiere_matrix.png)|
|-|

A new page will then open.
|![](images/apps/Upgrade%20App/connector_transfer_dialog.png)|
|-|

On this page all report IDs are collected, which are entered in the communication matrix.
Here you have the possibility to set which reports you want to transfer in detail. You can also define to which usage and to which report-Id the respective entries are assigned.
The following fields are visible:

|Field|Explanation|
|-|-|
|Transfer entry|Specifies whether entries with the report ID [From report ID] are to be transferred. Place a check mark if you want to transfer entries of the corresponding report.
|From Report ID|Specifies a report ID that was found in the communication matrix.
|Jobmode|Specifies the jobmode for the report ID [From report ID] from the communication matrix. {{< notice info "Note on XInvoice">}}The communication matrix of the Connector NAV/BC allowed for XRechnung combinations with the job modes ***PDF*** and ***Email***. To represent this combination they are appended in brackets to the XRechnung job mode. Example: ***XRechnung (PDF)*** {{</ notice >}} |
|To Usage|Indicates for which usage the entry from the communication matrix will be transferred to the document layouts. If the usage is found based on the report selections, it will be preset|
|To report id|Indicates for which report id the entry to be transferred will be transferred. By default, the report Id found from the communication matrix is used|.

{{< notice warning Wichtig>}}
To map the dimension of the different job modes in the ***Connector 365 Apps***, the ***Connector 365 Easy Batch App*** is required.
This extends the document layouts by the entry ***job mode*** and enables batch dispatch analogous to the functionality from Connector NAV/BC.
<br>
If the ***Connector 365 Easy Batch*** app is ***not*** installed on the system, you may get duplicates in the document layouts, each of which does not add any new functionality. 
In this case it is recommended to select exactly those entries which are needed for future processing.
{{</ notice >}}

<br>

Click OK if you want to start the transfer.

When the transfer is finished, a message appears:

|![](images/apps/Upgrade%20App/matrix_transfer_beendet.png)|
|-|