---
title: "Hard criteria - enterprise resource planning"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### Hard criteria - enterprise resource planning

"Hard" criteria is information that already exists in the system and is arrived at by "counting", "measuring" or "weighing", for example in the ordering process. Examples 
of hard criteria are delivery reliability and the complaint rate.
Here you can evaluate the information from the four following reference tables "purchase line", "purchase delivery line", "purchase line archive" and "quality log". A frequently 
example is the quantity reliability. This checks whether the supplier delivers the quantity 
that he has promised the purchaser. For this purpose, the fields "Quantity" and "Committed delivery quantity" (individual field) from the table "Purchasing delivery line" are compared with each other. Via the 
setup wizard you can define this hard criterion (see 3.1.2).

![](images/connectornav/easysupra/Abb25.png)

**Figure 25: Edit hard criteria - set fidelity**

Any field of the above tables can be used as a reference field. 
As already mentioned, only fields of the same table can be compared.

![](images/connectornav/easysupra/Abb26.png)

**Figure 26: Criterion details for set fidelity**

In the operative ordering process, the fields "Quantity" and "Committed delivery quantity" (individual field) are entered by the employees before the goods receipt is posted, or are 
automatically preassigned by Business Central.

![](images/connectornav/easysupra/Abb27.png)

**Figure 27: Booked purchase delivery**

In Figure 27, the delivered quantity corresponds to the committed quantity. Thus, the delivery is considered a "quantity faithful delivery" as set up in Figure 26.
