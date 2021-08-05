---
title: "Job files and feedback massages"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 4
---

#### Job files and feedback massages

This chapter is only relevant for licensing an interface with external communication software (OfficeMaster, Twinfax, Tobit, Faxmaker, C3000).

After the dialog has been confirmed with OK, the Connector NAV stores a text file in the path *com_job* and the job identifier from Connector NAV Setup. This is picked up and processed by the communication software. Afterwards the software returns a feedback file. This is located under *com_ack* or *com_err.* depending on the setup.

With the setup of the function *feedback from job list overview*, these folders are searched for corresponding files when the card is opened. These files are then renamed to ".erl" and there is a corresponding status to the operation in the job list.

**Replace this image with customized one**
![](/images/connectornav/fax/jobdateien.PNG)
![](/images/connectornav/fax/jobliste.png)<center>_Connector NAV Joblist_</center>
