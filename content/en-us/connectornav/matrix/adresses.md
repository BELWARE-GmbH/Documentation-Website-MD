---
title: "Recipient e-mail addresses"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 4
---

#### So where do the recipients' e-mail addresses come from? (Using without target and communication matrix)

The Connector NAV / 365 BC works analogously to the standard dispatch. We will use various examples to explain how the mail dispatch process works. For the following 3 examples we limit ourselves to the report Quotations. The service recipient is the same as the invoice recipient. The process is the same for each report.

##### Example 1 - Offer to customer without person contact

You have created your offer and now you want to send it. The customer has been entered, but no contact has been entered in the "Sales to" area.

![](/images/connectornav/matrix/adressen1.png)<center>The offer goes to customer 10000 - Furniture-Meller.</center>


Now when the mail dispatch is triggered, the email that is stored with the customer is pulled.

![](/images/connectornav/matrix/adressen2.png)<center>Target address is info\@moebel-meller.de</center>


##### Example 2 - Offer to customer with person contact

The offer is sent to an already existing customer and is sent to a person contact. Under "Sales to", enter the contact person who will be the contact person for this offer.

![](/images/connectornav/matrix/adressen3.png)<center>Contact person is Michael Emanuel</center>.

The contact stored under "Sales to" has a higher priority than the debtor. For shipping, the address of Mr. Emanuel will be drawn.

![](/images/connectornav/matrix/adressen4.png)<center>Destination address is michael.emanuel\@contoso.com</center>


##### Example 3 - Offer to a company without contact

You have prepared an offer for a potential new customer for whom there is no debtor yet. There is a specific contact person, so the offer specifies the contact of the company.

![](/images/connectornav/matrix/adressen5.png)<center>In the offer the contact of the company is stored</center>.


Now when the dispatch is triggered, the email is sent to the email address stored in the company contact, in this case add-on.marketing\@contoso.com.

![](/images/connectornav/matrix/adressen6.png)<center>The destination address is that of the company</center>.

##### Example 4 - Offer to company contact without customer

You have created your quotation again, but it is going to a potential new customer for whom there is no customer yet. So only the contact of the contact person at the company is stored in the offer.

![](/images/connectornav/matrix/adressen7.png)<center>The offer goes to KT100190 - Chris McGurk.</center>


If the mail send button is now pressed, Chris McGurk's email address will consequently be selected.

![](/images/connectornav/matrix/adressen8.png)<center>Target address is chris.mcgurk\@contoso.com</center>

