---
title: "Target addresses"
date: 2022-10-20T00:00:00.000-05:00
description: 
draft: false
collapsible: false
weight: 4
---
### Working with specified target addresses

To illustrate how this works, the following is an example of how to handle posted sales invoices. 
It is assumed here that the sales-to-debitor for the sales invoices has been set up to be used as target via the **Connector 365 Addressee Control** app:

|![](/images/apps/Addresse_Control/Berichtsauswahl_Verkauf_Example_WorkWith_ENU.png)|
|-|

Assume that an invoice is to be sent where the invoice recipient and the buyer are different:
|![](/images/apps/Addresse_Control/VerkRechnungen_SellToBillToCust_ENU.png)|
|-|

{{< notice info Note >}}
For simplicity, **documentlayout@bill-to-customer.de** has been set up below for the invoice recipient, and **documentlayout@sell-to-customer.de** for the buyer.
{{< /notice >}}

</br>

When executing the action: **Send by Email**, the email address of the invoice recipient´s documentlayouts is normally entered in the e-mail dialog by default. This looks as follows:

|![](/images/apps/Addresse_Control/MailDialog_BillTo_ENU.png)|
|-|

However, with the setting that the sell-to-debitor should be used for setting the destination addresses, the dialog looks like this:

|![](/images/apps/Addresse_Control/MailDialog_SellTo_ENU.png)|
|-|

In this example, the email adress of the sell-to customer was used as the target address from the documentlayouts. 
However, if configured, other recipients (CC and BCC) are adopted according to the target address logic set up.

If no **email adress** is stored in the documentlayouts, then the target address logic next falls back in the example shown above on the email field in the sales invoice header.

The email dialog would then look as follows:

|![](/images/apps/Addresse_Control/MailDialog_Belegkopf_ENU.png)|
|-|

If no email address is stored in the document header of sales invoice 102232, the target address logic accesses the next defined field. According to the target address logic shown above, the email field of the sell-to customer is then accessed.

The email dialog would then contain the email address of the customer **10000 Adatum Corporation**.

|![](/images/apps/Addresse_Control/MailDialog_Debitor_ENU.png)|
|-|

If the corresponding field does not contain an email address here either, an error message is displayed in which the field for the recipient email remains empty.