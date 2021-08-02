---
title: "E-Post status request"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 4
---

#### E-Post status request

As soon as you have made a dispatch by E-Post, you will notice that there is no status for the corresponding entry in the job list yet.

![](/images/connectornav/epost/statusabfrage.png)

To get the status for sent E-Post API letters, it is recommended to set up a task queue for it as well. This requires a similar procedure as for the E-Post Summary queue. To do this, open the **Task Queue Item** page and create a new queue item.

![](/images/connectornav/epost/statusabfrage2.png)

The type of the object to be executed is **CodeUnit**. The ID of the object to be executed is: **5402581**. You can specify other settings according to individual preferences. However, it is recommended not to execute the status query in too small time intervals, as this could affect the performance of the system. In this example, we have therefore chosen a waiting time of one hour between executions.

As soon as the queue is executed, a status is requested from Deutsche Post for each entry in the job list for which an E-Post status does not yet exist. If a status has been successfully queried, the **Status feedback** field changes from **No** to **Yes.** Furthermore, the **Status value** field is filled, which provides information about the success or failure of the process.

Furthermore, there is the possibility to manually query **a** job list entry for its E-Post status. On the Job List page, under Actions, you will find the **E-Post API status query** button. Press this button to set the E-Post status for a selected job list entry.

![](/images/connectornav/epost/statusabfrage3.png)