---
title: "Nutzer & Gruppen"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 3
---
### Einrichtung von Gruppen

Gruppen bieten Ihnen die Möglichkeit, Ihre Nutzer zu sortieren. Dies kann zum Beispiel anhand der Zugehörigkeit zu einer Abteilung oder einem Team erfolgen. Nutzer, die einer Gruppe zugewiesen werden, sehen nur andere Nutzer aus der gleichen Gruppe in ihrem CTI-Client. Die Benutzung von Gruppen ist optional.

Öffnen Sie über die Suchfunktion die **CTI-Gruppen**, hier findet sich eine Tabelle mit zwei Spalten.

![](images/apps/ctigruppende.PNG)

Wenn Sie eine neue Gruppe anlegen wollen, klicken Sie auf **Neu**, um die Bearbeitung zu aktivieren. Tragen Sie nun in das Feld **Gruppen-ID** die gewünschte ID für die Gruppe ein. Anschließend geben Sie der Gruppe noch einen vollständigen Namen im Feld **Gruppenname**.

Wiederholen Sie diesen Prozess bis alle gewünschten Gruppen angelegt sind. Die Zuordnung von Nutzern zu den Gruppen erfolgt wie unten beschrieben in der Benutzer Einrichtung.

### Einrichtung einzelner Nutzer

Als nächsten Schritt sollten Sie Ihre Nutzer anlegen. Öffnen Sie erneut die Suchfunktion und suchen Sie nach **Benutzer Einrichtung**. Legen Sie in der Tabelle den gewünschten Nutzer an, falls dieser noch nicht vorhanden ist.

![](images/apps/cti_starface/CtiFStarface_BenEinr.png)

 Aktivieren Sie anschließend im unteren Teil des Dialogs mit dem Schalter **CTI aktiv** die Nutzung von CTI for STARFACE für diesen Nutzer.

![](images/apps/cti_starface/CtiFStarface_BenEinr_Detail.png) 

Über das Feld **CTI-Seite öffnen** kann gewählt werden, ob bei Anrufen das CTI-Fenster geöffnet wird und für welche Anrufrichtung dies gelten soll: eingehend, ausgehend oder beide Richtungen.
Das Feld **Zeitpunkt des Öffnens der CTI-Seite** legt fest, ob das Fenster bereits beim Rufaufbau (Klingeln) geöffnet wird oder erst, wenn die Gesprächspartner tatsächlich verbunden sind.
Im Feld **Durchwahl** wird die entsprechende Durchwahl des Nutzers angegeben.
Über das Feld **CTI-Gruppe** kann nun der einzelne Nutzer einer Gruppe zugeordnet werden, die wie oben beschrieben erstellt wurde.
Im Feld **CTI-Seiten-ID** kann über die drei Punkte am Rand eine Auswahlliste geöffnet werden. Aus dieser kann die Seite ausgewählt werden, die sich bei eingehenden Anrufen automatisch öffnen soll. Die in der Liste vorhandenen Seiten basieren auf folgenden Tabellen:

- Kontakte (5050)
- Debitoren (22)
- Kreditoren (27)

Bei Debitoren und Kreditoren ist zu beachten, dass diese mit einem Kontakt verknüpft sein müssen.

Unter **Nr. nicht gefunden Aktion** können Sie festlegen, was beim eingehenden Anruf einer unbekannten Rufnummer geschehen soll. Die Optionen sind, dass keine Aktion ausgelöst wird, dass das Anlegen eines Kontaktes abgefragt wird oder dass direkt ein neuer Kontakt angelegt wird.
Weitere Informationen hierzu gibt es im Teil [Eingehende Anrufe](de-de/apps/cti-for-starface/working-with-cti-for-starface/incoming-calls/).

Wiederholen Sie diesen Prozess für alle Nutzer der Connector 365 CTI for STARFACE App.