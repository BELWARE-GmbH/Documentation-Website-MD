---
title: "Einrichtung der Funktionen"
date: 2020-02-28T10:08:56+09:00
description: 
draft: true
collapsible: true
weight: 1
---

# Der Connector NAV/BC
Die Dokumentation für die Einrichtung der Funktionen über den Objektdesigner

## Version 160 für Microsoft Dynamics NAV/BC

## Dokumentationsstand 2022/08/01

### Inhalt
Integration der Page Actions 
Copyright 


### Integration der Page Actions
Die Einrichtung der Funktionen findet über den Objektdesigner statt. Dort müssen für jede Page die entsprechenden Page-Actions aus dem Connector Objekt Kopiert und eingefügt werden.

Startpunkt ist die Pageübersicht des Objektdesigners.


Hier sucht man nun nach den entsprechenden Connector NAV Objekten. Die ID der
entsprechenden Objekte können Sie der beigefügten Tabelle entnehmen.

In unserem Beispiel nehmen wir das Objekt ***CON Sales Quote Selection***. Wir markieren es
und klicken anschließend am unteren Rand auf Design.


Hierdurch öffnet sich folgende Seite:


Hier wählt man nun unter dem Menüpunkt View Page Actions aus. Wodurch man auf
folgende Seite gelangt:


Hier sind sämtliche Page Actions gelistet, die der Connector bietet. Sie sorgen dafür, dass auf
den Pages Buttons hinzugefügt werden, die die Funktion des Connectors nutzbar machen.

Entsprechend ihrer erworbenen Module müssen Sie die passenden Actions auswählen.
Welche Actions zu Ihren Modulen gehören können Sie der beigefügten Tabelle entnehmen.

Für unser Beispiel gehen wir davon aus, dass wir alle Module erworben haben.
Dementsprechend selektieren wir alle gelisteten Actions und kopieren sie.

Nun gehen wir zurück zur Pageliste und suchen nach dem entsprechenden Objekt, in diesem
Fall ***Sales Quote*** und fügen die kopierten Page Actions unter Page Actions wieder ein.

Nachdem wir die Page Actions in die Einzelpage von ***Sales Quote*** eingefügt haben, müssen
wir anschließend das gleiche für Sales Quote List durchführen.

Danach wäre die Integration für die Pages der Sales Quote bereits abgeschlossen.

Diesen Vorgang wiederholt man anschließend für sämtliche in der Liste angegebenen
Objekte. Sowohl in der Einzelpage als auch der Liste.

Tabelle 1 Liste der Objekte in denen der Connector standardmäßig integriert wird.



### Copyright
© 2003-2022 BELWARE GmbH. Alle Rechte vorbehalten. Diese Dokumentation sowie die darin beschriebene Software unterliegt lizenzrechtlichen Bestimmungen und darf nur in Übereinstimmung mit dieser Lizenzvereinbarung benutzt oder kopiert werden.

Die Angaben und Daten in dieser Dokumentation dienen ausschließlich Informationszwecken und gelten unter Vorbehalt. Die BELWARE GmbH übernimmt dafür keinerlei Haftung oder Gewährleistung. Die BELWARE GmbH übernimmt keine Verantwortung für Folgeschäden aus Fehlern oder Ungenauigkeiten, die in dieser Dokumentation auftreten können.

Außerhalb der Lizenzeinräumung darf ohne ausdrückliche, schriftliche Genehmigung der BELWARE GmbH kein Teil dieser Publikation auf irgendeine Weise reproduziert, in einem Medium gespeichert oder übertragen werden, weder elektronisch, mechanisch, auf Band oder mit einer anderen Methode.

Alle gennannten Produkt- und Firmennamen sowie eingetragene Warenzeichen sind das Eigentum der entsprechenden Hersteller und als solche geschützt.

Für weitere Rückfragen und Verbesserungsvorschläge stehen wir gerne parat.
 BELWARE GmbH