---
title: "User setup"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---

#### Setup of an SMTP adress per user

First of all, we need to access the intended user's user setup to make sure that the correct email address is specified there.

![](/images/connectornav/msp/smtp_ben.png)<center>The user setup for the user Max Mustermann</center>

Check if the marked e-mail field is filled in (correctly). Make any necessary changes and then close the user setup. Now open the Mail Sender Plus setup, which can be found in the Connector NAV menu.

![](/images/connectornav/msp/smtp_ben1.png)<center>Overview of the E-Mail Sender Plus function with opened setup</center>

In the Mail Sender Plus setup, you must now create a new entry using the "New" button. A new window will open where you have to enter the address of the SMTP account you want to use together with the related password. Therefore the setup for this user is completed and you can now close the window.

If an e-mail dispatch is now triggered by the configured user in a report in which no deviating address was stored per user report, the address just stored is used for the dispatch.

![](/images/connectornav/msp/smtp_ben2.png)<center>The dialog for the mail dispatch</center>

