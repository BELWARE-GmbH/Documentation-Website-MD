---
title: "Analyze errors"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 8
---

##### Analyze validation results in case of error  


During the validation of the XInvoice file, it can of course also happen that an XInvoice is classified as non-compliant. This happens when important information is missing from the invoice. For example, validation will fail even if the customer's city is not specified.  
To simulate a case where validation fails, we modify the above procedure to "forget" to specify a routing ID. To do this, we again open the **Communication Matrix** for our example calculation **103003**, and remove the value for the **route ID.** column in our entry.

![](/images/connectornav/data_exchange/xr_valid1.png)

Now we press **OK** and click the **PDF** button again to create an XInvoice file.

![](/images/connectornav/data_exchange/xr_valid2.png)

Now we find the status value **-** for the job **4046**.

![](/images/connectornav/data_exchange/xr_valid3.png)

This means that the generated XInvoice could not be validated successfully. Press **View Files** to view the generated files.

![](/images/connectornav/data_exchange/xr_valid4.png)

Then highlight the test report, recognizable by the extension "_report.html" and press **View File**:

![](/images/connectornav/data_exchange/xr_valid5.png)

![](/images/connectornav/data_exchange/xr_valid6.png)  

This test report shows the following error:  
"[BR-DE-15] The Buyer reference element (BT-10) must be submitted".   
By **Buyer reference** here we mean the routing ID, which we did not specify in this example.