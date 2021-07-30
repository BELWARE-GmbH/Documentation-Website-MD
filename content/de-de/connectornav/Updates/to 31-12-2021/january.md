---
title: "Januar"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### Neues in den Dokumentationen:

Unsere Dokumentationen wurden entsprechend der neuen Features angepasst. In Welcher Dokumentation einzelne Punkte finden ist aufgeführt.
Zu den Dokumentationen

### Erweiterungen von Standardfeatures:

**Berücksichtigung von Lieferscheinen im Modus "Buchen & Verarbeiten"**
Die Funktion "Buchen & Verarbeiten" erzeugt nun ggf. auch Lieferscheine und verarbeitet diese ebenfalls wie zuvor in der Kommunikationsmatrix eingerichtet. Weitere Informationen finden Sie in der Dokumentation für die Kommunikationsmatrix.

**Anhänge für die XRechnung**
Anhänge, die bei Versand einer XRechnung mitgegeben werden, werden nun in die XRechnung-XML eingebettet. Weitere Informationen finden Sie in der Dokumentation für Peppol & XRechnung.JanuarHeaderIcon

**Neue XRechnung-Version**
XRechnungen werden nun in der aktuellen 2.0 Version erstellt. Weitere Informationen finden Sie in der Dokumentation für Peppol & XRechnung.

**Eigener Validierungsserver**
Aus Sicherheitsgründen haben sich viele Kunden gewüncht, den Validierungsserver für die XRechnung selber zu hosten. Dies lässt sich nun über die Konfiguration steuern. Die Validierung lässt sich nun auch komplett abschalten. Weitere Informationen finden Sie in der Dokumentation für Peppol & XRechnung.

**Verkaufsgutschriften im XRechnung-Format**
Das XRechnung-Modul erlaubt nun auch das erzeugen von Verkaufsgutschriften. Weitere Informationen finden Sie in der Dokumentation für Peppol & XRechnung.

**Prüfung der Leitweg-ID**
Die Leitweg ID wird nun durch den Connector NAV auf ihren Syntax geprüft d.h. ob Sie aus validen Bestandteilen besteht und erlaubt ist. Es wird nicht geprüft, ob es die es die ID wirklich gibt. Weitere Informationen finden Sie in der Dokumentation für Peppol & XRechnung.

**Entfernen Anhänge 1-4 & Updaten der Anhänge Zeilen**
Die alte Funktion "Anhänge 1-4" wurde aus dem Dialog und Benutzerberichten entfernt. Die Anhänge Zeilen wurden angepasst und erlauben nun Mehrfachauswahl von Anhängen und die Knöpfe wurden von der Menüleiste in den Reiter verschoben. Mehr Informationen dazu finden Sie in der Dokumentation für das E-Mail-Modul & Konfiguration/Einrichtung

### Optimierungen:

- in Fehler in einer Codeunit führte dazu, dass bei der Serververarbeitung mit Soforterzeugung immer versucht wurde eine PEPPOL-Rechnung zu erzeugen - Dies wurde nun behoben.
- Der Standarddruck von Dynamics NAV / BC wird nun ebenfalls in der Jobliste protokolliert.

### Sonstiges:

**Neue RapidStart-Pakete**
In unserem Download-Bereich finden Sie nun ein Paket für Version 2013R2 und das Paket für Version BC14 wurde auf den neusten Stand gebracht.