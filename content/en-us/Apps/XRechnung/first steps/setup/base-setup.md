---
title: "Basic setup"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### Basic Setup

To set up the basic settings for the **Connector 365 XRechnung** app, navigate via the search bar to the **Connector 365 setup**. 
The **Connector 365 XRechnung** app extends the setup page with a dedicated XInvoice section.

|![](/images/apps/XRechnung/us/xr-setup.png)|
|-|

The XRechnung section contains the following fields and setting options:
| Field | Meaning |
|-|-|
| **Validate XRechnung** | Yes, if XRechnung files are to be validated using the XRechnung validator. No, to not validate XRechnung files. |
| **XRechnung version** | The currently used XRechnung version. |
| **Customization Id** | The XRechnung identifier used for the current XRechnung version. |
| **Use Customer Email as Fallback** | Specifies whether the customer's e-mail address should be used if no e-mail address has been defined in the document layout. <br> {{< notice info Note >}} This option is **not** visible if the **Connector 365 Addressee Control** extension is installed - in this case, the recipient addresses are controlled by this extension. {{< /notice >}} |
| **Inculde Zero Amounts** | If deactivated, rows with a total amount of 0 are excluded from the XRechnung. |
### XRechnung version

As listed in [Introduction](en-us/apps/xrechnung/first-steps/introduction/), there are several published versions for XRechnung, each valid for a specific point in time. 
In the **Connector 365 setup**, you can specify which version of XRechnung to use. Each XRechnung version uses its own identifier (here **Customization Id**):

Click on the three dots of the **XRechnung version** field to get an overview of currently recorded versions.

|![](images/apps/XRechnung/de/xr_version_assist_en.png)|
|-|

A new windows will open:

|![](images/apps/XRechnung/de/xr_version_page_en.png)|
|-|

Now you get an overview of XRechnung versions including their validity period. 
Here you can now select a version by marking any line and then confirming the page by clicking **Ok**.

### Synchronize/edit XRechnung versions

Available XRechnung versions as well as its identifiers can be synchronized via the Internet.
Under **Connector 365 Setup** for XRechnung you will find an action **Synchronize versions** which can be executed.

|![](images/apps/XRechnung/de/xr_update_version_en.png)|
|-|

If the function call is completed successfully and new versions could be found, these are also displayed in the version list and can be selected (See above).

Additionally the possibility was left open to edit XRechnung versions manually. For this purpose, another function call **Edit versions manually** is available:

|![](images/apps/XRechnung/de/xr_update_version_manually_en.png)|
|-|

Currently preset versions and identifiers:

| Version | Id | Valid from |
|-|-|-|
| **3.0** | **urn:cen.eu:en16931:2017#compliant#urn:xeinkauf.de:kosit:xrechnung_3.0** | 01.02.2024 |
| 2.3 | urn:cen.eu:en16931:2017#compliant#urn:xoev-de:kosit:standard:xrechnung_2.3 | 01.08.2023 |
| 2.2 | urn:cen.eu:en16931:2017#compliant#urn:xoev-de:kosit:standard:xrechnung_2.2 | 01.02.2023 |

### XRechnung Syntax
<a id="xrechnung-syntax"></a>

#### What does XRechnung syntax mean - UBL, CII and ZUGFeRD an overview

XRechnung is a standardized invoice format for electronic invoices to public clients in Germany. It is based on European specifications (in particular EN 16931) and can be implemented in various syntax formats.

- ***Previous standard: UBL***
In the previous implementation, the XRechnung was generated in the syntax format UBL (Universal Business Language).
UBL is an XML-based format that is widely used internationally.
It offers a clear structure for business processes such as invoices, delivery bills and orders.
<br>

- ***New: Support for CII***
With the current extension, we now also support the creation of XRechnungen in CII (Cross Industry Invoice) format:
CII is another XML-based standard developed by UN/CEFACT.
It is semantically more precise and offers more flexibility, especially for complex invoice content.
The support of CII is an important extension, as both formats are officially approved for XRechnungen.
<br>

- ***Note: ZUGFeRD***
A related but independent format is ZUGFeRD (Zentraler User Guide des Forums elektronische Rechnung Deutschland):
ZUGFeRD combines structured XML data with a PDF/A-3 document in which the XML file is embedded.
It is also based on the European standard EN 16931 and uses the CII syntax (Cross Industry Invoice) according to UN/CEFACT in the XML part.
However, ZUGFeRD is not identical to the XRechnung - both formats can be used in parallel, provided the recipient supports this.