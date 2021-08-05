---
title: "Setup segment dispatch"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 3
---

#### Setup Connector NAV for the segments dispatch

Now that the list of contacts that will receive the segment has been prepared, it's time to set up the mail with Connector NAV. Via "User report" you now set up the following parameters:

![](/images/connectornav/segment/setup1.png)

**ReportID:** Is fixed – this one can not be changed.

**Language:** Should you have multilingual customers and want to send your mails in different languages accordingly. Is to define the user report setup per language code.

**Subject:** Here is the subject line of the mail to be set.

**E-mail sender:** Here the own sender identification can be overwritten via SMTP.

**Body text file:** Here is the mail / body text or also called disclaimer to define.

(For the creation in Word see seperate documentation.)

![](/images/connectornav/segment/setup2.png)

Additional settings in the "Control" register are to be made depending on the operation:

![](/images/connectornav/segment/setup3.png)

**E-mail interface:** Here the correct interface should be set.

**„HTML body text“:** Here it is important, the check mark is set so the mail is sent in the correct formatting.

<table>
<tr>
<td><strong>Dialog on/off:</strong></td>
<td>Dialog off – Then the mail dispatch will be executed silently.<br />Dialog on – Here a dialog opens again before the dispatch, in which for all attitudes and presettings again to be intervened and changed can.</td>
</tr>
</table>

Attachments can also be added to your segment. Therefore click on "e-mail attatchment" under adding in you menu ribbion.

![](/images/connectornav/segment/setup4.png)

Select the intended file an confirm you selection. The just added file can now be viewed in the "Attachment lines" tab.

{{<notice info>}}Detailed information on the individual functions can be found in the main documentation.{{</notice>}}

## Check settings and send segment

To see if you have really set everything correctly, you can send the segment to yourself once. The "Mail Test" function only generates a single mail, with the corresponding default settings and contents of the segment, to the assigned seller that is stored in the VK code in the segment. The mail address is taken from the stored mail address in the sales code.

![](/images/connectornav/segment/setup5.png)

Once you have checked the mail and found it to be correct, you can start the complete segment mailing using the "Mailing..." function. Make sure that you start the mailing with Dialog off, otherwise you will get a query that has to be confirmed every time.

The emails will now be sent to all contacts in your segment, this may take some time depending on the number of contacts, so please be patient.

After the sending is finished, you can check the status of the mails by clicking on Status in the ribbon. There you will then see each mail in the segment and whether it was sent successfully.

If your activity log items are set up, other employees can then also check there per customer who has received an email.