---
title: "Die PDF Erzeugung"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---

### Die PDF Erzeugung

Mit der Connector NAV Basis haben Sie die Möglichkeit, einfache PDF Dokumente direkt in Dynamics NAV zu erstellen und zu verwalten.
Die Erzeugung von PDF Dateien aus Dynamics NAV ist aus jeder beliebigen Page möglich, im Folgenden wird als Beispiel ein Angebot verwendet.

{{<img src="/images/connectornav/base/pdf_erzeugung.png" caption="Ausschnitt Beispielangebot Connector NAV Integration">}}

|Aktionen | |
|---|---|
| PDF        | Mit dieser Aktion erstellen Sie das PDF.                                                                |
| Status     | Mit dieser Aktion gelangen Sie in die Jobliste und zu dem entsprechenden Eintrag.                       |
| Historie   | Zusätzlich zur Aktion *Status* werden hier auch Jobeinträge angezeigt, die dem Beleg zugeordnet wurden. |
| PdfPreview | Mit dieser Aktion können Sie sich den Beleg temporär im PDF-Format ansehen.                             |

#### Der Dialog im Modus PDF

{{<img src="/images/connectornav/base/dialog_modus_pdf.png" caption="Dialog Modus PDF Register Allgemein">}}

|Feldbeschreibung | |
|---|---|
| Lfd.Nr.      | Eindeutige Jobnummer, wird vom Connector NAV vergeben.                              |
| BenutzerID   | Aktueller Login.                                                                    |
| Berichtsname | Der jeweils dem Bericht zugeordnete Berichtsname.  (aus der Schnittstellenübergabe) |
| Belegnummer  | Belegnummer des Dokumentes.  (aus der Schnittstellenübergabe)                       |
| Name         | Name des Kontakts.  (aus der Schnittstellenübergabe)                                |
| Dateityp     | Dateityp. (aus der Schnittstellenübergabe)                                          |
| Jobmodus     | Jobmodus des Jobs. (aus der Schnittstellenübergabe)                                 |
| Versand über         | Im Modus PDF nicht genutzt.                                                                                                               |
| Protokolldruck       | Gemäß Einrichtung bzw. Benutzer Einrichtung voreingestellt, markieren des Jobs für den Protokolldruck.                                    |
| Mit Signatur         | Gemäß Einrichtung bzw. Benutzer Bericht voreingestellt, markiert den Vorgang, um ihn später zu signieren.  **(Modul SIGN erforderlich!)** |
| Serververarbeitung   | Zeigt an, ob es sich um einen Serverjob handelt. (aus der Schnittstellenübergabe)                                                         |
| Freigabe             | Zeigt an, ob der Job freigegeben ist. (Bei nicht-Serverjobs immer auf JA)                                                                 |
| Datums-/Zeitvorgabe  | Handelt es sich um einen Serverjob, kann der Vorgang mit einer Datums- und Zeitvorgabe ausgeführt werden.                                 |