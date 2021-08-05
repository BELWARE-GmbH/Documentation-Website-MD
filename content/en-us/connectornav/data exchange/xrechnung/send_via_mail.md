---
title: "Direct shipping via e-mail"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 7
---

##### Send XRechnung directly by e-mail (Connector e-mail module)

If you have also installed the Connector365 module **Email**, you can send an XRechnung directly by e-mail through the Connector after it has been generated. For this you have to make an adjustment in the communication matrix.

![](/images/connectornav/data_exchange/xr_mail1.png)

Simply change the value of the **Job Mode** field from **PDF** to **Email.** In addition, you can optionally enter a default destination address. Now the marked invoice can be converted to **XRechnung** format via the **Email** button, or via the **Batch** button, if the batch mode entry has been marked, and sent on directly via e-mail.

![](/images/connectornav/data_exchange/xr_mail2.png)

After clicking on the **Email** or **Stack** button, a dialog for sending e-mails appears. In the field **Destination address** the destination address from the communication matrix is taken over. However, the address can also be changed for this dialog if the default address for the customer is not to be used.

![](/images/connectornav/data_exchange/xr_mail3.png)

After clicking **OK**, the XRechnung will be generated and validated as in **PDF job mode** (if set up). If the validation is successful, the recipient will receive the XRechnung by mail. If the validation should fail, the same applies as with XRechnung in **PDF job mode**. Failed jobs will be marked with a "**-**" in the **Joblist**.

![](/images/connectornav/data_exchange/xr_mail4.png)

With a click on the "**-**" from the column status value, the feedback overview can be opened. There you can see the validation status from the column **STATUSTEXT**.

![](/images/connectornav/data_exchange/xr_mail5.png)

If an XRechnung cannot be successfully validated, then **no** email will be sent. This does not apply if XRechnung validation has been turned off in the setup.