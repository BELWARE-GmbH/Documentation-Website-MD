---
title: Document Layout Profiles
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 3
---
## Setup

### Setting up the document layout profiles

So that you do not have to maintain the document layouts manually for each customer, you have the option of predefining them using document layout profiles.
This is done via the customer/vendor templates.
In our example, we will set up a customer template. However, the function is identical for vendors.

Use the search to navigate to **Customer Templates**.
Once there, open the card of the customer template for which you want to store a document layout profile.
![](images/apps/Easy_Batch/en-us/app_customer_template_setup.png)

You will now see a new **Easy Batch** tab at the bottom of the map.
If you open this tab, you can store a document layout profile there.
As there is currently no profile, we would first create a new one.
To do this, open the lookup for the **Document Layout Profile** field and click on **New**.
![](images/apps/Easy_Batch/en-us/app_document_layout_profile_list.png)

The **Document Layout Profile List** page now opens.
Here we create a new profile for our example with the code **E-MAIL**.
To set up the profile, click on the **...** button at the top under the actions and then on **Edit** in the list that opens.
![](images/apps/Easy_Batch/en-us/app_document_layout_profile_card.png)

We have now reached the **Document Layout Profile Card**.
Here you can change the profile code or the description again in the upper area.
In the lower tab **Document Layout Profile Lines** you can now make the desired default settings for the document layouts.
In the **Report Usage** field, select the document type to which you want to assign a job mode.
As the document layout profiles can be used for both sales and purchasing documents, you will find usages from both areas here.
Use the **Jobmode** field to specify the mode to be used for batch dispatch.
For our example, we set the e-mail mode here.

To complete the setup, close the **Document Layout Profile Card** page and confirm your selection with OK in the **Document Layout Profile List**.

Now that the setup is complete, the document layouts of all newly created customers who use these customer templates are preassigned according to the profile you have just created.