---
title: "Target addresses"
date: 2020-02-28T00:00:00+09:00
description:
draft: false
collapsible: false
weight: 1
---
### Setup

To set the destination address logic as desired via the **Connector 365 Addresse Control** app, open one of the *Report Selections* pages.

{{< notice info note >}}
Please refer to the following table of currently usable report selections for use with **Connector 365 Addressee Control**.
{{< /notice >}}

| Usage | Supported |
-------------|-------------
| Sales    | <img src="/images/apps/Addresse_Control/tick.png" width=30 > |
| Purchase    | <img src="/images/apps/Addresse_Control/tick.png" width=30 > |
| Cash Flow   | <img src="/images/apps/Addresse_Control/cross.png" width=30 > |
| Warehouse      | <img src="/images/apps/Addresse_Control/cross.png" width=30 > |
| Reminder/Finance Charge  | <img src="/images/apps/Addresse_Control/tick.png" width=30 > from version 1.2.0.0 on|
| Bank Account | <img src="/images/apps/Addresse_Control/cross.png" width=30 > |

The **Connector 365 Addressee Control** app adds a subpage to supported report selection pages.

*Example from the sales area -> **Report Selection - Sales**:*

|<img src="/images/apps/Addresse_Control/Report_Selection_Sales.png" />|
|-|

Now you have the possibility to set the destination address logic for different report usages.
To do this, click on the **Assist button** (***three dots***) of the **Target from field number** field.

|![](/images/apps/Addresse_Control/Report_Selection_Sales_AssistButton.png)|
|-|

This opens a new page: **Possible target addresses**.

|![](/images/apps/Addresse_Control/PossibleTargetAddresses.png)|
|-|

Now you have the possibility to define one of the shown fields as default destination address.
The fields shown on this page are fields which have a direct link to a customer/vendor or to a contact.
So, for example, if you create a link to field no. **2** - **Sell-to Customer No.** for the use (sales) **Invoice**, in the future the recipient of a sales invoice will always be searched from the customer linked to **Sell-to Customer No.**.

{{< notice info Information>}}
If you select a field assignment to a customer/vendor as the target address, this also influences the selection of the document layouts.
For example, if you specify for sales invoices that the sales-to-customer is to be used for the 
for the search for target addresses, the settings of the document layouts of the corresponding customer will also be taken. By default, the invoice recipient is provided for this in Business Central. 
With **Connector 365 Addressee Control** you can override this behavior.
{{< /notice >}}

<a name="ACCon365" class="anchor"></a>
### Compatibility with other **Connector 365 Apps**

With **Connector 365 Addressee Control**, the destination address logic of additional **Connector 365 Apps** can also be customized.
The following **Connector 365 Apps** are compatible with **Connector 365 Addressee Control**:
-  **Connector 365 XRechnung**
-  **Connector 365 E-Post**
-  **Connector 365 Easy Document Pin**
-  **Connector 365 Mail Experience Plus**
   >  **Connector 365 Mail Attachments Plus**
   >  **Connector 365 Mail Subject Plus**
