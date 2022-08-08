---
title: "Belegsendeprofile"
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

1. Öffnen Sie die Suche, geben Sie **Belegsendeprofile** ein und wählen Sie dann den entsprechenden Link.
2. Auf der Seite **Belegsendeprofile** wählen Sie die Aktion **Neu** aus.
3. Füllen Sie die Felder je nach Bedarf aus. Fahren Sie über ein Feld, um eine Kurzbeschreibung zu lesen.

![](images/apps/easydocumentsendingde.PNG)

{{< notice warning "Hinweis" >}}
 Die Belegsendeprofile beinhalten eine Schaltfläche, mit der sich eingerichtete Profile als Standard setzen lassen.
            Dies hat allerdings keinen Einfluss auf die Funktionsweise der **Connector 365 Easy Batch App**.
            Ein Belegsendeprofil wird nur dann von **Connector 365 Easy Batch** verarbeitet, wenn dieses in einem [Debitor](de-de/apps/easybatch/first-steps/setup/document-sending-profile/#cust) hinterlegt worden ist **UND** wenn für diesen Debitor keine aktive Stapelmodus-Einrichtung in den [Dokumentlayouts](/de-de/apps/easybatch/first-steps/setup/document-layouts) verfügbar ist. Das heißt, die Dokumentlayouts haben Vorrang bei der Verarbeitung des Belegs!
{{< /notice >}}

<a name="cust" class="anchor"></a>
#### Sendeprofil für einen Debitor festlegen

1. Öffnen Sie die Suche, geben Sie Debitoren ein, und wählen Sie dann den zugehörigen Link.
2. Öffnen Sie die Karte des Debitors, für den ein Sendeprofil eingerichtet werden soll.
3. Wählen Sie im Inforegister Belegsendeprofil ein Profil aus, das sie eingerichtet haben, wie im vorigen Verfahren beschrieben.

![](images/apps/easydocumentcustomerde.PNG)
