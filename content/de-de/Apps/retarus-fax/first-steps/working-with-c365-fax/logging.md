---
title: "Protokollierung"
date: 2020-02-28T10:08:56+09:00
description: 
draft: true
collapsible: true
weight: 5
---

## Protokollierung

Wie alle ***Connector 365*** Apps, verwendet ***Connector 365 Fax*** die Seite ***Connector 365 Aktivitäten*** zur Protokollierung der Vorgänge. Letztere Page wirdd dabei bereitsgestellt von der App ***Connector 365 Base***, welche als Abhängigkeit zu allen weiteren ***Connector 365*** Apps immer mit installiert wird.
Jede der einzelnen Apps erweitert dabei die Aktivitätenliste bei Bedarf um weitere Felder, sofern diese für die Prozesse der Apps relevant sind.

Die Aktivitätenliste kann am leichtesten über die Suchfunktion aufgerufen werden.
Geben Sie dazu einfach ***Connector*** in die Suchleiste ein, und klicken Sie auf ***Connector 365 Aktivitäten***.
|![](images/apps/Retarus_Fax/search-con-joblist.png)|
|-|

Es öffnet sich eine Listendarstellung über alle protokollierten ***Connector 365***-Vorgänge:

***Beispiel-Ausschnitt***:
|![](images/apps/Retarus_Fax/joblist.png)|
|-|

Die ***Connector 365 Fax*** App erweitert die Aktivitätenliste um folgende Felder:
|Feld|Bedeutung|
|-|-|
|Fax-Anforderungs-Id|Eine eindeutige Kennung des Anbieters für ein eingeliefertes Dokument|
|Fax-Seitenanzahl|Die Anzahl der Seiten, welche an den Anbieter zwecks Fax-Versand übergeben worden|

{{< notice info Hinweis >}}
Die Fax-Anforderungs-Id ist ein Anzeichen dafür, dass die Übergabe eines Dokuments an den Fax-Anbieter zunächst erfolgreich war. Wenn ein Eintrag in der Aktivitätenliste existiert, in der keine Anforderungs-Id hinterlegt ist, so kann dies darauf deuten, dass der Vorgang entweder manuell abgebrochen wurde, oder dass es technische Probleme bei
der Übertragung gab.
Eine vorhande Anforderungs-Id ist allerdings noch **KEIN** Garant dafür, dass das im Vorgang hinterlegte Dokument
auch erfolgreich an den Empfänger gesendet wurde.
{{</ notice >}}