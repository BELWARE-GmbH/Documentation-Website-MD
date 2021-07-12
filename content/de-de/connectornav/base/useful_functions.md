---
title: "Nützliche Funktionen"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 4
---

### Nützliche Funktionen

#### CheckFeedback(FromDateL : Date;ToDateL : Date;WithConfirmL : Boolean)

Für einen bestimmten Zeitraum wird geprüft, welche Jobs eine negative Statusrückmeldung haben. Diese können dann angezeigt werden.

FromDateL: Startdatum   
ToDateL: Enddatum  
WithConfirmL: Negative Jobs anzeigen Ja/Nein

#### SetDialog(NewDialog : Boolean)

Mit dieser Funktion kann die Sichtbarkeit des Dialoges übersteuert werden.

NewDialog: Dialog anzeigen Ja/Nein

#### SetJoblistSubject(„Jobno.“ : Integer;NewSubject : Text[250])

Mit dieser Funktion kann der Betreff eines bestimmten Jobs geändert werden.

„Jobno.“: Lfd. Nummer des Jobeintrages.  
NewSubject: Neuer Betreff.

In der Codeunit **CON FaxMailDialogHook** können Sie durch anlegen eines **Event Subscribers** für die Funktion **OnReplacePlaceholder** aus der **Codeunit CON Base**, beliebig weitere Platzhalter anlegen. Hierfür zur Verfügung stehen die Platzhalter %101 - %199.

Um die Platzhalter mit dem gewünschten Text zu ersetzen, müssen Sie die Funktion **ReplaceText** aus der Codeunit **CON Base** aufrufen. Der erste Parameter enthält den Quelltext, der dem Event übergeben wird, der zweite den zu ersetzenden Platzhalter und der dritte den Text, der den Platzhalter ersetzen soll.

Im unten zu sehenden Beispiel wird der Platzhalter %36 durch den Namen, der diesem Beleg zugewiesenen Verkaufsperson ersetzt, sofern es sich bei dem Beleg um eine Auftragsbestätigung handelt.

![](/images/connectornav/base/setjoblistsubject.png)

#### SetBodytextArray(ArrayText: ARRAY [100] OF Text[1024])

Mit dieser Funktion kann ein Array der Dimension 100 vorbelegt werden. Der Aufruf erfolgt in der DoJob Routine vor dem Funktionsaufruf FaxMailWorkflowOneML. Die einzelnen Dimensionen werden an der Stelle mit dem Platzhalter %23 nacheinander ausgegeben.