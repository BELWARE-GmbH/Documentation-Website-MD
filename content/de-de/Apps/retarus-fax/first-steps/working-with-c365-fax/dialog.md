---
title: "Dialog"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: true
weight: 4
---
## Dialog

Wie im Kapitel ***[Belege über Fax versenden](/de-de/apps/retarus-fax/first-steps/working-with-c365-fax/send-docs-via-fax/)*** erwähnt, erscheint nach Bestätigen einer 
Fax-Versandfunktion ein Dialog, welcher alle relevanten Informationen bezüglich des zu verschickenden Belegs sowie 
Empfänger-Daten darstellt.

|![](images/apps/Retarus_Fax/dialog.png)|
|-|

Durch Klicken auf ***OK*** wird der Vorgang fortgesetzt und das aktuelle Dokument wird an den Fax-Anbieter versendet, welche diesen anschließend per Fax an den gewünschten Empfänger sendet. Klicken Sie auf ***Abbrechen*** um die weitere Verarbeitung zu stoppen.

Es folgt eine tabellarische Auflistung der im Dialog angezeigten Daten.
Neben der Erklärung der jeweiligen Felder werden auch die Daten besonders markiert, welche 
auch während der Dialog-Anzeige verändert werden können, sodass diese auf den darauffolgenden Versand Auswirkungen haben.

|Feld|Bedeutung|Im Dialog verändertbar|
|-|-|-|
|Nr.| Die laufende Nummer (Connector 365 Aktivitäten) | Nein|
|Benutzer ID.| Der Benutzer der den Vorgang gestartet hat| Nein|
|Belegnr. | Die Belegnummer | Nein|
|Berichts-ID | Die für den aktuell Beleg verwendete Berichts-ID| Nein|
|Belegart | Die Belegart des aktuell zu versendenen Belegs | Nein|
|Seitenanzahl | Die Anzahl der Seiten, welche per Fax gesendet werden | Nein|
|Kontaktnr.| Die Kontaktnummer des Empfängers| Ja|
|Faxnummer| Die Faxnummer des Empfängers | Ja|
|Kontaktname| Der Kontaktname des Empfängers | Nein <br>(Automatisch gesetzt durch Kontaktnummer)|