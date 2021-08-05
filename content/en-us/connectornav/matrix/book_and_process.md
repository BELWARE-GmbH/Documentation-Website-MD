---
title: "Book and process"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 8
---

#### Book and process functions

Similar to the standard functions post & send and post & print, the post & process function allows you to process a document after posting. In contrast to the standard, the function allows you to process the document through all Connector NAV interfaces. In addition, you have the possibility to send a document multiple times via different channels, e.g. letter & e-mail.

How exactly the respective document should be processed, you can set up in our communication matrix.

![](/images/connectornav/matrix/buchen1.png)<center>The function book & process in a template</center>.

By default, we support post & process in the following documents, via our templates.

- Sales orders

- sales invoices

- sales credit notes

- Sales complaint

- Reminders (register & process)

##### Setup before using the function

Before the Post & Process function can be used correctly, an entry must first be made in the communication matrix so that it is clear how the posted document is to be processed.

This entry in the matrix must be made in the respective subsequent report, e.g. for sales invoices in the posted sales invoices.

![](/images/connectornav/matrix/buchen2.png)<center>Example entries in the matrix for book & process</center>.

It is now necessary to set per customer & report how documents should be processed. In the screenshot you can find an example setup of the matrix that is now accessed when the Post & Process function is used.

##### Use of the function

Now that the communication matrix has been set up, the function can be used.

**A concrete example:**

The invoice for the customer Harburger Bäderwelt is to be posted & processed, so we look in the communication matrix to see what has been set up for the customer. In this case, it is set here that geb. sales invoices are sent by mail to a selected address.

So now if post & process is triggered, the first step is to post the invoice, then send it to the selected email address and send it as a letter.

Whether & how the communication matrix is set up for a particular customer can be checked at any time by clicking on the "Communication matrix" button.

![](/images/connectornav/matrix/buchen3.png)<center>The settings in the matrix for the Harburger Bäderwelt</center>.
