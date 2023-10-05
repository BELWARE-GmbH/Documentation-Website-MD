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
|99| **Processing error**: See [error list](en-us/apps/e-post/working-with-e-post/archive#errorlist)|

A quick overview of successfully sent, still open and unsuccessfully sent documents of the last 30 days can be found on the E-Post status tiles in the role center.
![](images/apps/E-POST/en-us/role_center.png)

<a id="errorlist"></a>
## Error list

Below you will find a list of codes related to possible errors, warnings and information.

| Error code type | Error code description | Prefix |
|-|-|-|
| Error | Error occurred, action required, processing aborted | E |
| Warnings | Error occurred, possible need for action, no processing abort | W |
| Infos | Pure information, no need for action | I |

##### Error
| Error code | Description |
| - | - |
| E001 | Invalid access data - Please check your login data |
| E002 | Invalid access data - VendorSubID invalid |
| E003 | Too many SMS requests - Too many SMS codes were requested within a short time. The request via this identifier is blocked for 15 min.
| E004 | This EKP has been blocked by Deutsche Post AG |
| E101 | Invalid token - expired |
| E201 | Invalid status query - No shipment was found using this search criterion |
| E301 | No PDF format detected |
| E302 | Detected violation of DVF blocking range |
| E303 | Maximum file size of 20 MB exceeded |
| E304 | Maximum page count of 94 pages exceeded |
| E305 | Invalid country code: {placeholder for error details}|
| E306 | Invalid recipient address format detected: {placeholder for error details}|
| E307 | 1st page delivered in landscape format - file name: {placeholder for error details}|
| E308 | No DinA4 format - file name: {placeholder for error details}|
| E309 | Duplicate detected in submitted file name - {placeholder for error details}|
| E311 | Illegal combination: registered mail and foreign country|
| E312 | Illegal combination: dublex + registered mail|
| E313 | Violation of letter scheme: {placeholder for error details}|
| E314 | Maximum cover sheet file size of 1 MB exceeded|
| E315 | Error in shipment processing: {placeholder for error details}|
| E316 | Error in shipment upload: {placeholder for error details}|
| E317 | Illegal registered letter format in RegisteredLetter field: {placeholder for error details}|
| E318 | Rejection in print center: {placeholder for error details}|
| E319 | EKP is not released for the print center. Live shipping is currently not yet possible|.
| E320 | The maximum number of test shipments allowed per day has been reached. No further test shipments are possible today|
| E321 | (Overhauled) Not all necessary return address fields for registered mail by return receipt were specified|
| E322 | Too high query frequency of letter status requests. The minimum time between 2 status queries is 5 seconds|.
| E323 | No content detected in recipient area of PDF (White area)|
| E399 | General error: {placeholder for error details}|
| E501 | API status: Inactive {placeholder for error details}|
| E601 | PlugIn error: {placeholder for error details}|
| E900 | Unspecified error: {placeholder for error details}|

##### Warnings

| Warning Code | Description |
|-|-|
|W101 | PDF/A conversion warnings: {placeholder for details} |
|W201 | Overrun address range: {placeholder for details}|
|W202 | Exceeding blocking area left: This area is whitened in the print center|
|W220 | The specified data for the return receipt of registered mail will only be determined automatically from the viewing window of the letter as of 01.10.2022. This applies in particular to the return address from the sender line that can be determined in the window. Possible explicit entries will no longer be used from this date onwards.
|W301 | Sender address not available |
|W501 | API status: maintenance notification {placeholder for details} |
|W601 | PlugIn warning: {placeholder for details} |

##### Info

| Info Code | Description |
|-|-|
| I101 | Additional option: PDF -> PDFA conversion |
| I501 | API status: OK |
| I601 | PlugIn Info: {placeholder for details} |
| I701 | Track And Trace Status Message: {placeholder for details} |
| I751 | Destination Status Message: {placeholder for details} |