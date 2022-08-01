---
title: "Setup"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---

#### Setup

To install the module you must first stop the RTC instance, this step must be executed on **all RTC servers**. Then place the .dll files "**NetUiControll.dll**" and "**OutlookHandlerLib.dll**" in the following folder:

![](/images/connectornav/dragdrop/einr1.png)<center>folder to drop</center>.

***Important***: This step must be performed for all client machines. Otherwise, the following error message appears.

![](/images/connectornav/dragdrop/error_message_en.png)

Now restart the RTC instance.
The add-in has now been registered by the RTC. Now open the control add-ins page.

*(Administration/IT Administration/General/Control Add-Ins)*

![](/images/connectornav/dragdrop/einr2.png)<center>Access control add-ins through search</center>.

Now on the page open a new line enter the following parameters exactly:

**Add-in name: Belware.DragDropNet**.

**Public key token: d678d7304c35f0b**

**Category: Add-In für DotNet Steuerelemente**

![](/images/connectornav/dragdrop/einr3.png)<center>Overview control add-ins</center>.

Now restart the again the RTC instance.
First import the objects of the correct version from the "DragAndDropObjectsEvn" .txt or .fob file.
After that you can create a new part on any Card Page in the FactBoxArea area which you call "DragAndDrop".

![](/images/connectornav/dragdrop/einr4.png)

In the column "properties" select the option "PartType" = Page and "PagePartID" = Drag and Drop FactBox

![](/images/connectornav/dragdrop/einr5.png)

On the same Page, in the "OnAfterGetCurrRecord" trigger at the end of the trigger, write the following code:

//\>\>DragDropEVN Start

CurrPage.DragAndDrop.PAGE.SetRecordPage(RECORDID);

CurrPage.DragAndDrop.PAGE.RefreshPage();

//\<<DragDropEVN End

Save and compile the object.
Now open the source table of the Card Page and create a global variable. Then write the following code at the end of the trigger.

//\>\>DragDropEVN Start

FileDropStorage.DragDropDelete(Rec.RECORDID);

//\<\<DragDropEVN End

After you save and compile the object, you are done.