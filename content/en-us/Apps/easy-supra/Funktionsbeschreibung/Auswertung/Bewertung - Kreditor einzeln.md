---
title: "Valuation - Vendor individual"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 3
---
### Valuation - Vendor individual

The Valuation - Vendor individual report is based on the Valuation - Setup report 
and provides detailed information about a specific vendor rating for a selected vendor.

![](images/connectornav/easysupraWeb/Abb42.png)

**Figure 42: Options mask for report -**
**"Vendor Evaluation - Vendor "**

The report provides detailed information on each evaluated criterion. Using the example of
Figure 43, all deliveries corresponding to an "on-time delivery" can be identified. As soon as data records (e.g. deliveries) are included in the evaluation of a criterion, these data records are 
criterion, these data records are output.

![](images/connectornav/easysupraWeb/Abb43.png)

**Figure 43: Vendor Evaluation Report - Vendor (details hidden)**.

The report also lists all records that exceed or fall below the previously defined value range in the "Unrated Entries" section. Via "Show details" you can 
possibly incorrect data, such as incorrect quantities in an article order. 
an article order can be identified. In certain cases, of course, it can make sense to 
to deliberately exclude certain entries from the evaluation.
To display further detailed information, the "Show details" button must be pressed (see Figure 44). This report is also interactive: With a click on the 
the linked document number, you will be taken directly to the Dynamics 365 Business Central mask 
of the corresponding data record. By clicking on the link behind the item number 
opens the respective item card of the item in Business Central.

![](images/connectornav/easysupraWeb/Abb44.png)

**Figure 44: Vendor Evaluation Report - Vendor (details shown)**.

The "Variant" column lists the variants of the item ordered for each document number.
item are listed. These can be defined via the item card of the respective item. A click on the variant of an item opens the variant list again.

