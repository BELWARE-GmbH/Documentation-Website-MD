---
title: "Introduction"
date: 2020-02-28T00:00:00+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### First steps

### Introduction

The Upgrade App was developed for customers who are upgrading from a system up to BC14 to a newer Business Central version and are also upgrading from the Connector NAV/BC to the Connector 365 Apps.
As there are differences in the technical implementation between the Connector NAV/BC and the Connector 365 Apps, it is necessary to transfer the table data belonging to the Connector NAV/BC to the new tables of the Connector 365 Apps.
This transfer is the task of the Upgrade App.
In detail, the following data is transferred:
- Contents of the old feedback table into the new feedback table, in order to be able to display status messages for archived operations.
- Entries from the old joblist into the new activity list in order to continue to have archived operations available
- Settings from the communication matrix of Connector NAV/BC into the document layouts of the Business Central Standard

It is assumed that the table data of the Connector NAV/BC (tables: ***CON \****) have been transferred from Navision/Business Central (<=BC14) to the database of the current BC version.


### Requirements

The following prerequisites are required to install and run the ***Connector Upgrade*** app:
* At least the ***Connector 365 Base*** app is successfully installed. (It is recommended that all ***Connector 365 Apps*** to be used in the future are installed prior to the upgrade).
* All Connector NAV/BC tables from the older NAV/BC installation (<=BC14) are included in the SQL database of the new Business Central version.
* The client or clients from the older NAV/BC installation for which data is to be transferred are present in the new Business Central version.
* If you wish to take over the Connector NAV/BC communication matrix, customers and vendors from the older versions should also exist in Business Central and be accessible via the same numbers.