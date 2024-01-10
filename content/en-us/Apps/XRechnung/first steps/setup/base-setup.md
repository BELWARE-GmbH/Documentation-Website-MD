---
title: "Basic setup"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
# Basic setup

To set up the basic settings for the **Connector 365 XRechnung** app, navigate via the search bar
to the **Connector 365 setup**. 
The **Connector 365 XRechnung** app extends the setup page with a dedicated XInvoice section.

|![](/images/apps/XRechnung/de/xr-setup-en.png)|
|-|


The XRechnung section contains the following fields and setting options:
| Field | Meaning |
|-|-|
| **Validate XRechnung** | Yes, if XRechnung files are to be validated using the XRechnung validator. No, to not validate XRechnung files. |
| **XRechnung version** | The currently used XRechnung version. |
| **Customization Id** | The XRechnung identifier used for the current XRechnung version. |

## XRechnung version

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
| 3.0 | urn:cen.eu:en16931:2017#compliant#urn:xeinkauf.de:kosit:xrechnung_3.0 | 01.02.2024 |
| **2.3** | **urn:cen.eu:en16931:2017#compliant#urn:xoev-de:kosit:standard:xrechnung_2.3** | 01.08.2023 |
| 2.2 | urn:cen.eu:en16931:2017#compliant#urn:xoev-de:kosit:standard:xrechnung_2.2 | 01.02.2023 |