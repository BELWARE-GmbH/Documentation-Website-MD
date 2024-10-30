---
title: “Global Setup
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### Global Setup
To ensure that your documents are sent in your corporate design, you must first set up the Connector 365 PDF. The steps required for the basic setup and subsequent use are explained below. To set up the PDF app globally, navigate via the search for **Connector 365 setup**. Then click on **PDF setup** to open the tab for the setup.

|![](images/apps/pdf_SaaS/C365_pdf_DEU.png)|
|-|

In the following we will go into the individual points of the setup options.

#### Conformity
Under the Document settings field, you can specify the **Compliance level**. This specifies the conformance level that a PDF file should receive when it is created.

Information on the individual conformance levels can be found in the documentation on the Adobe website: [Conformance levels](https://www.adobe.com/de/acrobat/resources/document-files/pdf-types/pdf-a)

#### Certificate
You have the option of storing a signature certificate in the setup. The digital signature not only guarantees the author for subsequent authentication, but also the content of the document at the time of signing. This is because the certified document cannot be changed, which ensures the integrity of the signature. 

##### Signature certificate
You can store the signature certificate ***only*** in the Connector 365 setup. Click on the box here and select one of the signatures you have stored. If you have not yet stored a signature, click on **New**. Then add your signature file by drag & drop or by browsing your files.

The following window opens after you have added a file:

|![](images/apps/pdf_SaaS/Add_Signaturecertificate_DEU.png)|
|-|

In contrast to the figure above, the file name and file size are filled with the data of your signature. Use the code to describe which signature it is, so that you can identify it if you use more than one. You can also enter further information about the signature in the description. By assigning a password, you ensure that the signature certificate can only be changed by authorized persons.

You can store several signature certificates, but only actively use one in the app. To change the signature certificate, select another signature certificate that is already stored or add it first using the steps above.

#### Stationery
Before you can set up the stationery configuration, it is necessary to store your stationery in the system in PDF format. You can navigate to the **Stationery** page via the search. 

If you are using the PDF app for the first time, no stationery is stored there yet. Therefore, click on the **New** button and store the desired stationery using drag & drop. Alternatively, click on the field and browse your files before adding the desired file here.

|![](images/apps/pdf_SaaS/Add_stationery_DEU.png)|
|-|

Assign a code and a unique name to your stationery. The more unique the selected code, the easier the subsequent configuration of the stationery. It is also possible to add a description for further information. You will also find information on the file name and file size here.

|![](images/apps/pdf_SaaS/Add_stationery_example_DEU.png)|
|-|

##### Stationery Configuration
After you have stored your stationery. Navigate to the page **Stationery Configuration** by using the search function. No stationery configuration is stored here for the initial configuration.

|![](images/apps/pdf_SaaS/Stationery_tellme_DEU.png)|
|-|

You can add a new stationery configuration using the **New** button. The following steps and options are required for the stationery configuration:
1. assign a **code** to your stationery configurations.
2. optionally, you can enter a description in which you further define the code.
3. in the table under the **Writing paper type** tab, specify the page or pages for which your writing paper is to be used. 
The following options are available to you:
    - All pages
    - First page
    - Follow the page
    - Penultimate page
    - Last page

There are numerous options for configuring the pages of your stationery. You can store one stationery for each option or section of the pages. Below are various examples to illustrate the possible configurations.

###### Example 1
The simplest configuration is if you want to use the same stationery for all pages. To do this, select **All Pages** as the stationery type and enter the desired stationery using a code.

|![](images/apps/pdf_SaaS/Example_1_allpages_DEU.png)|
|-|


###### Example 2
However, there is also the option of using the configuration to store a different stationery for individual pages or pages. Below you can see various example configurations where the pages have been assigned different stationery.

|![](images/apps/pdf_SaaS/Example_2_differents_DEU.png)|
|-|

#### Attachments
At this point in the Connector 365 setup, you can store your attachments and configure them.
You can use the lookup to select existing attachment configurations or create a new configuration.

The lookup takes you to the **Attachment Configuration** page

|![](images/apps/pdf_SaaS/Attachment_configuration_DEU.png)|
|-|

{{< notice info "Note" >}}
 The term main document here refers to the report generated by the system for the respective use.
{{< /notice >}}
</p>

First, you must assign a code to your attachment configuration so that you can attach attachments before and after the main document. In addition to the code, you can also add a description to your attachment configuration.

Now you have 2 options to add attachments:
1. attachments **before the main document**
2. attach attachments **after the main document**

Attachments are added in the same way for both options. However, the position where the attachment is attached differs. The following rules apply when adding attachments:</p>
1. an attachment can be added either **before** or **after** the main document
2. the **item no.**, short for item number, determines the order in which the documents are attached.
3. each attachment can be separately **rotated** by 90° degrees, 180° degrees or 270° degrees.
4. an attachment cannot be added multiple times within an attachment configuration.

When adding an attachment, select **attach before the main document**, for example. Now click in the ***Name*** field next to item no. 1. 3 dots (“**...**”) appear on the right-hand side of the field. Click on them to open a new window.

|![](images/apps/pdf_SaaS/attachments_in_window_DEU.png)|
|-|

This shows the attachments that have already been saved. You can now select from these or create a new attachment and then add it. If you want to add a new attachment, click on **+New** and upload the corresponding file.
The uploaded attachment will then also appear in the list. 

Select an attachment and add it to your attachment configuration by confirming this with **OK**.

Here we have added the following attachments as an example, as you can see in the illustration:

|![](images/apps/pdf_SaaS/configuration_example_DEU.png)|
|-|

In the following, we will briefly explain how you can remove an attachment that has already been added or how you can change the order of the attachments.

##### Removing an attachment
In **Attach before the main document** we have stored the attachment with the code **Attachment** in the first item number. To remove this, click on the field between item no. 1 and attachment, as marked with the red rectangle. You can use the 3 dots to select ***Delete line*** and remove your attachment.

##### Changing the position of an attachment
In **Attach after the main document**, we have stored the attachment with the code “Terms and conditions” in the first item number and the attachment with the code “Disclaimer” in the second item number. We would like to swap the position of these two. As you can only move attachments up one level, you must select Disclaimer and then click the **Up** button. Repeat this according to the number of positions you want to move it up.

{{< notice info "Note" >}}
 To move an attachment several positions up/down, you must select the attachment **again** after each position shift up/down. You can move an attachment **down** by selecting it using the 3 dots _.
{{< /notice >}}
</p>

##### Rotate an attachment
You can define a rotation for each attachment. You can choose between 3 different rotations: 90° degrees, 180° degrees and 270° degrees. To do this, click on **None** for the corresponding attachment under Rotation and select the desired rotation. Your attachment will now be attached to the main document with the rotation you have set.

