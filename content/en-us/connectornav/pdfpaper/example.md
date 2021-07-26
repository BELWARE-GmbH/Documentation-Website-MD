---
title: "Beispielvorgang PDF"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---

#### Beispielvorgang PDF

Zusätzlich zur PDF-Erzeugung mit der Basis können Sie mit dem pdfPaper Ihr Dokument mit Ihrem Briefpapier mischen.

##### Preview-Funktion

Vor dem erzeugen einer PDF-Datei haben Sie jederzeit die Möglichkeit für Ihren Bericht eine Vorschau zu erzeugen - eine Ansicht Ihrer fertigen PDF. Ein nutzen dieser Funktion erzeugt keinen Joblisteeintrag.

Es gibt 2 Varianten der Vorschau:

**Pdf Vorschau -** Diese Vorschaufunktion funktioniert auch wenn Sie den iPaper nicht lizensiert haben. Eine Mischung mit einem Briefpapier findet bei dieser Funktion nicht statt, es wird nur eine einfache PDF Ihres Berichts erzeugt.

**PdfServer Vorschau -** Diese Funktion ist ebenfalls eine Versionsabhängige Vorschau. In diesem Fall wird hier eine mit Briefpapier gemischte PDF erzeugt, wenn eine Servervariante des iPapers eingesetzt wird.

##### Dialog

Die Erzeugung von PDF Dateien aus Dynamics NAV ist aus jeder beliebigen Page möglich, im Folgenden wird als Beispiel ein Angebot verwendet.

![](/images/connectornav/pdfpaper/nav_integration.png)<center>Ausschnitt Beispielangebot Connector NAV Integration</center>

|Aktionen | |
|---|---|
| PDF         | Mit dieser Aktion erstellen Sie das PDF.                             |
| PDF Preview | Mit dieser Aktion erhalten Sie die Möglichkeit, das PDF anzuschauen. |
| Ausdruck    | Mit dieser Aktion können Sie das PDF ausdrucken.                     |
| Status      | Mit dieser Aktion gelangen Sie in die Jobliste.                      |

#### Dialog Vorgang PDF

##### Aktionen

![](/images/connectornav/pdfpaper/pdf_aktionen.png)<center>Connector NAV Dialog Modus PDF, Aktionen</center>

|Aktionen | |
|---|---|
| Briefpapier anzeigen | Über diese Aktion kann das Briefpapier aus der Schnittstellenübergabe angezeigt werden. |
| Briefpapier wechseln | Über diese Aktion kann das Briefpapier gewechselt werden.                               |

##### Register pdfPaper

![](/images/connectornav/pdfpaper/pdf_reg_pdfpaper.png)<center>Connector NAV Dialog Modus PDF, Register pdfPaper</center> 

|Feldbeschreibung | |
|---|---|
| PDF Passwort | Hier kann man für das PDF Dokument ein Passwort vergeben. |
| Briefpapier  | Das aktuelle Briefpapier aus der Schnittstellenübergabe.  |