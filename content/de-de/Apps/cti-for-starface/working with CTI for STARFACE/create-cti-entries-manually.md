---
title: "Manuelles Erfassen von CTI-Einträgen"
date: 2023-10-05
description: 
draft: false
collapsible: false
weight: 5
---
# Manuelles Erfassen von CTI-Einträgen

Unter Umständen gibt es Anwendungsfälle, in denen Telefonate außerhalb von STARFACE abgewickelt werden, beispielweise über Mobilfunk.
Bei Telefonaten, welche interessant für diverse Geschäftsprozesse sind, kann der Wunsch entstehen, diese ebenfalls analog den STARFACE-Telefonaten zu protokollieren.
Hierfür bietet die **Connector 365 CTI for STARFACE** App eine Funktion an die es erlaubt, manuelle CTI-Einträge in der **Connector 365 Aktivitäten**-Liste zu erfassen. Dabei können Sie übliche Eigenschaften wie beispielsweise die Anrufdauer oder der Kontakt, mit dem telefoniert wurde, eingegeben werden.
Im Folgenden erfahren Sie, wie Sie mithilfe der **Connector 365 CTI for STARFACE** App CTI-Einträge manuell erfassen können.

## Anwendung: Manuelles Erfassen von CTI-Einträgen

Um die Funktion der manuellen Erfassung aufzurufen, navigieren Sie zu der Seite **Connector 365 Aktivitäten**.

|![](images/apps/cti_starface/de/search-con365-activities.png)|
|-|

Nun suchen und aktivieren Sie die Aktion **Telefonieeintrag erstellen**. Sie finden diese Aktion in der Menü-Leiste.

|![](images/apps/cti_starface/de/action-create-cti-entry.png)|
|-|

Bei Aktivierung der Aktion öffnet sich folgende Seite:

|![](images/apps/cti_starface/de/create-cti-entry-dialog.png)|
|-|

Die Seite beinhaltet folgende Felder:

| Feld | Bedeutung |
|-|-|
| **Kontaktnr.** | Die Nummer des Kontaktes, mit der eine telefonische Verbindung hergestellt wurde. |
| **Angenommen um** | Die Uhrzeit, an der das Telefonat begann. Standardmäßig wird die aktuelle Uhrzeit eingetragen. Sie können an dieser Stelle natürlich auch einen Zeitpunkt in der Vergangenheit auswählen. |
| **Richtung** | Bestimmt, ob sich um ein eingehendes oder ausgehendes Telefonat handelt. |
| **Anrufdauer** | Gibt die dauer des Telefonats in Stunden an. |
| **Betreff** | Gibt den Betreff des Telefonats an. |

Geben Sie nun die Informationen ein, die zutreffend für das zu protokollierende Telefonat sind.
Klicken Sie anschließend auf **OK**, um Ihren Eintrag zu bestätigen und zu speichern.

|![](images/apps/cti_starface/de/confirm-cti-entry.png)|
|-|

Bei erfolgreichreicher Eingabe und Bestätigung ist unter **Connector 365 Aktivitäten** nun ein neuer CTI-Eintrag mit den eingegebenen 
Eigenschaften erstellt worden.

|![](images/apps/cti_starface/de/activity-cti-entry-in-list.png)|
|-|