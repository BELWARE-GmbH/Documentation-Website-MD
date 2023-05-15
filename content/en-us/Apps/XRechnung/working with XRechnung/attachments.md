---
title: "Attachments"
date: 2020-02-28T10:08:56+09:00
description: 
draft: true
collapsible: false
weight: 2
---
# Attachments

As already mentioned in the setup on the topic [**Customer**](en-us/apps/xrechnung/first-steps/setup/setup-customer), 
when generating an XInvoice, the **Connector 365 XRechnung** app allows the original document to be included in the resulting XML file, 
or to attach it to an e-mail in the form of a PDF file.
However, in addition to the original document, other attachments can be added or embedded in the XML file as desired.
The following explains in more detail how you can easily specify attachments via dialog, or even by pre-configuration.

## Add attachments via dialog

Perform the **Send as XRechnung** action on a supported page, for example: **Posted Sales Invoices**.
The dialog window will open: 
|![](images/apps/XRechnung/us/xr_dialog_source_doc_embedded.png)|
|-|

At the bottom is the view for attachments.
If you have set in the document layouts that the document is either embedded as XML, or considered as an additional attachment,
then it will appear in this view, as shown in the image above as an example.
The following fields are displayed per line:

| Field | Description |
|-|-|
| Embed in XML | Indicates whether the associated attachment should be embedded in the XML file |
| Filename | Specifies the filename of the attachment |

By clicking the **Add attachment** action you can now add more attachments:
|![](images/apps/XRechnung/us/xr_dialog_anhaenge_hinzufuegen.png)|
|-|

You will then be given the option to select a file to upload.
When you have done this and confirmed the dialog, the selected file will be uploaded to Business Central and 
added to the attachment list:

|![](images/apps/XRechnung/us/xr_dialog_add_attachment.png)|
|-|

By default, new attachments are embedded in the XML file.
However, if you want certain attachments not to be embedded, but to be treated as an additional attachment when the mail is sent,
uncheck the box for **Embed in XML**.

|![](images/apps/XRechnung/us/xr_dialog_do_not_embedd_attachment.png)|
|-|

{{< notice info notice >}}
Please note that not every arbitrary file type are allowed for the standard **XRechnung**.
The following is an up-to-date list of file types that an XInvoice recipient must be able to receive and process:

* application/pdf (.pdf)
* image/png (.png)
* image/jpeg (.jpg)
* text/csv (.csv)
* application/vnd.openxmlformats-officedocument.spreadsheetml.sheet (.xslx)
* application/vnd.oasis.opendocument.spreadsheet (.ods)
{{< /notice >}}

## Pre-configure attachments

The **Connector 365 XRechnung** app alone does not provide the ability to pre-define attachments that are automatically added either for individual accounts receivable, or basically 
automatically added for different document types when sending XRechnung. 
However, there is an option to use the **Connector 365 Mail Attachments** app. This allows attachments to be set up
for different scenarios and automatically add them as attachments when sending emails. 
This functionality also works with the **Connector 365 XRechnung** app. 
Learn more about **Connector 365 Mail Attachments** [here](en-us/apps/mail-attachments-plus).