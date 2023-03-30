---
title: "Hard criteria - inventory management"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### Hard criteria - inventory management

"Hard" criteria are information that already exists in the system and is arrived at by "counting", "measuring" or "weighing", for example in the ordering process. Examples 
of hard criteria are the delivery reliability and the complaint rate.
Here you can evaluate the information from the following four reference tables: "Purchase line", "Purchase delivery line", "Purchase line archive" and "Quality log". A frequently 
example is the quantity reliability. This checks whether the supplier delivers the quantity 
that he has promised the purchaser. For this purpose, the fields "Quantity" and "Committed delivery quantity" (individual field) from the table "Purchasing delivery line" are compared with each other. Via the 
setup wizard you can define this hard criterion (see 3.1.3). 

![](images/connectornav/easysupraWeb/Abb26.png)

**Figure 26: Edit hard criteria - set fidelity**.

Any field from the above tables can be used as a reference field. 
As mentioned above, only fields from the same table can be compared.

![](images/connectornav/easysupraWeb/Abb27.png)

**Figure 27: Criterion details for set fidelity**.

In the operative order process, the fields "Quantity" and "Committed delivery quantity" (individual field) are entered by the employees before the goods receipt is posted or are 
automatically by Business Central. 

![](images/connectornav/easysupraWeb/Abb28.png)

**Figure 28: Posted purchase delivery**.

Figure 28, the delivered quantity is equal to the committed quantity. Thus, the delivery is considered a "quantity faithful delivery" as set up in Figure 27.
