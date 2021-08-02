---
title: "Shipping via posted documents"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 3
---

#### Shipping via posted documents:

First you open your posted documents as usual. Then select e.g. booked sales invoices. Once there, select the invoice from which you want to send an SMS to the linked contact. After that click on the SMS button in the menu bar under "Operation".

![](/images/connectornav/sms/sms_belege.png)

The SMS dialog opens again as it did when sending via contacts. From there you can send a 160 characters text or use a body text. With a click on "OK" the SMS is sent.
{{<notice info>}}When sending via e.g. geb. invoices the related file will not be sent, because this is not possible via SMS.{{</notice>}}

##### Bodytexts:

Bodytexts for SMS are simple .txt files that you can easily edit using Microsoft Editor.

![](/images/connectornav/sms/sms_belege2.png)

Write your text in the .txt file, taking care not to exceed the 160-character limit. In this file you can also use the placeholders mentioned above. Then save the body text, preferably in a central folder where all body texts are located.

To use the body text, you must either store it in a report, then the body text is automatically loaded as soon as you send an SMS via the report, or manually change the body text to the new one when sending an SMS, but you would then have to do this every time you send an SMS.

##### Place holder:

You can use placeholders to automatically add frequently used phrases such as a greeting or variables such as names to a text. Only body texts support these placeholders, they are not supported in the text field. Here you can find an overview of all available placeholders.
|Avaiable place holders | | |
|---|---|---|---|
| Title      | %1 | Document number  | %8  |
| First name | %2 | Company name     | %9  |
| Name       | %3 | Company name 2   | %10 |
| Function   | %4 | Company adress   | %11 |
| Phone      | %5 | Company adress 2 | %12 |
| Fax        | %6 | Company ZIP code | %13 |
| E-mail     | %7 | Company location | %14 |
|            |    | Date             | %15 |
|            |    | Time             | %16 |

*Note: Although all placeholders are supported in SMS, you should do without some of them because of the limited number of characters. Otherwise they will take up unnecessary space.*

**An example for the use of place holders:**

This is the text we enter in our bodytext:

**%1** we would like to inform you that we have just sent our invioce
**%8** to you.

This would be "translated" in the SMS as follows:

**Dear Mr. Müller,** we would like to inform you that we have just sent our invioce **GAR18-1871** to you.