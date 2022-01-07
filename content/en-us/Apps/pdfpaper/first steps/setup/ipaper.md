---
title: "iPaper"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### Setup

### iPaper

In order to apply the correct stationery to the created PDFs, the iPaper must first be set up correctly. This starts with the location of the stationery.

#### Stationery Folder

All stationery templates must be stored in the same folder, which will be made known to the software. A stored stationery must be in PDF format.

You can find the folder as follows:

Open the user interface of the software, this is done via the Windows search or by running the software from the folder in which it was installed.
Right click on the iPaper icon in the toolbar and select **"Configuration"**. The iPaper options will open. If this is the first time you are running the software, you should be able to click directly on the gear icon to open the settings. If the service is already running, you have to stop it first by clicking **"Stop"**.

In the settings you can find the tab **"Shared folders"**. There you will find the folder for filing your stationery, this folder already contains some sample stationery. Make sure that this folder gets a network share.

#### Processing
For iPaper to work correctly, an input and output folder must be defined and set up accordingly.

Click **"Add folder"** and give the folder a name and then define an input folder. Now check the box for a general outbox folder and define it as well. Make sure that both folders get a network share.

You should also configure an error folder, so that causes can be quickly determined if something goes wrong in the processing.

Now select the tab **"Options"** and set the iPaper to process XML files. Otherwise no processing will take place.

Now the iPaper is set up. Before you close the setup, start the software now.

Next you need to configure the Connector 365 PdfPaper app, the instructions for this step can be found [here](/en-us/apps/pdfpaper/first-steps/setup/pdfpaper).
