---
title: "useful funktions"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 4
---

### Useful functions

#### CheckFeedback(FromDateL : Date;ToDateL : Date;WithConfirmL : Boolean)

For a certain period of time, the system checks which jobs have a negative status feedback. These can then be displayed.

FromDateL: Start date   
ToDateL: End date  
WithConfirmL: Display negative jobs Yes/No

#### SetDialog(NewDialog : Boolean)

This function can be used to override the visibility of the dialog.

NewDialog: Display dialog Yes/No

#### SetJoblistSubject(„Jobno.“ : Integer;NewSubject : Text[250])

This function can be used to change the subject of a specific job.

„Jobno.“: Sequence No. of the job entry.  
NewSubject: Set new subject.

In the **CON FaxMailDialogHook** code unit, you can create any number of additional placeholders by creating an **Event Subscriber** for the **OnReplacePlaceholder** function from the **CON Base** code unit. The placeholders %101 - %199 are available for this purpose.

To replace the placeholders with the desired text, you must call the **ReplaceText** function from the **CON Base** code unit. The first parameter contains the source text that is passed to the event, the second contains the placeholder to be replaced and the third contains the text that should replace the placeholder.

In the example below, the placeholder %36 is replaced by the name of the seller assigned to this document, if the document is an order confirmation.

![](/images/connectornav/base/setjoblistsubject.png)

#### SetBodytextArray(ArrayText: ARRAY [100] OF Text[1024])

This function can be used to preallocate an array of dimension 100. The call is made in the DoJob routine before the function call FaxMailWorkflowOneML. The individual dimensions are output one after the other at the position with the placeholder %23.