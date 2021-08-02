---
title: "Body text"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 3
---

#### Tabular body text

A good way to design a body text clearly is to insert a table into the file and then take this as a basis for further editing. This also allows further design options such as highlighting different cells or variable placement of text/images.

![](/images/connectornav/word_html/bodytext/tabelle.png)

{{<notice info>}}If wished, you must hide the border lines when you are done with your table.{{</notice>}}

#### Place holder in body texts

For an email body text template, you can use place holders for components that are individual to each employee, for example, name or email address. This way, all employees have a consistent body text in emails. Place holder setup can be found in the Configuration and Setup documentation.
The following place holders can be used for the email body text.

|Field describtion | |
|---|---|
| Title                    | Place holder %1.  |
| First name               | Place holder %2.  |
| Last name                | Place holder %3.  |
| Function                 | Place holder %4.  |
| Telefon                  | Place holder %5.  |
| Fax                      | Place holder %6.  |
| e-mail                   | Place holder %7.  |
| document nummer          | Place holder %8.  |
| Company data name        | Place holder %9.  |
| Company data name 2      | Place holder %10. |
| Company data address     | Place holder %11. |
| Company data address 2   | Place holder %12. |
| Company data Postal code | Place holder %13. |
| Company data location    | Place holder %14. |
| Today / Date             | Place holder %15. |
| Time / Time              | Place holder %16. |


##### An example for the use of place holders

**%1,**

enclosed you will receive our order confirmation %8.  

Please do not hesitate to contact us if you have any further questions.  
With kind regards

%2 %3  
%4

%9  
%11  
%13 %14

\----------------------------------

Phone: %5  
Fax: %6

{{<notice info>}}The place holders get their info from the user setup or, in the case of %1, from the Anredecodes. You can access the Anredecodes directly via the search.<br />If the place holders are not translated to text in a sent email, they are probably not set up. In this case, please check the user setup or Anredecodes{{</notice>}}

##### Define your own place holders.

In the code unit **CON FaxMailDialogHook** you can create additional place holders by creating an **Event Subscriber** for the function **OnReplacePlaceholder** from the **Codeunit CON Base**. The place holders %101 - %199 are available for this purpose.

To replace the place holders with the intended text, you must open the **ReplaceText** function from the **CON Base** code unit. The first parameter contains the source text to pass to the event, the second contains the place holder to replace, and the third contains the text to replace the place holder.

In the example below, the place holder %36 is replaced with the name of the sales person assigned to this document, if the document is an order confirmation![](/images/connectornav/word_html/bodytext/bsp.png)

##### Save and archive

All body texts should be saved to a central folder in the usual T611 structure. This folder should normally already be available to you as "com_tmp" or "com_templates", otherwise simply create it.

Furthermore it is recommended that there is a separate archive folder in your system where all created body texts can be found, because tmp/templates is only for the current body texts. This also makes it easier to make changes to the body texts.

##### Importing the body text into the system

After you have finished creating the body text and storing them in the folder structure, they will now be stored in the user reports.

Connector NAV / Administration / User reports:

![](/images/connectornav/word_html/bodytext/ben_ber.png)<center>Connector NAV "User Reports"</center>.


Either create a new report in the upper left corner above the "New" button or select an existing one and choose "Edit" to enter the screen/map.

![](/images/connectornav/word_html/bodytext/ben_ber_setup.png)<center>Overview User Report Setup</center>.

In the "Body text file" field, you can now store the body texts you have created. To do this, simply click on the Assist button. Search for the template folder and apply the intended template for the respective report.

##### Changing and updating body texts

If you make changes to a body text that has already been deposited, these can also be made quite easily without intervening in the user reports. As long as the file name is kept, the body text will simply be taken over by the system.

![](/images/connectornav/word_html/bodytext/replace_file.png)<center>Replace files in destination folder</center>.


In the example above, changes were made to "Template_Invoice_JP". Now the new files with the same file name are moved from the archive folder to the central t611 folder and the old files are replaced. In the user report, the new body text will be applied because it has the same name as the old one.

{{<notice info>}}Always move the folder that belongs to the body text with, otherwise display errors may occur in the body text.{{</notice>}}
