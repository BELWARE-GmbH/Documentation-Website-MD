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

With our API you can send invoices, credit notes, reminders, quotes and orders. However, in our application example we will focus on invoices.

![](images/apps/epostrechnung.PNG)

First select the invoice you want to send.

The function for sending E-POST letters can be found under **"Print/Send"** in the menu bar. Open it and select **"Send as E-Post letter"** to open the dialog for sending E-POST letters.

![](images/apps/epostprintsend.PNG)

### The dialog

In the dialog you have the possibility to adjust certain options for sending the letter, e.g. whether you want to send the letter in black and white or in color.

![](images/apps/epostdialog.PNG)

After you have made all desired changes, you can execute the dispatch with a click on **"OK"**. Your invoice will now be sent to Deutsche Post and from there to the recipient.

{{< notice info "Note" >}}
 _The APP automatically extracts the recipient's address from their data_
{{< /notice >}}
#

#### Aktionen

| Feld              | Beschreibung                                                                                                                   |
|-------------------|--------------------------------------------------------------------------------------------------------------------------------|
| Color             | Here you choose whether the letter is printed in color or b/w                                                                  |
| With Coverletter  | Sending letters with a cover sheet ensures that the letter does not exceed the areas required by Deutsche Post.                |
| Duplex            | Allows letters to be sent as a duplex                                                                                          |
| Registered Letter | Here you can set up the different ways of registered letters                                                                   |
| Contact Name      | The name of the recipient                                                                                                      |
| Adressline 1      | The street of the recipient                                                                                                    |
| Adressline 2      | More information about the address                                                                                             |
| Post Code         | The postal code of the recipient                                                                                               |
| City              | The city of the recipient                                                                                                      |
| Country           | The country of the recipient                                                                                                   |