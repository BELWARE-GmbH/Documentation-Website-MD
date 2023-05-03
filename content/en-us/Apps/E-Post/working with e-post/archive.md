---
title: "Archive"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---
### Working with the E-POST API

### Archive

After sending the invoice, you can check the status in the joblist. This can be found in the factbox area directly on the overview of the documents. Here you can see when the letter was sent, who sent it and what the status is.

In the factbox area of the documents you can find the **Connector 365 Activities**. There you find the brief overview to each process. You can find this overview in the list view as well as the card view of the documents.
By clicking the field **Accepted at** you cand navigate the the complete overview. By clicking the field **Status** you can navigate to the detailed state overview of the process.

![](images/apps/E-POST/en-us/app_activities_factbox.png)

The page **Connector 365 Activities** provides you with a detailed overview of all letters that have been sent. It shows which options were used and displays any error messages that may have occurred. If the option **Save file in job list** is active in the setup, you can also view the sent document. To do this simply click on the name of the file under **File name**.

Clicking on the status marker of an entry opens the table of feedback entries.
![](images/apps/E-POST/en-us/feedback_table_en.png)

Of interest here are the status ID reported back by the E-Post API, the descriptive status text and time details for various processing steps. In the case of processing errors, these are logged with the associated code, error level and description.

The status is subdivided by the Deutsche Post API into the following levels:
|Status|Meaning|
|------|-------|
|1|**Acceptance of the shipment:** successful transmission of the shipment <br/>Status placement: upon successful upload of the shipment|
|2|**Processing of the shipment:** PDF has been checked and released for shipment to the printing center <br/>Status placement: a few minutes after acceptance of the shipment|
|3|**Delivery to print center:** Receipt of the shipment has been reported back to the API by the print center <br/> Status placement: within the next few hours after the shipment has been processed|
|4|**Processing in print center:** Shipment has been reported back as "shipped" by print center <br/> Status placement: one to two business days after posting to print center|

A quick overview of successfully sent, still open and unsuccessfully sent documents of the last 30 days can be found on the E-Post status tiles in the role center.
![](images/apps/E-POST/en-us/role_center.png)
