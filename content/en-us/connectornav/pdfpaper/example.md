---
title: "Example process PDF"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---

#### Example process PDF

In addition to PDF creation with the base, you can use the pdfPaper to mix your document with your stationery.

##### Preview function

At any time before creating a PDF file, you have the option to preview your report - a view of your finished PDF. Using this function does not create a job list entry.

There are 2 variants of the preview:

**Pdf Preview -** This preview function works even if you have not licensed the iPaper. There is no mixing with a stationery with this function, only a simple PDF of your report is generated.

**PdfServer Preview -** This function is also a version dependent preview. In this case, a PDF mixed with stationery is generated here if a server variant of iPaper is used.

##### Dialog

The creation of PDF files from Dynamics NAV is possible from any page, in the following an offer is used as an example.

![](/images/connectornav/pdfpaper/nav_integration.png)<center>Example offer Connector NAV Integration</center>.

|Actions |
|---|---|
| PDF         | With this action you create the PDF.                      |
| PDF Preview | With this action you get the possibility to view the PDF. |
| Print       | With this action you can print the PDF.                   |
| Status      | This action takes you to the job list.                    |

#### Dialog Process PDF

##### Actions

![](/images/connectornav/pdfpaper/pdf_actions.png)<center>Connector NAV Dialog Mode PDF, Actions</center>

|Actions |
|---|---|
| Display stationery | This action can be used to display the stationery from the interface transfer. |
| Change stationery  | This action can be used to change the stationery.                              |

##### Register pdfPaper

![](/images/connectornav/pdfpaper/pdf_reg_pdfpaper.png)<center>Connector NAV Dialog Mode PDF, Register pdfPaper</center> 

|field description |
|---|---|
| PDF Password | Here you can assign a password for the PDF document. |
| Stationery   | The current stationery from the interface transfer.  |