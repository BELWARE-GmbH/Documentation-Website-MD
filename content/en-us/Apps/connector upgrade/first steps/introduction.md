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

The Upgrade App was developed for customers who are upgrading from a system up to BC14 to a newer Business Central version and who are also upgrading from the Connector NAV/BC to the Connector 365 Apps.
Since there are differences in the technical implementation between the Connector NAV/BC and the Connector 365 Apps, it is necessary to transfer the table data belonging to the Connector NAV/BC to the new tables of the Connector 365 Apps.
This transfer is the task of the Upgrade App.
In detail, the following data will be transferred:
- Contents of the old confirmation table into the new confirmation table, in order to be able to display status messages for archived operations.
- Entries from the old job list to the new activity list in order to still have archived operations available
- Settings from the communication matrix of the Connector NAV/BC into the document layouts of the Business Central standard