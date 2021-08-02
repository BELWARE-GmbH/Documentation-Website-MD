---
title: "Preparation"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---

### Preparation

{{< notice info >}}Please note that functions are also described for modules whose license you have not purchased. These should usually be recognizable by the context.{{< /notice >}}
####
Please release a directory in the network and name it e.g. "T611". Create the required subfolders. The names of the folders are optional, but serve for a better overview regarding the Connector NAV setup.

![](/images/connectornav/config_ordner.png)

It should be noted that the users are given full permission for this folder structure. What these folders are used for is explained below.

#### The installation of the eDocPrintPro

The Connector NAV generates vouchers as PDF documents. For Microsoft Dynamics NAV versions > 2009 R2 Classic the internal SAVEASPDF can be used and no further measures have to be taken. For all other versions we recommend the free PDF printer driver from X.KEY GmbH.

![](/images/connectornav/installation_edoc_printpro.png)<center>_Picture: Printer setup eDocPrintPro, about tab_</center>

Connector NAV is tested with eDocPrintPro version 3.21.2.0. eDocPrintPro is a free product for generating PDF files and can be used as an alternative to the SAVEASPDF function of NAV 2013 R2. Installation instructions and more can be found at 
[http://wiki.xkey.at/doku.php?id=edocprintpro_pdf_und_pdf_a](http://wiki.xkey.at/doku.php?id=edocprintpro_pdf_und_pdf_a)

To install the eDocPrintPro, execute the following steps (excerpt from the XKEY WIKI):

##### All versions before 3.18.0:

Before each new installation (also UPDATES) all existing versions must be uninstalled!

##### Versions from 3.18.0:

Due to the use of new setup software, with the current version it is no longer necessary for already installed versions from 3.18.0 to manually uninstall the software before installing the new version. An already installed version (from 3.18.0) is detected and automatically removed before the new installation. The installation adds a virtual printer to the system which can create PDF and other formats like TIFF, JPG and others.

Recommendation to avoid support cases in advance: 
- Please remove all other PDF printers that are not necessary for you. Also "old" versions of the eDocPrintPro! 
- Check if you have ONLY the current version of GhostScript installed and remove "old" versions that are not needed.

1. download the installation ZIP package from [www.pdfprinter.at](https://www.pdfprinter.at/)
2. double click on the .ZIP file in the download folder
3. execute the setup.exe
4. follow the instructions on the screen

A common setup for the 32bit and 64bit version instead of single setups 
The setups and EXE files are signed - Verisign Class 3 - Code Sign certificate!

eDocPrintPro appears then as printer in your printer list and there you can start the configuration (print settings).

#### Additional notes OfficeMaster for E-Mail and Fax

When licensing the interface OfficeMaster, the following settings must be configured in the file gateway. Here, the folder names refer to the folders in the Setup and Configuration documentation. The settings can be found under: Messaging Server Configuration -> Component Status -> File Gateway -> Show Configuration.
![](/images/connectornav/installation_officemaster.png)<center>_OfficeMaster Filegateway, Settings General_</center>

#### Important new feature for file handling

With the Connector NAV update to version 7.01.125 the file handling has been made more comfortable. Pre-populating attachments (e.g. in the user report setup) now also allows the user to select local files. The selected file is automatically uploaded to the server under the path **com_tmp**. The same applies to changing attachments or body texts in the dialog.

Displaying attachments (e.g. from the job list) no longer requires direct access to the network share. The file is downloaded locally from the server to the user's workstation and opened. To avoid the accumulation of temporarily stored files, a message is displayed afterwards asking whether the tmp folder should be deleted. This folder is automatically created during the download under %temp% of the user and is not visible to the user under normal circumstances. For more details see: User report setup.