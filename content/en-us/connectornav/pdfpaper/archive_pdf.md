---
title: "Creation of PDF/A documents"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 5
---

#### Creation of PDF/A documents in PDF/A-1b and PDF/A-3b
(only in connection with pdfPaper - as FM licensing)

##### Setup of the PDF level

In the "pdfPaper setup" the intended PDF level is stored, which one would like to apply per client by default. This setup directly accesses all reports/documents in a client that are processed with Connector NAV / 365 BC.  

![](/images/connectornav/pdfpaper/pdfa_einr.png)<center>Window „pdfPaper setup“</center>

{{<notice info>}}You can choose between "Empty", "PDF/A- 1b" and "PDF/A- 3b" in the "PDF Level" field and thus define your default setting per client.{{</notice>}}

##### Setting up the PDF layer via the communication matrix

In the communication matrix, the Global setup of the PDF level is overridden from the "pdfPaper setup". Different PDF levels can be maintained per customer and vendor per report (ReportID) and job mode.

![](/images/connectornav/pdfpaper/pdfa_anp.png)<center>Communication matrix overview – adjust PDF/A layer</center>

##### Conformity of PDF documents

Compliance can also be dertermined by checking the PDF file in a PDF reader (in our case Adobe Acrobat Pro DC)

![](/images/connectornav/pdfpaper/pdfa_konf.png)<center>Conformity of the generated PDF file</center>
