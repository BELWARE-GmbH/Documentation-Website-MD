---
title: "Accompanying documents"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 6
---

##### Accompanying documents

The XInvoice standard allows attachments to accompany invoices.  
This standard allows attachments of the following MIME (Multipurpose Internet Mail Extensions) types:

- Application/pdf (.pdf)

- Image/png (.png)

- Image/jpeg (.jpg)

- Text/CSV (.csv)

- Application/vnd.openxmlformats-officedocument.spreadsheethtml.sheet (.xslx)

- Excel tables

- Application/vnd.oasis.opendocument.spreadsheet (.ods)

- OpenDocument tables

{{<notice warning "Important">}}PDF attachments may be considered insecure by some clients and are accordingly marked as such by XRechnung Portal Deutschland. To avoid this, it is recommended to use PDF/A files instead. These have a higher security level and are therefore also classified as secure attachments by the portal. The following is a quote from the [*Central Invoice Receiving Office of the Federal Government (ZRE Bund):*](https://ref.xrechnung.bund.de/ref/er_files/nutzungsbedingungen_technisch_de.jsp){{</notice>}}
####
> "The requirements of the invoice recipient must be taken into account by the invoice sender, for example, that security-relevant authorities may only be able to receive attachments in PDF/A format. Whether and which restrictions apply to an invoice recipient must be requested from the respective invoice recipient."

{{<notice info>}}The PDF/A module can also be purchased from BELWARE.{{</notice>}}
####
The **Connector NAV**s XInvoice module allows you to easily include supported document types in the resulting XInvoice. You can either attach these attachments to an invoice, or add them in the Send/Create dialog. Depending on the chosen method, setups in the **User Reports** are necessary.

###### Method 1 - Deposit attachments in invoices.

Navigate to: **Connector 365 -\> User Reports**.

![](/images/connectornav/data_exchange/begl_dok1.png)

Select the report for your sales invoices (Here: **Standard Sales - Invoice, 1306**) with the associated language code and user ID, if any, and select edit.

![](/images/connectornav/data_exchange/begl_dok2.png)

In the **Controls** tab, check **Document links as attachments**.

![](/images/connectornav/data_exchange/begl_dok3.png)

This checkmark must be set in order for the Connector to consider attached documents during XInvoice generation.

Now navigate to the **Sales Invoice Selection** page from the **Connector 365 Templates**, select an invoice for which you want to store an attachment, and click **Edit**. The invoice will open. Now click **Links**. This button can be found in the top menu under the **Start** tab.

![](/images/connectornav/data_exchange/begl_dok4.png)

Another window will open:

![](/images/connectornav/data_exchange/begl_dok5.png)

Click here on the gear icon:

Now you will find two more fields, **Link Address** and **Description**. Click the box with the three dots, which can be found to the right of the **link address** field.

![](/images/connectornav/data_exchange/begl_dok6.png)

Explorer should open, from which you can select and open any file. After you have done this, press **Save**.

![](/images/connectornav/data_exchange/begl_dok7.png)

The window will display the uploaded file. Now you can close the window and return to the **Sales Invoice Selection** overview.

To do this, check as usual that you have made the settings in the communication matrix for the customer in question.

![](/images/connectornav/data_exchange/begl_dok8.png)<center>Communication matrix entries for the example customer **Gilde Jupiter Insurance**</center>.

For the **PDF** job mode and the report in question (here 1306 for Geb. Sales Invoices), enter the following:   
Place a check mark in the XInvoice field and enter a routing ID. In addition, select the **PEPPOL Usage** (For this example Sales Invoice) and enter **PEPPOL BIS3** for PEPPOL Version. You can select the latter two entries from the associated drop-down menu. If intended, you can select under **XInvoice PDF as attachment** whether the invoice PDF file should also be embedded.

Next, navigate back to the **Sales Invoice Selection** page from the **Connector 365 Templates** and select an invoice that you want to convert to an XInvoice.

Then select the invoice you are working on and press the **PDF** button.

![](/images/connectornav/data_exchange/begl_dok9.png)

If you have enabled **Display dialog** option for sales invoices, the dialog box will open (method 2).

![](/images/connectornav/data_exchange/begl_dok10.png)

Under the **Attachments** tab you should now see your uploaded file. Optionally, you can add more attachments (method 2). Now press **OK,** to convert the invoice including attachments into an XInvoice.

###### Method 2 - Add attachments via dialog.

First, navigate to the user setup of the **Connector NAV 365.**

![](/images/connectornav/data_exchange/begl_dok11.png)

Under the **Controls** tab, check **Dialog** or **Dialog PDF**. (If Dialog is selected, a dialog will **ALWAYS** appear, for example, also when printing or sending an e-mail.)

![](/images/connectornav/data_exchange/begl_dok12.png)

Now navigate to the **Sales Invoice Selection** page from the **Connector 365 Templates**, and select an invoice

![](/images/connectornav/data_exchange/begl_dok13.png)

To do this, check as usual that you have made the settings in the communication matrix for the customer concerned.

![](/images/connectornav/data_exchange/begl_dok14.png)<center>Communication entries for the example customer **Gilde Jupiter Insurance**</center>.

For the **PDF** job mode and the report in question (here 1306 for Geb. Sales Invoices), enter the following:   
Place a check mark in the XInvoice field and enter a routing ID. In addition, select the **PEPPOL Usage** (For this example Sales Invoice) and enter **PEPPOL BIS3** for PEPPOL Version. You can select the latter two entries from the associated drop-down menu.

Next, navigate back to the **Sales Invoice Selection** page from the **Connector 365 Templates** and select an invoice that you want to convert to an XInvoice.

Click on the **PDF** button.

![](/images/connectornav/data_exchange/begl_dok15.png)

After clicking the **PDF** button, the following dialog box opens:

![](/images/connectornav/data_exchange/begl_dok16.png)

Now press the **Add Files** button in the **Attachments** tab. This will open another window where you can select a file to add as an attachment.

![](/images/connectornav/data_exchange/begl_dok17.png)

Select a file you want to attach and press **Open**.

![](/images/connectornav/data_exchange/begl_dok18.png)

###### Result 

The selected file is now displayed as an attachment in the dialog box. Now click **OK** to generate an XInvoice. The generated XML file should now contain an entry for attachments.

![](/images/connectornav/data_exchange/begl_dok19.png)

This entry is followed by the attached file, encoded in Base64 format. The encoded strings are usually very long, as can be seen in the following test report:

![](/images/connectornav/data_exchange/begl_dok20.png)<center>Excerpt of the test report on the XML file with attachment:</center>

The public receivers are able to decode these encoded strings and thus recover the original attachment files.