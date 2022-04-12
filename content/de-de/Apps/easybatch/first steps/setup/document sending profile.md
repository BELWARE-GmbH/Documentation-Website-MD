---
title: "Belegsendeprofil"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---
### Einrichtung

### Belegsendeprofil

Bei dem Belegsendeprofil handelt es sich um eine Standardfunktionalität von Microsoft Dynamics 365 Business Central.

Sie wird dazu genutzt, um die bevorzugte Methode der Übermittlung von Verkaufsbelegen zu steuern. Stanardmäßig ist die funktionalität für die Verwendung von **"Buchen und Senden"** gedacht. Mit dem Connector 365 Easy Batch, können Belegsendeprofile aber auch dafür genutzt verwenden die Stapelfunktion zu steuern.

#### Einrichten von Belegsendeprofilen

Einrichten von Belegsendeprofilen

1. Öffnen Sie die Suche, geben Sie Dokumentsendeprofile ein und wählen Sie dann den entsprechenden Link.
2. Auf der Seite Dokumentsendeprofile wählen Sie die Aktion Neu aus.
3. Füllen Sie die Felder je nach Bedarf aus. Fahren Sie über ein Feld, um eine Kurzbeschreibung zu lesen.

![](images/apps/easydocumentsendingde.PNG)

Nachdem Sie die Belegsendeprofile eingerichtet haben, sollten Sie noch eins als Standard setzen, dieses greift, wenn in einem Debitor keine Angabe zum Belegsendeprofil gemacht wurde.

#### Sendeprofil für einen Debitor festlegen

1. Öffnen Sie die Suche, geben Sie Debitoren ein, und wählen Sie dann den zugehörigen Link.
2. Öffnen Sie die Karte des Debitors, für den ein Sendeprofil eingerichtet werden soll.
3. Wählen Sie im Inforegister Belegsendeprofil ein Profil aus, das sie eingerichtet haben wie im vorigen Verfahren beschrieben.

![](images/apps/easydocumentcustomerde.PNG)

Ist nun in den Dokumentenlayout **kein** Haken im Feld Stapelmodus gesetzt und das Feld für den Jobmodus wurde **leer** gelassen, so greift die soeben vorgenommene Einrichtung.





