---
title: "Additional e-mail recipients (CC/BCC)"
date: 2020-02-28T00:00:00+09:00
description: 
draft: false
collapsible: false
weight: 5
---
### Set up additional e-mail recipients

In addition to the functionality to set up destination addresses per job mode and usage, **Connector 365 Addressee Control** offers another feature that allows you to set up even more email recipients per customer and usage. To learn how to set this up, please see below.

### Setup
You can store additional customer destination addresses in the document layouts of the desired customer.

The **Connector 365 Addressee Control** app adds another field to the **Document Layouts**: **Further targets**.
|![](/images/apps/Addresse_Control/Document_Layouts_Further_Targets_0_ENU.png)|
|-|

The content of the field indicates whether other destination addresses are set up at the current time. In this case
the content of the ***Further targets*** field is: **0**, because no additional destination addresses have been set up yet.

Now click on the content of the field. Another page will open:
|![](images/apps/Addresse_Control/FurtherTargets_ENU.png)|
|-|

You can now add additional target addresses for each report ID here. You can define the recipient type per recipient address. The following options are available to you:

| Field | Function|
|-|-|
| To | The e-mail address, which is stored as another recipient address. |
| CC   | The configured e-mail address (**Target**) is accepted as CC recipient. |
| BCC  | The configured e-mail address (**Target**) is accepted as BCC recipient. |

<p></p>

You can create as many lines as you want and configure them differently per line.
<p></p>

***Example setup***:
|![](images/apps/Addresse_Control/FurtherTargets_Example_ENU.png)|
|-|

Once you have set up your desired additional recipients, you can close the page.
If you now go back to the **Document Layouts** of the customer/vendor you just set up, the value of the **Further targets** field should have changed from 
**0** to the **number of other destination addresses** set up, in this example to 3: 
|![](images/apps/Addresse_Control/Document_Layouts_Further_Targets_Yes.png)|
|-|

Now you can repeat the same steps for other uses (e.g. sales credit memo) if needed.

{{< notice info Note >}}
The destination addresses are stored per customer/vendor **and** per report usage. A customer/vendor can therefore store different destination addresses for each report usage.
{{< /notice >}}

<br></br>
Learn [here](/en-us/apps/addressee-control/working-with-addresse-control/further-targets) how to work with the other destination addresses that have been set up.