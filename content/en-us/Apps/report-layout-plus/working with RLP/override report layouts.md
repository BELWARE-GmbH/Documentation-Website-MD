---
title: "Override Report Layouts"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 3
---
### Working with Report Layout Plus

After you set up the desired report layouts for the specific conditions, you can now start with the sending of emails or printing of reports. If you have not finished this you can got to **First Steps** an begin with the setup of the [Report Layout Selection](/en-us/apps/report-layout-plus/first-steps/setup/report-layout-selection/).

For this example we set up the report layouts as follows:

![](images/apps/Report_Layout_Plus/en-us/app_report-layout_selection.png)

The default report layout for the language code **ENU** will be overridden by the layout with the code **MS-1306-EMAIL_RED**. The setup applies for the email body as well as the email attachment/print.

#### EMail with overridden report layout as text

For our example we navigate to the overview of **Posted Sales Invoices**. 

![](images/apps/Report_Layout_Plus/de-de/app_posted_sales_invoices.png)

There we select an invoice with a customer that has the language code **ENU**. Afterwards in the action bar we choose **Print/Send** and execute the action **send via email**.
In the now open dialog you can see that the email body has the layout that we selected in the report layout selection.

![](images/apps/Report_Layout_Plus/en-us/app_email_dialog.png)

#### Print with overridden report layout
We repeat the previous example for printing the document.
In order to do this we again choose **Print/Send** in the action bar and now execute the action **Print..**. In the now open window we select the option **preview**
Now the preview of the printed document opens with the layout that we selected in the report layout selection.

![](images/apps/Report_Layout_Plus/en-us/app_print_preview.png)