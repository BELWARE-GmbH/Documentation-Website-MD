---
title: "Stationery in the document layout"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 4
---
### Setup

The configuration defined in the document layouts is prioritized over the PDF setup in the report selection as well as in the Connector 365 Setup.

### Stationery in the Document Layout

In addition to the option of defining a stationery for all reports globally and per report, you also have the option of defining a report-specific stationery for each customer. This is set up in the respective document layouts.

Open the document layouts of the customer for whom you want to define a different stationery.

|![](images/apps/pdf_SaaS/documentlayouts_DEU.png)|
|-|

The highlighted area above shows the PDF setup in which you can define your stationery in the document layouts for this customer. The individual configuration options are explained below.

##### Conformance level
Here you can define a conformance level, if desired.

##### Statinery configuration
Select an existing stationery configruation here. The screenshot above shows for the report **1306 Invoice** that the stationery configuration **INVOICE** has been stored. It is also possible to create a new stationery configuration.

To create a new stationery configuration, click **+New** and carry out the following steps:
1. Define a code.
2. Optionally, add a description that contains further information about the code.
3. Under stationery template, define which stationery code is to be used for which stationery type.
</p>

Further information and examples of stationery configuration can be found **here**.

##### Stationery
If you have specified a stationery configuration, you can view it by clicking on the **Stationery** field. As a stationery configuration with three stationery types has been defined for the report **1306 Invoice**, the field for this report displays **3**. 
For the **INVOICE** stationery, you can see the following configuration as an excerpt:

|![](images/apps/pdf_SaaS/example_field_stationery_DEU.png)|
|-|

##### Attachment configuration
Select an existing attachment configuration here. In this example, the attachment configuration for the report **1306 Invoice** is **ATTACHMENTCONFIGURATION**.
If desired, a new attachment configuration can also be created here.

To create a new attachment configuration, perform the following steps:
1. Define a code.
2. Optionally, you can add a description that further describes the attachment configuration.
3. Select whether the corresponding attachment should be added **before** or **after** the main document.
4. Position your attachments in the desired order.
5. Add a rotation if required or desired.
</p>

More information on attachment configuration and an example can be found **here**.

##### Attachments
If you have defined an attachment configuration, you can see the number of defined attachments here. For the report **1306 Invoice**, **ATTACHMENTCONFIGURATION** has been defined, which contains a total of **3** attachments. 
By clicking on the number in the attachments field, you can see the attachment configuration.
This could look as follows:

|![](images/apps/pdf_SaaS/example_field_attachments_DEU.png)|
|-|

### Stationery in the document layout
You can also define a stationery for your vendors for each report. This is set up in the document layouts. Open the card of the vendor for whom you want to store a different stationery.

|![](images/apps/pdf_SaaS/beleglayouts_DEU.png)|
|-|

The highlighted area above shows the PDF setup where you define the stationery. This is identical to the setup in the document layouts for the customer.

