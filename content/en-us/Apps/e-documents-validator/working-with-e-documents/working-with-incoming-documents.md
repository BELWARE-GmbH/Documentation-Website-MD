---
title: "Working withg Incoming Documents"
date: 2024-10-16
description: 
draft: false
collapsible: true
weight: 1
---

# Working with Incoming Documents

The **Connector 365 E-Documents Validator** provides tools to support and enhance the import of electronic documents. It enables the validation of incoming documents, allowing for quick and easy identification of even subtle sources of errors. 
Additionally, it supports the **visualization** of XML documents by generating a human-readable format of e-documents that can be attached. 
If incoming documents contain embedded **attachments**, it also allows for their extraction so they can be directly imported into Business Central, ensuring easy access to your attachments at all times.

Below, you will learn how to use the aforementioned features in Business Central.

## Visualization

Navigate to the **Incoming Documents** page via the search bar:

![](images/apps/e-documents-validator/de/inc-docs-search-bar.png)
|-|

If you do not have any incoming documents yet, you can easily import an electronic document. Click on **New** -> **Create from File**:

![](images/apps/e-documents-validator/de/inc-docs-import-new-file.png)
|-|

After importing a document, you will see a new entry on the page:

![](images/apps/e-documents-validator/de/inc-docs-list-entries.png)
|-|

Now, navigate to the action bar, click on **Actions**, and select **Attach Validation Report**:
![](images/apps/e-documents-validator/de/inc-docs-action-visualize.png)
|-|

If successful, a visualization of the document will be created and attached to the process. The newly generated file can be viewed in the FactBox under **Incoming Document Files**:

![](images/apps/e-documents-validator/de/inc-docs-factbox-visualization.png)
|-|

Click on the newly created attachment to view its content:

![](images/apps/e-documents-validator/de/visualization-file.png)
|-|

The visualization is structured into several tabs, as shown in the image above. This file is divided into **Overview, Details, Additions, Attachments, and Routing Slip**. Click on the different tabs to display their respective content.

{{< notice info Note >}}
ou can also automate the generation of visualization files upon import. Click [here](/en-us/apps/e-documents-validator/first-steps/setup/base-setup) to learn more about it.
{{< /notice >}}

## Validation Report

To validate incoming documents, first open the Incoming Documents page:

![](images/apps/e-documents-validator/de/inc-docs-list-entries.png)
|-|

Navigate to the desired entry or document you wish to validate. In the action bar, go to **Actions** and click on **Attach Validation Report**.

![](images/apps/e-documents-validator/de/inc-docs-action-validate.png)
|-|

f successful, a validation report for the document will be generated and attached to the process. The newly created file can be viewed in the FactBox under **Incoming Document Files**. The validation report includes a timestamp and the words **Validation Report** in the filename, and is of type **XML**:

![](images/apps/e-documents-validator/de/inc-docs-factbox-validation.png)
|-|

Click on the newly created attachment to view its content:

|![](images/apps/e-documents-validator/de/validation-file.png)|
|-|

{{< notice info Note >}}
You can also automate the generation of validation reports upon import. Click [here](/de-de/apps/e-documents-validator/first-steps/setup/base-setup) to learn more.
{{< /notice >}}