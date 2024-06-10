---
title: "Versand von E-Belegen"
date: 2024-05-10
description: 
draft: false
collapsible: false
weight: 2
---
### Versand von E-Belegen
Wenn die Einrichtung abgeschlossen ist und Sie das entsprechend eingerichtete Belegsendeprofil den gewünschten Debitoren zugewiesen haben, können Sie Connector 365 E-Documents u.a. für den Versand Ihrer E-Belege nutzen.

Hierunter erläutern wir Ihnen exemplarisch anhand einer Verkaufsrechnung, wie Connector 365 E-Belege erstellt und verschickt. 

Erstellen Sie Ihre Verkaufsrechnung und hantieren Sie Ihr gewohntes Vorgehen. Anschließend buchen Sie die Verkaufsrechnung. Nun folgt zuerst die interne Prüfung von Microsoft, welche überprüft ob alle benötigten Felder ausgefüllt wurden. Wenn keine Fehler vorhanden sind, prüft anschließend unser interner Validator, ob die zu buchende Verkaufsrechnung als valide gilt oder nicht.

{{< notice info Hinweis >}}
Der interne Validator entspricht dem Connector 365 E-Documents Validator und ist auch separat erhältlich. Weitere Funktionen entnehmen Sie bitte der Doku des Connector 365 E-Documents Validators.
{{< /notice >}}

Der Connector 365 E-Documents Validator prüft im Hintergrund und Sie erhalten lediglich eine Meldung, wenn es zu einem negativen Validierungsergebnis kommt, d.h. wenn Ihre Verkaufsrechnung nicht valide ist.

Ansonsten wird nun durch die vorherige Einrichtung und das Belegsendeprofil des Debitors automatisch vom System ein E-Beleg erstellt und an das Peppol-Netzwerk übermittelt. Dieser Vorgang läuft im Hintergrund.

Um zu überprüfen, welche Informationen Ihr E-Beleg enthält, können Sie diese unter gebuchte Verkaufsrechnungen auswählen und hier sich den Datensatz Ihres E-Belegs anzeigen lassen.

#### Protokoll
Um das Protokoll zu öffnen, öffnen Sie unter zugehörig den verknüpften E-Beleg zu Ihrer gebuchten Verkaufsrechnung. Hier können Sie im Servicestatus den Status und das Protokoll Ihres E-Belegs einsehen. 

|![](images/apps/E-Documents_Protokoll_DEU.png)|
|-|

| **Status**               | **Erläuterung**          |
|--------------------------|----------------------|
| Exportiert               | Der E-Beleg wurde erstellt und an das Peppol-Netzwerk übermittelt.                                     |
| Antwort ausstehend       | Im Peppol-Netzwerk übermittelter E-Beleg, der noch nicht vom Gegenüber genehmigt, bzw. empfangen wurde.|
| Genehmigt                | Der E-Beleg wurde je nach verwendetem Anbieter: genehmigt und empfangen oder nur empfangen.            |


