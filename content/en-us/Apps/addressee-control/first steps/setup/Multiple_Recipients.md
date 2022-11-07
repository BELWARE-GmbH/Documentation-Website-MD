---
title: "Additional e-mail recipients (CC/BCC)"
date: 2020-02-28T00:00:00+09:00
description: 
draft: false
collapsible: false
weight: 5
---
### Set up additional e-mail recipients

In addition to the functionality to set up destination addresses per job mode and usage,
**Connector 365 Addressee Control** offers another feature that allows you to set up even more email recipients per customer and usage. To learn how to set this up, please see below.

### Setup
You can store additional customer destination addresses in the document layouts of the desired customer.

The **Connector 365 Addressee Control** app adds another field to the **Document Layouts**: **Additional Destinations**.
|![](/images/apps/Addresse_Control/Document_Layouts_Further_Targets_No.png)|
|-|

The content of the field indicates whether other destination addresses are set up at the current time. In this case
the content of the ***Other destinations*** field is: **No**, because no destination addresses have been set up yet.

Now click on the content of the field. Another page will open:
|![](images/apps/Addresse_Control/FurtherTargets.png)|
|-|

There are now three fields available:

| Field | Function|
|-|-|
| Target | The e-mail address, which is stored as another recipient address |
| CC   | The configured e-mail address (**Target**) is accepted as CC recipient |
| BCC  | The configured e-mail address (**Target**) is accepted as BCC recipient |

{{< notice info Note >}}
If an e-mail address is set up, but neither **CC** nor **BCC** are selected, the e-mail address set up will be stored as the direct recipient.
{{< /notice >}}

<br></br>
You can create as many lines as you want and configure them differently per line.
***Example setup***:
|![](images/apps/Addresse_Control/FurtherTargets_Filled.png)|
|-|

Once you have set up your desired additional recipients, you can close the page.
If you now go back to the **Document Layouts** of the customer/vendor you just set up,
the value of the **Additional Destinations** field should have changed from **No** to **Yes**: 
|![](images/apps/Addresse_Control/Document_Layouts_Further_Targets_Yes.png)|
|-|

Now you can repeat the same steps for other uses (e.g. sales credit memo) if needed.

{{< notice info Note >}}
The destination addresses are stored per customer/vendor **and** per report usage. A customer/vendor can therefore store different destination addresses for each report usage.
{{< /notice >}}

<br></br>
Learn [here](/en-us/apps/addressee-control/working-with-addresse-control/further_targets) how to work with the other destination addresses that have been set up.