---
title: "Aufgabenwarteschlange Einrichtung"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---

#### Einrichten einer Aufgabenwarteschlange für die Hintergrundverarbeitung

Die Einrichtung der Aufgabenwarteschlange befindet sich im Menü unter Verwaltung-> IT Verwaltung-> Anwendung Einrichtung-> Aufgabenwarteschlange.

{{<img src="/images/connectornav/einrichtung_queue.png" caption="Microsoft Dynamics NAV, Aufgabenwarteschlange">}}

Um Connector NAV Serverjobs auszuführen, wird ein Aufgabenwarteschlangenposten mit der entsprechenden Codeunit 5402516 angelegt. Damit dieser Posten läuft, muss eine Aufgabenwarteschlange mit entsprechendem Dienst angelegt werden. Dazu gibt es verschiedene Möglichkeiten. Im nachfolgenden Beispiel wird eine Aufgabenwarteschlange mit dem Administrator-Benutzer ohne weitere Einrichtung am Server angelegt.

##### Die Aufgabenwarteschlange
{{<img src="/images/connectornav/einrichtung_queue2.png" caption="Microsoft Dynamics NAV, Aufgabenwarteschlange">}}

In der Übersicht kann über die Aktion -> Neu, eine neue Aufgabenwarteschlange angelegt werden. Es öffnet sich die oben gezeigte Karte. Folgende Einstellungen können beispielhaft angelegt werden:

|Feldbeschreibung | |
|---|---|
|Code | Name der Aufgabenwarteschlange.|
|Beschreibung | Eine Beschreibung für die Aufgabenwarteschlange (optional).|
|Automatisch von NAS starten | Diese Option setzt voraus, dass ein entsprechender Dienst für den NAS eingerichtet ist (wird in diesem Beispiel nicht verwendet).|
|Auf diesem NAS-Conputer starten | NAS-Computer aus der Übersicht wählen, in der die Aufgabenwarteschlange starten soll.|
|In dieser NAS-Instanz starten | NAS-Instanz (Dienst) aus der Übersicht wählen, in der die Aufgabenwarteschlange starten soll.|

Anschließend wird die Aufgabenwarteschlange über die Aktion starten gestartet und folgende Informationen werden angezeigt:

|Feldbeschreibung | |
|---|---|
|Gestartet | Zeigt an, ob die Aufgabenwarteschlange gestartet wurde.|
|Letzter Herzschlag | Zeigt an, zu welchem Zeitpunkt die Aufgabenwarteschlange zuletzt aktiv war.|
|Serverinstanz-ID | Zeigt an, in welcher Instanz-ID Die Aufgabenwarteschlange läuft.|
|Session-ID | Zeigt die Session-ID an.|
|Ausführung als benutzer-ID<br />Ausführung auf Servercomputer<br />Ausführung in Serverinstanz | FlowFields, zeigt die Einstellung aus dem Reiter NAS-Einstellungen.|

Anschließend wird ein Hintergrundbenutzer für Microsoft Dynamics NAV erzeugt, der für den Aufgabenwarteschlangenposten genutzt wird.

##### Der Aufgabenwarteschlangenposten

In der Übersicht kann über die Aktion -> Neu, ein neuer Aufgabenwarteschlangenposten angelegt werden. Es öffnet sich die oben gezeigte Karte. Folgende Einstellungen können beispielhaft angelegt werden:

###### Register Allgemein
{{<img src="/images/connectornav/einrichtung_queue_reg_allgemein.png" caption="Microsoft Dynamics NAV, Aufgabenwarteschlangenposten">}}

|Feldbeschreibung | |
|---|---|
|Art des auszuführenden Objekts | Auswahl zwischen: Bericht, Codeunit. In diesem Fall eine Codeunit.|
|ID Des auszuführenden Objekts | Objekt-ID, in diesem Fall die 5402516.|
|Beschreibung | Beschreibung des Aufgabenwarteschlangenpostens (optional).|
|Maximale Anzahl von Ausführungsversuchen | Gibt die Anzahl der ausführungsversuche bei einem Fehler an.|
|Letzter Bereit-Status | Gibt an, wann der Aufgabenwarteschlangenposten zuletzt aktiv war.|
|Früheste(s) Startdatum/-uhrzeit | Hier kann eine Kombination aus Datum und Uhrzeit eingetragen werden, wann der Aufgabenwarteschlangenposten starten soll (optional).|
|Ablaufdatum/-uhrzeit | Hier kann ein Ablaufdatum eingetragen werden, an dem der Aufgabenwarteschlangenposten enden soll (optional).|
|Priorität | Bei mehreren Posten kann hier eine Priorität festgesetzt werden.|
|Status | Zeigt den Status des Aufgabenwarteschlangenpostens an.|

###### Register Wiederholung
{{<img src="/images/connectornav/einrichtung_queue_reg_wiederholung.png" caption="Microsoft Dynamics NAV, Aufgabenwarteschlangenposten">}}

Hier kann eingestellt werden, wann der Aufgabenwarteschlangenposten ausgeführt werden soll. Eine Kombination aus Wochentagen, Start und Endzeit sind möglich. Des Weiteren muss angegeben werden, in welcher Periode (Anzahl in Minuten) sich der Posten wiederholen soll. Bei einem zeitnahen Versand der E-Mails oder Faxe empfiehlt sich ein kurzer Ablaufzeitraum wie im oben gezeigten Beispiel.

