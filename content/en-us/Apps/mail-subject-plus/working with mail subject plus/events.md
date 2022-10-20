---
title: "Events"
date: 2020-02-28T10:08:56+09:00
description: 
draft: true
collapsible: false
weight: 4
---
## Connector 365 Mail Subject Plus Events

The following events of the **Connector 365 Mail Subject Plus** app are available:

### OnBeforeSetRecordFilterForEmailPlaceholders
```al
- var TargetTableNumber: Integer
- ReportId: Integer
```

As described in the [setup](/en-us/apps/mail-subject-plus/first-steps/setup), for reports which use as first DataItem **not** the header of the respective report usage, unusable fields may appear in the lookup of each placeholder.
Using the event from the ***BELMSP EmailSubjectPlaceholder*** page, you can set the correct target table yourself for the respective used report.


***Example implementation of an event subscriber***
```al
[EventSubscriber(ObjectType::Page, Page::"BELMSP EmailSubjectPlaceholder", 'OnBeforeSetRecordFilterForEmailPlaceholders', '', false, false)]
local procedure OnBeforeSetRecordFilterForEmailPlaceholders(var TargetTableNumber: Integer; ReportId: Integer);
begin
    if ReportId = 50001 then
        TargetTableNumber := 112;
end;
```
Here the target table 112 (Sales Invoice Header) is set for the sample report ID 50001. This has the effect that now in the fields lookup
of the email placeholders, the fields from the sales invoice header are also displayed, so that they are selectable.
{{< notice warning Hint >}}
Care should be taken to use the correct target table for each use.
**Example**: If an invoice report is sent by mail from the posted sales invoices (*sales invoice header*), then a placeholder selection of sales credit fields (*Sales Credit Memo header*) for that report would be incorrect. This could cause errors at runtime, or unexpected resolved placeholders.
{{< /notice >}}
