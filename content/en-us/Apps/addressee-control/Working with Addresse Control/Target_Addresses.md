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
|![](/images/apps/Addresse_Control/GebVerkRechnungen_SellToBillToCust_ENU.png)|
|-|

{{< notice info Note >}}
For simplicity, **Bill-To-Customer@mail.de** has been set up below for the invoice recipient, and **Sell-To-Customer@mail.de** for the buyer.
{{< /notice >}}

</br>

When executing the action: **Send by e-mail**, the e-mail address of the invoice recipient is normally entered in the e-mail dialog by default:

|![](/images/apps/Addresse_Control/MailDialog_SellToCust_ENU.png)|
|-|

However, with the setting that the sale-to-debitor should be used for setting the destination addresses, the dialog looks like this:

|![](/images/apps/Addresse_Control/MailDialog_BillToCust_ENU.png)|
|-|

In this example, the email adress of the sell-to customer was used as the target address. 
Here, neither a document layout was set up for the invoice recipient nor for the buyer.
However, if set up, other recipients (CC and BCC) are used according to the target address logic set up.