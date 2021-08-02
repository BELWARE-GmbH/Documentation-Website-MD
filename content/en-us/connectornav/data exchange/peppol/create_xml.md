---
title: "Creation of a PEPPOL-XML"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 3
---

##### Creating a pure PEPPOL XML via the PDF job mode.

First you have to go to the pdfPaper setup to fill in the storage path for the created PEPPOL-XMLs. This can be found under "Peppol storage folder". It is important here that there is an authorization to store files in the path. Therefore we recommend to create an additional folder in the T611 structure of the Connector NAV, for example "com_peppol".

After you have created the path, we go back to the Sales Invoices folder as in the last example and select an invoice from a customer that receives PEPPOL.

Now trigger the creation of a PDF file by clicking on the "PDF" button. Again, you can check the PEPPOL XML by clicking on "View files" and then on "View file". Close the window after the check.

Confirm the creation of the PDF with "OK".

Also in PDF mode you have the possibility to check the status and view the PEPPOL XML.

![](/images/connectornav/data_exchange/peppol4.png)<center>"View Files"</center> dialog.


After the process is complete, the PEPPOL XML is now in the path you set up and is ready for you to process.

{{<notice info>}}Also in PDF mode, a PDF with the invoice content will be created in addition to the PEPPOL XML.{{</notice>}}

![](/images/connectornav/data_exchange/peppol5.png)<center>File path com_peppol with created XML documents</center>.

