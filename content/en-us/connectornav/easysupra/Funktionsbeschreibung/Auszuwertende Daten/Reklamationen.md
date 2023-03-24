---
title: "Reclamations"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### Reclamations

The easySUPRA module enables the connection of the Business Central standard purchasing complaints and thus the evaluation of a quantity-based complaint rate. To do this, you enter a standard purchasing complaint in Business Central. In the purchasing complaint, the reference to a specific goods receipt must be entered via 
the field "Clearing with item". If this manual clearing is 
is not set, Business Central automatically performs the standard clearing. Thereby 
for the item, depending on the warehouse issue method, the goods are cleared according to "FIFO" (First-InFirst-Out), for example.

![](images/connectornav/easysupra/Abb35.png)

**Figure 35: Purchasing complaint with manual clearing**

After the purchase complaint has been posted, a purchase return delivery, in this example the apples, is recorded as a goods issue. In the background, an article clearing item is created and thus the link to the goods receipt is established. Figure 36 shows the posted goods receipt with the claimed quantity from the posted purchase return. 
return delivery is shown.

![](images/connectornav/easysupra/Abb36.png)

**Figure 36: Posted purchase delivery with claimed quantity**

How the number under the field "claimed quantity" is composed can be viewed via the button "Show complaints". An overview of all purchase returns that have a reference to the selected goods receipt of the given purchase delivery line opens (see Figure 36 and Figure 37).

![](images/connectornav/easysupra/Abb37.png)

**Figure 37 : Balanced item entries**

Via the cleared article items you come back to the purchase return delivery document
back. The reclamation rate is filled by the ratio between the fields "Quantity" and 
"Balanced quantity" fields. For this purpose, under the hard criteria, you can set up 
to do it. An example of setting up the reclamation rate is shown . Here the complaint rate is divided into four levels. Each company can set up the level of detail for itself. 
set up.

![](images/connectornav/easysupra/Abb38.png)

**Figure 38: Setup example complaint rate**

