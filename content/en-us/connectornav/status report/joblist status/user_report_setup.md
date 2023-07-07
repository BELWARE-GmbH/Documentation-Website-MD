---
title: "User report setup"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---

#### The Connector NAV user report setup

Sending faxes from Dynamics NAV is possible from any page, in the following an offer is used as an example.

![](/images/connectornav/status/ben_ber_einr.png)<center>Connector NAV user report setup, register general</center>

For sending status messages, a record is created in the user report setup with the following parameters:

|Field describtion | |
|---|---|
| User          | Empty                                  |
| Language      | Empty                                  |
| ReportID      | 0                                      |
| Bodytext file | Bodytext file for the Status feedback. |
| HTML bodytext | Yes if the bodytext is a HTML file.    |

Example of a bodytext:

The job was no sent. Please check the process.

Error from feedback: %17  
Job number: %18  
Status: %19  
Subject: %21