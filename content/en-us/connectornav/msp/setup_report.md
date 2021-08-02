---
title: "Report setup"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 3
---

#### Set up an SMTP address per report

You also have the option to set a specific address per report. First, open the Mail Sender Plus setup again. There we will now store an address that will always be used in the invoice dispatch.

![](/images/connectornav/msp/smtp_ber.png)<center>The Mail Sender Plus setup, a new entry was created</center>

Now open the User Reports setup and open the settings for the intended report, in our case Invoices. In the "E-mail sender" field, enter the address you just entered in the setup. Then make sure that SMTP is selected for "Send via".

![](/images/connectornav/msp/smtp_ber1.png)<center>Overview of the user report setup</center>

If the e-mail dispatch is now triggered for an invoice, the address invoices\@belware.de stored here is always used for the dispatch.