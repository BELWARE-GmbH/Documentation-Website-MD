---
title: "Different shipping"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 6
---

#### Deviating dispatch - using the destination address matrix

The previous examples all worked without the matrix because direct related contacts were always accessed.

Now, however, there is a deviating company logic. The service recipient is not the same as the invoice recipient, but a different company. Also the customers/suppliers play a role in the destination address. Despite person contact, there is a desire to send documents but basically to deviating/global addresses. Such requirements are not provided for in the Dynamics NAV / 365 BC standard.

At this point, the destination address matrix is used in the first step and the communication matrix in the second step. Thus, a control of recipient addresses is possible by simple configuration.

With the following examples we explain the use of the matrix:

##### Example 1 - Offer directly to the invoice recipient 

If there is a different invoice recipient and you want the quote to go to the invoice recipient's contact instead of the service recipient's contact, you need to set up the destination address matrix for this. You can find it in the user reports, in this case for quotations.

![](/images/connectornav/matrix/umleitung1.png)<center>User report quotations with expanded destination addresses</center>.


Now some kind of redirection has to be set up there.

First, the intended job mode is selected. In this case "eMail." Furthermore you need the tableID. In this example the 36, as well as the "Target from field no.". For our example we need the 5053 - "Rech. an Kontaktnr.". The last field determines what the destination address should be filled with, in this case the 102 - "E-Mail".

![](/images/connectornav/matrix/umleitung2.png)<center>Filled destination addresses with intended settings</center>.


Again back to our quote which should go to the invoice recipient. In our case the service recipient is Möbel-Meller KG and the invoice recipient is Candoxy Canada Inc.

![](/images/connectornav/matrix/umleitung3.png)<center>Quotation 1002 for Möbel-Meller - "Delivery and Invoice" unfolded</center>.


If email dispatch is now triggered, rob.young\@candoxy.ca will be selected as the destination address, since Mr. Young was specified as the contact at Candoxy Canada Inc. If no contact is selected, the email will still be sent to the contact of the service recipient. In the area of "Invoice to" only either the debtor or the contact can be selected as recipient. There is no priority control.

![](/images/connectornav/matrix/umleitung4.png)<center>Destination address is rob.young\@candoxy.ca</center>.

{{<notice info>}}The settings selected in the user report are always valid for ALL offers, depending on the settings of the user report. It is not possible to filter by contact or debtor. This is only possible in conjunction with the communication matrix.{{</notice>}}

##### Example 2 - Document dispatch to deviating addresses & collective addresses - use of the communication matrix

Now we have an offer that is to be sent to an overlapping collective address (offers\@moebel-meller.de). Here we need the communication matrix additionally. First, however, the user report for the offer must be adapted again. There only "Destination from field no." must be set to "Sell-to Customer no.". The rest can remain as set before. Now select the intended offer in the offer overview and click on the "Communication matrix" field.

![](/images/connectornav/matrix/umleitung5.png)<center>Quotation view - communication matrix highlighted</center>.

The call to the communication matrix is located at all points in our templates and can be opened at any other intended pages. Our recommendation is to put the matrix at Contacts, Accounts Receivable and Accounts Payable. If you open the communication matrix at these places, it is already pre-filtered to the intended contact/DEB/KRE. Here in this example the Möbel-Meller KG.

In our example, all offers are to be sent to a central collective address "Angebote@moebel-meller.de". For this purpose the following settings are made in the communication matrix

{{<notice info>}}If the destination address matrix is set up correctly then the destination address of the respective contact is automatically drawn, thus saving a step in the setup. However, the destination address field can also be customized manually, either directly or through the Assist button.{{</notice>}}
####
![](/images/connectornav/matrix/umleitung6.png)<center>Make this setting in the communication matrix</center>.

The communication matrix allows us to additionally override the destination address matrix if additional or different rules come into play in the dispatch. Especially also for an automated batch dispatch or for post & send or post & process to control single or batch dispatch. In the overview you can also see the destination address matrix again. This is also decisive for the communication matrix.

There are further options in the matrix, which we will not go into in detail in this documentation. A detailed explanation of the standard fields and the extra functions can be found in the section "Options & advanced options of the communication matrix".

![](/images/connectornav/matrix/umleitung7.png)<center>Communication matrix for Furniture-Meller with the intended settings</center>.

After setting up the communication matrix, you can trigger the sending of the offer. The email will now be sent to the destination address we just set angebote\@moebel-meller.de.

![](/images/connectornav/matrix/umleitung8.png)<center>Destination address is angebote\@moebel-meller.de</center>