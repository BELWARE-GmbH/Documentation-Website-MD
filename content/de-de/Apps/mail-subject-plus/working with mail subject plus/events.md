---
title: "Events"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: true
weight: 4
---
## Connector 365 Mail Subject Plus Events

Folgende Events der **Connector 365 Mail Subject Plus** App stehen zur Verfügung:

### OnBeforeSetRecordFilterForEmailPlaceholders
```al
- var TargetTableNumber: Integer
- ReportId: Integer
```

Wie in der [Einrichtung](/de-de/apps/mail-subject-plus/first-steps/setup) beschrieben, können bei Berichten, welche als Erstes DataItem **nicht** den Header der jeweiligen Berichts-Verwendung
nutzen, unbrauchbare Felder im Lookup der einzelnen Platzhalter auftauchen.
Mithilfe des Events aus der Page ***BELMSP EmailSubjectPlaceholder*** können Sie selbst die richtige Zieltabelle für den jeweiligen
genutzten Bericht ausführen.


***Beispiel-Implementierung eines Event-Subscribers***
```al
[EventSubscriber(ObjectType::Page, Page::"BELMSP EmailSubjectPlaceholder", 'OnBeforeSetRecordFilterForEmailPlaceholders', '', false, false)]
local procedure OnBeforeSetRecordFilterForEmailPlaceholders(var TargetTableNumber: Integer; ReportId: Integer);
begin
    if ReportId = 50001 then
        TargetTableNumber := 112;
end;
```
Hier wird für die Beispiel-Berichts-Id 50001 die Zieltabelle 112 (Sales Invoice Header) gesetzt. Dies hat den Effekt, dass nun im Felder-Lookup
der E-Mail-Platzhalter die Felder aus dem Verkaufsrechnungskopf mit angezeigt werden, so dass diese wählbar sind.
{{< notice warning Hinweis >}}
Es sollte darauf geachtet werden, dass die korrekte Zieltabelle zur jeweiligen Nutzung verwendet wird.
**Beispiel**: Wenn ein Rechnungsbericht per Mail aus den gebuchten Verkaufsrechnungen (*Verkaufsrechnungskopf*) verschickt wird, so wäre eine Platzhalterauswahl von Verkaufsgutschrifts-Feldern (*Verkaufsgutschriftskopf*) für diesen Bericht fehlerhaft. Dies könnte zur Laufzeit zu Fehlern, bzw. zu unerwarteten aufgelösten Platzhaltern führen.
{{< /notice >}}
