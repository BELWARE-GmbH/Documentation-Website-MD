---
title: "Einrichtung"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---

#### Einrichtung

Um das Modul zu installieren muss zunächst die RTC-Instanz gestoppt werden, dieser Schritt ist auf **sämtlichen RTC-Servern** auszuführen. Platzieren Sie anschließend die .dll-Dateien „**NetUiControll.dll**“ und „**OutlookHandlerLib.dll**“ in den folgenden Ordner:

![](/images/connectornav/dragdrop/einr1.png)<center>Ordner zum ablegen</center>

***Wichtig***: Dieser Schritt muss für alle Client-Rechner durchgeführt werden. Andernfalls erscheint folgende Fehlermeldung.

![](/images/connectornav/dragdrop/error_message.png)

Starten Sie nun die RTC-Instanz neu.
Das Add-In wurde nun durch den RTC registriert. Rufen Sie nun die Steuerelement-Add-Ins-Seite auf.

*(Verwaltung/IT-Verwaltung/Allgemein/Steuerelement-Add-Ins)*

![](/images/connectornav/dragdrop/einr2.png)<center>Steuerelement-Add-Ins durch Suchfunktion erreichen</center>

Auf der Seite öffnen Sie nun eine neue Zeile geben Sie die folgenden Parameter exakt ein:

**Add-In-Name:     Belware.DragDropNet**

**Token für öffentlichen Schlüssel: d678d7304c35f0b**

**Kategorie:    Add-In für DotNet-Steuerelemente**

![](/images/connectornav/dragdrop/einr3.png)<center>Übersicht Steuerelement-Add-Ins</center>

Starten Sie nun die erneut die RTC-Instanz neu.
Importieren Sie zunächst die Objekte der korrekten Version aus der „DragAndDropObjectsEvn“ .txt- oder .fob-Datei.
Anschließend können Sie auf einer beliebigen Card Page im Bereich FactBoxArea einen neuen Part erstellen den Sie „DragAndDrop“ nennen.

![](/images/connectornav/dragdrop/einr4.png)

In der Spalte „properties“ wählen Sie die Option „PartType“ = Page und „PagePartID“ = Drag and Drop FactBox

![](/images/connectornav/dragdrop/einr5.png)

Schreiben Sie auf der gleichen Page folgenden Code am Ende der entsprechenden Trigger:

```
OnNewRecord(BelowxRec : Boolean)
CurrPage.DragAndDrop.PAGE.SetRecordID(Rec.RECORDID);
CurrPage.DragAndDrop.PAGE.SetFilterRecordID(Rec.RECORDID);

OnInsertRecord(BelowxRec : Boolean) : Boolean
CurrPage.UPDATE(FALSE);

OnAfterGetCurrRecord()
CurrPage.DragAndDrop.PAGE.SetRecordID(Rec.RECORDID);
CurrPage.DragAndDrop.PAGE.SetFilterRecordID(Rec.RECORDID);
```


Speichern und kompilieren Sie das Objekt.
Nachdem Sie das Objekt gespeichert und kompiliert haben, sind Sie fertig.