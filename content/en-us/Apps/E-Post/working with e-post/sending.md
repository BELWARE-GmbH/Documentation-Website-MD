---
title: "Sending"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### Working with E-POST

### Sending

With our Connector 365 E-POST App* you can send different types of documents. However, in our application example we will focus on invoices.
The other document types can be send in the same way.

First select the document you want to send.

The function for sending letters by post can be found under **Print/Send** in the menu bar. Open it and select **Send as letter** to open the dialog for sending letters.

![](images/apps/E-POST/en-us/app_send_letter.png)

### The dialog

In the dialog you have the possibility to adjust certain options for sending the letter, e.g. whether you want to send the letter in black and white or in color.

![](images/apps/E-POST/en-us/app_dialog.png)

After you have made all desired changes, you can execute the dispatch with a click on **OK**. Your invoice will now be sent to Deutsche Post and from there to the recipient's mailbox.

{{< notice info "Note" >}}
 _The App automatically extracts the recipient's address from their data_
{{< /notice >}}
#

#### Aktionen

| Field             | Description                                                                                                                    |
|-------------------|--------------------------------------------------------------------------------------------------------------------------------|
| Color             | Here you choose whether the letter is printed in color or b/w                                                                  |
| With Coverletter  | Sending letters with a cover sheet ensures that the letter does not exceed the areas required for printing by Deutsche Post.   |
| Duplex            | Allows letters to be sent as a duplex                                                                                          |
| Registered Letter | Here you can set up the different ways of registered letters                                                                   |
| Contact Name      | The name of the recipient                                                                                                      |
| Adressline 1      | The street of the recipient                                                                                                    |
| Adressline 2      | More information about the address                                                                                             |
| Post Code         | The postal code of the recipient                                                                                               |
| City              | The city of the recipient                                                                                                      |
| Country           | The country of the recipient                                                                                                   |



***The Connector 365 E-POST App is powered by the E-POSTBUSINESS API, a service of the Deutsche Post**