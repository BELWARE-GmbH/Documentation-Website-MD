---
title: "Sending E-Documents"
date: 2024-05-10
description: 
draft: false
collapsible: false
weight: 2
---
### Sending E-Documents
Once the setup is complete and you have assigned the appropriately configured document sending profile to the desired debtors, you can use Connector 365 E-Documents for sending your E-documents.

Below, we will illustrate how Connector 365 creates and sends e-documents using a sales invoice as an example.

Create your sales invoice following your usual process. After that, post the sales invoice. First, an internal review by Microsoft will check whether all required fields are filled out. If there are no errors, our internal validator will then determine whether the sales invoice is valid.

{{< notice info Note >}}
The internal validator corresponds to the Connector 365 E-Documents Validator and is also available separately. For additional functions, please refer to the documentation of the Connector 365 E-Documents Validator.
{{< /notice >}}

The Connector 365 E-Documents Validator operates in the background, and you will only receive a notification if there is a negative validation result, meaning your sales invoice is not valid.

Otherwise, based on the previous setup and the debitor’s document sending profile, the system will automatically create an e-document and transmit it to the Peppol network. This process runs in the background.

To check what information your E-document contains, you can select it under posted sales invoices and view the record of your e-document.

#### Log
To open the log, access the linked E-document associated with your posted sales invoice. Here, you can view the status and log of your E-document in the service status.

|![](images/apps/E-Documents_Protokoll_DEU.png)|
|-|

| **Status**               | **Erläuterung**          |
|--------------------------|----------------------|
| Exported              | The e-document has been created and transmitted to the PEPPOL network.                                     |
| Response Pending      | The e-document transmitted in the PEPPOL network has not yet been approved or received by the counterpart.|
| Approved              | The e-document has been approved and received, depending on the provider used.            |


