---
title: "Empfang von E-Belegen"
date: 2024-05-10
description: 
draft: false
collapsible: false
weight: 2
---
### Empfang von E-Belegen

In Abhängigkeit, ob Sie Ihren E-Beleg per E-Mail oder per Peppol-Netzwerk empfangen haben, variiert das Einlesen Ihres Belegs. Sollten Sie Ihren E-Beleg per E-Mail erhalten haben, so können Sie diesen manuell ins System einlesen.

Wenn Ihr E-Beleg über das Peppol-Netzwerk an Sie übermittelt wurde, dann stehen Ihnen zwei Optionen zur Verfügung:

#### Aufgabenwarteschlange
Bei der Inbetriebnahme des Connector 365 E-Documents wird eine Aufgabenwarteschlange eingerichtet, die automatisch die E-Belege vom BELWARE-Peppol-Access-Point abholt und nach vorhandener Prüfung durch den Validator unter E-Belegen ablegt.

#### Manuelles Abholen per Wareneingang
Falls Sie die Aufgabenwarteschlange umgehen wollen und Ihren Beleg direkt manuell ins System holen möchten, öffnen Sie bitte den entsprechenden E-Belegdienst. 

Hier steht Ihnen nun standardmäßig die Funktion **Wareneingang** zur Verfügung. Betätigen Sie diese mit einem Klick. Sie lösen nun den Wareneingang manuell aus. 

Im Hintergrund überprüft Ihr System nun, ob für Sie im Peppol-Netzwerk Dokumente zur Abholnahme bereit stehen. Sollten E-Belege zur Verfügung stehen, so werden diese nach Prüfung durch den Validator im System erstellt, bzw. bei fehlerhaften Belegen erfolgt die Erstellung erst nach einer Warnung.

Die manuell ins System gelesenen Dokumenten finden Sie, wie auch bei der Aufgabenwarteschlange nun bei **E-Belege**. Um zu den E-Belegen zu gelangen, öffnen Sie die Tell me-Funktion und suchen Sie nach E-Belege.

Hier können Sie alle E-Belege einsehen, die Sie erhalten haben.

|![](images/apps/E-Documents_Wareneingang_DEU.png)|
|-|

#### Protokoll
Sowohl bei eingehenden als auch bei ausgehenden E-Belegen können Sie im Protokoll den jeweiligen Status einsehen. Um das Protokoll zu öffnen, öffnen Sie den E-Beleg und lassen Sie sich das entsprechende Protokoll anzeigen. Hier können Sie im Servicestatus den Status und das Protokoll Ihres E-Belegs einsehen. 

|![](images/apps/E-Documents_Protokoll_Eingehend_DEU.png)|
|-|

