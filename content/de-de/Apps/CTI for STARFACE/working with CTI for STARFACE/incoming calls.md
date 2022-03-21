---
title: "Eingehende Anrufe/CTI-Client"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### Arbeiten mit CTI for STARFACE

### Eingehende Anrufe und der CTI-Client
Die Connector 365 CTI for STARFACE App öffnet Ihnen bei eigehenden Telefonaten automatisch die Kontaktkarte der anrufenden Person. Damit dieser Prozess reibungslos funktioniert, muss auf zwei Sachen geachtet werden.

1. Die Telefonnr. der anrufenden Person ist in einem Kontakt hinterlegt. Sollte dies nicht der Fall sein wird Ihnen nur die unbekannte Nummer angezeigt bzw. je nach Einstellungen ein neuer Arbeitsschritt ausgelöst.

2. Der **"CTI-Client"** muss geöffnet sein, der Client ist der Kern der Connector 365 CTI for STARFACE App und wird zwingend benötigt. Den Client können Sie im Rollencenter über einen dedizierten Button öffnen, alternativ finden Sie ihn mit Hilfe der Suchfunktion unter **"CTI-Client"**. Sie können den Client auch in einem weiteren Fenster öffnen, damit er Sie nicht beim weiteren Arbeiten hindert. 

Für den Fall, dass sie den Client versehentlich schließen, werden Sie vor dem schließen kurz gewarnt.

![](images/apps/cticlientdashboardde.PNG)

Kommt es nun zu einem eingehenden Anruf wird dies im Client abgebildet, alle Nutzer in der gleichen Gruppen können sehen wer angerufen wird und wie der aktuelle Status des Telefonat lautet. Zeitgleich wird ein Eintrag in die Jobliste geschrieben und die Kontaktkarte für den entsprecheden Kontakt wird geöffnet, sofern dieser vorhanden ist.

![](images/apps/cticlientde.png)

### Verhalten bei nicht vorhandenen Nummern
Stellt das System fest, dass eine Nummer noch nicht im System hinterlegt ist, wird automatisch je nach Einrichtung des Benutzers eine Aktion ausgelöst.

![](images/apps/cticlientunknown.jpg)

Die folgenden Auswahlmöglichkeiten gibt es und werden in der Benutzereinrichtung festgelegt

**Leer/Keine**
Bei unbekannten Nummern wird keine Folgeaktion ausgelöst.

**Fragen**
Der Nutzer wird gefragt ob er einen für die unbekannte Nummer einen Kontakt anlegen möchte. Bei Bestätigung wird der entsprechende Dialog geöffnet.

**Kontakt anlegen**
Das System legt automatisch einen neuen Kontakt an und der entsprechende Dialog wird geöffnet.





