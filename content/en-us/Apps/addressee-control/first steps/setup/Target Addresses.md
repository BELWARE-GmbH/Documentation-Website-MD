---
title: "Target addresses"
date: 2020-02-28T00:00:00+09:00
description:
draft: false
collapsible: false
weight: 1
---
### Setup

To set the destination address logic as desired via the **Connector 365 Addressee Control** app, open one of the *Report Selections* pages.

{{< notice info note >}}
Please refer to the following table of currently usable report selections for use with **Connector 365 Addressee Control**. However, this does not mean that all uses of the individual report selection pages are supported.
{{< /notice >}}

| Usage | Supported |
-------------|-------------
| Sales    | <img src="/images/apps/Addresse_Control/tick.png" width=30 > |
| Purchase    | <img src="/images/apps/Addresse_Control/tick.png" width=30 > |
| Cash Flow   | <img src="/images/apps/Addresse_Control/cross.png" width=30 > |
| Warehouse      | <img src="/images/apps/Addresse_Control/cross.png" width=30 > |
| Reminder/Finance Charge  | <img src="/images/apps/Addresse_Control/tick.png" width=30 > from version 1.2.0.0 on|
| Bank Account | <img src="/images/apps/Addresse_Control/cross.png" width=30 > |
| Project | <img src="/images/apps/Addresse_Control/cross.png" width=30 > |
| Service | <img src="/images/apps/Addresse_Control/tick.png" width=30 > from version 1.4.0.0 on |

The **Connector 365 Addressee Control** app adds a subpage to supported report selection pages.

*Example from the sales area -> **Report Selection - Sales**:*

|<img src="/images/apps/Addresse_Control/ReportSelection_Sales_ENU.png" />|
|-|

{{< notice info Note>}}
The factory settings are based on the target address logic of the Business Central standard (as of February 2024). We therefore recommend that you **only** make changes to the reports for which you want to set up a different target address logic.
{{< /notice >}}
<p></p>

With Connector 365 Addressee Control, you have the option of setting the target address logic for various report uses differently from the standard target address logic of Business Central.

In the following, which options you have to set up your own target address logic.

In the first step, define how the document layout should be assigned, e.g. to
- Bill-to Customer No. / Bill-to Vendor No.
- Sell-To Customer No. / Sell-to Vendor No.

Then define in the **Priority of address** area which table and which field should be used in relation to this. And in which order they should be pulled up by the system.

| Table | Example of field |
|-|-|
|Custom Report Selection | <img src="/images/apps/Addresse_Control/Dokumentlayouts_Zieladressen_ENU.png"/> |
|Sales Header | <img src="/images/apps/Addresse_Control/Belegkopf_Zieladresse_ENU.png" /> |
| Customer / Vendor | <img src="/images/apps/Addresse_Control/Debitor_Zieladresse_ENU.png" /> |

In the report selection, you have the option of specifying which field is to be used as the default destination address. Define here which address has the highest priority and, if this destination address is not defined, which other destination addreses should be used depending on the assigned priority.

In addition to the standard tables of the destination address logic, the following tables are also available:

{{< notice info Hinweis>}}
By deleting the filter, all standard tables from Business Central can be accessed.
{{< /notice >}}
<p></p>

| Table | Example of field |
|-|-|
|  Location | If you have entered a different location in the document, the email address entered here can be used in the target address logic if required. The following field could be accessed for the email address: <img src="/images/apps/Addresse_Control/Bsp_Mailempfänger_Lagerortcode_ENU.png" /> |
| Ship-to Address | If selecting a different ship-to address, define the email address stored here or the corresponding field as the destination address. <img src="/images/apps/Addresse_Control/Bsp_Mailempfänger_LiefanAdresse_ENU.png" /> | 

 
#### E-POST
In combination with **Connector 365 E-POST**, setting up the target addresses also offers the option of determining the origin of the address data for sending letters.
Depending on the report selection, it is possible to transfer the address data from the contact, customer or vendor.
You can also use the **Field Mapping** to determine which fields should be used for the recipient's data record.
You can also use the **Use Name 2** field to specify whether this field should also be inserted in the recipient's address data.
![](images/apps/Addresse_Control/app-setup-target-addresses-e-post-en.png)