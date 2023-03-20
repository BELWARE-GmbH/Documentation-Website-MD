---
title: "Reduction of Memory Usage"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 3
---

### Delete action for archived files

Saving the report files in the activity list initially comes with the disadvantage of constantly increasing memory usage of the Business Central database. 
To counteract this, as of version 2.4.0.0 of the Base app, the Actions menu can be seen in the Connector 365 setup.
![](/images/apps/Base/base_setup_actions.png)

When the menu is opened, the function "Delete Activity Files" is showing.
![](/images/apps/Base/base_setup_actions2.png)

After triggering the function, an input window appears where the start date (older date) for the delete action can be selected:
![](/images/apps/Base/base_delete_start.png)

After filling in and confirming with OK, the input window for selecting the end date (younger date) appears:
![](/images/apps/Base/base_delete_end.png)

After specifying this date and confirming with OK, a confirmation for the deletion process is requested:
![](/images/apps/Base/base_delete_confirm.png)

After confirming the dialog, all report files in the activity list that were created during the selected time period are deleted from the list.
