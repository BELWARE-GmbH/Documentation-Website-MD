---
title: "Versand von E-Belegen"
date: 2024-05-10
description: 
draft: false
collapsible: false
weight: 2
---
### Versand von E-Belegen
Wenn die Einrichtung abgeschlossen ist und Sie das entsprechende Belegsendeprofil den gewünschten Debitoren zugewiesen haben, können Sie Connector 365 E-Documents u.a. für den Versand Ihrer E-Belege nutzen.

Hierunter erläutern wir Ihnen exemplarisch anhand einer Verkaufsrechnung, wie Connector 365 E-Belege erstellt und verschickt. 

Erstellen Sie Ihre Verkaufsrechnung und hantieren Sie Ihr gewohntes Vorgehen. Anschließend buchen Sie die Verkaufsrechnung. Nun folgt zuerst die interne Prüfung von Microsoft, welche überprüft ob alle benötigten Felder ausgefüllt wurden. Wenn keine Fehler vorhanden sind, prüft anschließend unser interner Validator, ob die zu buchende Verkaufsrechnung nach den Vorgaben für E-Rechnungen in Deutschland als valide gilt oder nicht.

Der Validator prüft im Hintergrund und Sie erhalten lediglich eine Meldung, wenn es zu einem negativen Validierungsergebnis kommt, d.h. wenn Ihre Verkaufsrechnung nicht valide ist.

Ansonsten wird nun durch die vorherige Einrichtung und das Belegsendeprofil des Debitors automatisch vom System ein E-Beleg erstellt und an das Peppol-Netzwerk übermittelt. Dieser Vorgang läuft im Hintergrund.

Um zu überprüfen, welche Informationen Ihr E-Beleg enthält, können Sie diese unter gebuchte Verkaufsrechnungen auswählen und hier sich den Datensatz Ihres E-Belegs anzeigen lassen.

#### Kommunikationsprotokoll
Im Kommunikationsprotokoll können Sie den Antwortstatus einsehen. Dabei unterscheiden wir zwischen:
- Antwortstatus 200
- Antwortstatus 201
Je nach Antwortstatus wissen Sie ob Ihr E-Beleg bereits angekommen ist oder ob hier ein Fehler vorliegt.