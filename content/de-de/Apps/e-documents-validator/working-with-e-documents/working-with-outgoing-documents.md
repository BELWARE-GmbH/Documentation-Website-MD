---
title: "Arbeiten mit ausgehenden E-Dokumenten"
date: 2024-10-16
description: 
draft: false
collapsible: true
weight: 2
---

# Arbeiten mit ausgehenden E-Dokumenten

Damit in Business Central Belege wie zum Beispiel die gebuchten Verkaufsrechnungen ordnungsgemäß
zu E-Belege gewandelt werden können, ist es wichtig, dass alle notwendigen Informationen in den jeweiligen Belegen vorhanden sind,
die essentiell für das Erstellen von E-Dokumenten sind.

Zusätzlich zu Prüfungen vom aktuellen Business Central Standard hilft **Connector 365 E-Documents Validator** dabei,
noch **vor** dem Buchen von Belegen festzustellen, ob eventuell Daten fehlen, oder sogar ob fehlerhafte Daten im zu verarbeitenden 
Beleg vorhanden sind. Dies senkt den Aufwand für das nachträgliche Korrigieren erheblich.

## Voraussetzungen für die Validierung im Buchungsprozess

Um die Validierung im Buchungsprozess zu aktivieren sind zwei Schritte notwendig: 

1. Das Feld "E-Dokumente validieren" muss gesetzt sein. Mehr dazu [hier](/de-de/apps/e-documents-validator/first-steps/setup/);
2. Der Debitor, der den elektronischen Beleg erhalten soll, ist entsprechend eingerichtet. Mehr dazu finden Sie unten.


## Debitor für den elektronischen Beleg einrichten

Im Folgenden wird beispielhaft anhand der Verwendung **Verkaufsrechnung** gezeigt, wie ein Debitor für den elektronischen Versand eingerichtet werden kann.

Auf der Seite **Debitoren** navigieren Sie zu einem Debitor, für den Sie künftig elektronische Beleg erzeugen wollen, und öffnen Sie dessen Karte.

Vergrößern Sie den Reiter **Allgemein** indem Sie auf **Mehr Anzeigen** klicken

|![](images/apps/e-documents-validator/de/out-customer-general.png)|
|-|

Navigieren Sie anschließend zum Feld **Belegsendeprofil**

|![](images/apps/e-documents-validator/de/out-customer-doc-sending-profile.png)|
|-|

Klicken Sie auf **Neu**, um ein neues Belegsendeprofil zu erzeugen. 
Falls Sie bereits ein geeignetes Belegsendeprofil haben, können Sie den folgenden Schritt überspringen.

Sobald die Karte des Belegsendeprofils geöffnet wird, geben Sie zunächst einen passenden Code und eine Beschreibung für 
das Belegsendeprofil ein:

|![](images/apps/e-documents-validator/de/out-doc-sending-profile-head.png)|
|-|

Für die Sendeoptionen, setzen die das Feld **Elektronischer Beleg** auf **Erweiterter E-Beleg-Serviceflow**.
Anschließend wählen Sie einen geeigneten **Serviceflowcode**.

|![](images/apps/e-documents-validator/de/out-doc-sending-profile-sending-options.png)|
|-|

## Arbeiten mit *Connector 365 E-Documents Validator* im Buchungsprozess

Erfassen Sie eine neue **Verkaufsrechnung** für den Debitoren, den Sie für E-Documents eingerichtet haben.
Wenn die Rechnungsdaten vollständig sind, klicken Sie auf **Buchen**, um die Rechnung zu buchen.

|![](images/apps/e-documents-validator/de/out-post-sales-invoice.png)|
|-|

Sobald Sie die Buchung bestätigen, führt Business Central zunächst eine eigene Validierung der Daten vor, da der Debitor nun für das Verarbeiten von E-Belegen eingerichtet worden ist.
Sollte diese Validierung erfolgreich sein, führt **Connector 365 E-Documents Validator** nun eine zusätzliche Validierung durch, 
in dem temporär ein E-Beleg vom Typ **PEPPOL-BIS 3** erzeugt wird, und diese anschließend validiert wird.

Sollten Fehler beim Validieren auftreten, so wird verhindert, dass der Beleg gebucht wird.
Auf diese Weise werden eventuelle Korrekturen nach dem Buchen vermieden.

Sie werden auf den Validierungsfehler mit einer entsprechenden Meldung hingewiesen.

|![](images/apps/e-documents-validator/de/out-post-error-message.png)|
|-|

Sobald Sie nun zurückkehren, öffnet sich der zugehörige Validierungsbericht.

|![](images/apps/e-documents-validator/de/out-post-validation-report.png)|
|-|