---
title: "Troubleshooting information"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 9
---

##### Further information on troubleshooting

In this documentation, a possible case of an incorrect validation was shown as an example. In addition to the problem shown there with the routing ID, there are several other sources of errors. Therefore, it is enormously advantageous to use a validation service, as otherwise errors may only be noticed in one of the invoice portals or by the invoice recipient. Using the validation report and with the help of the [**PEPPOL BIS Billing 3.0 Code Lists**](https://docs.peppol.eu/poacc/billing/3.0/codelist/), most errors can be quickly eliminated.  
We are also happy to assist you with the process of cleaning up your XInvoices.

In the following we list further points, which should be checked before using the XInvoice module, as these are common sources of errors.

###### Check VAT scheme  

You should check the VAT scheme codes for the respective countries.

These can be customized under "**Countries/Regions**" in Dynamics NAV. The quickest way to find this page is to use the search function. Make sure that the correct, numerical values for the respective regions are stored in the column "**VAT scheme**". For **Germany** the value **9930** has to be entered. All other **VAT scheme codes** can be found in the official **Code List**: [**Electronic Address Scheme (EAS**](https://docs.peppol.eu/poacc/billing/3.0/codelist/eas/)).

![](/images/connectornav/data_exchange/xr_valid7.png)

###### Check standard codes for units

It is worth checking once to see if your units are entered correctly.

The fastest way to reach the page with your units is to enter '**Units'** in the search bar. To ensure PEPPOL/XInvoice compliance, each unit entered should have the associated **international standard code** stored. The unit codes can be obtained from the following lists:

- [UN/ECE Recommendation 20](https://docs.peppol.eu/poacc/billing/3.0/codelist/UNECERec20/)

- UN/ECE Recommendation 21](https://docs.peppol.eu/poacc/billing/3.0/codelist/UNECERec21/)

![](/images/connectornav/data_exchange/xr_valid8.png)<center>Example: For the unit **liter** *the international standard code* **LTR** applies.</center>


###### Check the tax category

Also recommended is to take a look at the **VAT posting matrix setup.** You can find this most quickly using the search bar. Each VAT entry used requires a valid entry in the **Tax Category** field. The code list [**UNCL5305**](https://docs.peppol.eu/poacc/billing/3.0/codelist/UNCL5305/) determines which entries are allowed. Probably the most relevant tax category codes are '**S**' (Standard rate) and '**E**' (Exempt from tax).

![](/images/connectornav/data_exchange/xr_valid9.png)

###### Negative invoice lines

The XInvoice standard specifies that the net amount of an item must not be negative.  
![](/images/connectornav/data_exchange/xr_valid10.png)

So problems can occur if items that are to be charged for refunds, for example, have been stored with a negative price. If an XInvoice contains an invoice line with a negative item amount, it will be considered **not** XInvoice compliant. To submit a negative invoice line, you should set the **quantity** to a negative amount instead, since it is allowed to be negative:

![](/images/connectornav/data_exchange/xr_valid11.png)<center>Excerpt from the [Coordination Office for IT Standards (KoSIT).](https://www.xoev.de/wir_ueber_uns-8159)</center>

