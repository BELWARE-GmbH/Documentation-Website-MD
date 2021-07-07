---
title: "Jobdateien und Rückmeldungen"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 4
---

#### Jobdateien und Rückmeldungen

Dieses Kapitel ist nur relevant für die Lizenzierung einer Schnittstelle mit externer Kommunikationssoftware (OfficeMaster, Twinfax, Tobit, Faxmaker, C3000).

Nachdem der Dialog mit OK bestätigt wurde, hinterlegt der Connector NAV im Pfad *com_job* und der Jobkennung aus Connector NAV Einrichtung eine Textdatei. Diese wird von der Kommunikationssoftware abgegriffen und verarbeitet. Anschließend liefert die Software eine Rückmeldungsdatei zurück. Diese befindet sich je nach Einrichtung unter *com_ack* oder *com_err.*

Mit der Einrichtung der Funktion *Rückmeldung aus Jobliste Übersicht* werden diese Ordner beim Öffnen der Karte nach entsprechenden Dateien durchsucht. Diese Dateien werden anschließend in „.erl“ umbenannt und es gibt in der Jobliste einen entsprechenden Status zum Vorgang.

**Diese Grafik durch angepasste ersetzen**
{{<img src="/images/connectornav/fax/jobdateien.PNG">}}
{{<img src="/images/connectornav/fax/jobliste.png" caption="Connector NAV Jobliste">}}
