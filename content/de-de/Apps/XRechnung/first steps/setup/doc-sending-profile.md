---
title: "Belegsendeprofile"
date: 2023-08-31
description: 
draft: false
collapsible: false
weight: 
---

### Belegsendeprofil

Bei dem Belegsendeprofil handelt es sich um eine Standardfunktionalität von Microsoft Dynamics 365 Business Central.

Sie wird dazu genutzt, um die bevorzugte Methode der Übermittlung von Verkaufsbelegen zu steuern. Standardmäßig ist die Funktionalität für die Verwendung von **"Buchen und Senden"** gedacht. **Connector 365 XRechnung** erweitert diese Funktionalität durch Hinzufügen der Option **XRechnung** zu den möglichen Profilen.

#### Einrichten von Belegsendeprofilen

Einrichten von Belegsendeprofilen

1. Öffnen Sie die Suche, geben Sie **Belegsendeprofile** ein und wählen Sie dann den entsprechenden Link.
2. Auf der Seite **Belegsendeprofile** wählen Sie die Aktion **Neu** aus.
3. Füllen Sie die Felder je nach Bedarf aus. Fahren Sie über ein Feld, um eine Kurzbeschreibung zu lesen.

|![](images/apps/XRechnung/de/doc-sending-profiles.png)|
|-|

Nachdem Sie die Belegsendeprofile eingerichtet haben, können Sie eines als Standard einstellen, das wirksam wird, wenn in einem Kunden keine Angabe zum Belegsendeprofil gemacht wurde.

{{< notice warning Hinweis>}}
Bitte beachten Sie, dass eine XRechnung-Verarbeitung nur für [unterstützte Belegarten](de-de/apps/xrechnung/first-steps/introduction) erfolgt.
{{< /notice >}}

#### Sendeprofil für einen Debitor festlegen

1. Öffnen Sie die Suche, geben Sie Debitoren ein, und wählen Sie dann den zugehörigen Link.
2. Öffnen Sie die Karte des Debitors, für den ein Sendeprofil eingerichtet werden soll.
3. Wählen Sie im Inforegister Belegsendeprofil ein Profil aus, das sie eingerichtet haben, wie im vorigen Verfahren beschrieben.

|![](images/apps/XRechnung/de/customer-doc-sending-profiles.png)|
|-|