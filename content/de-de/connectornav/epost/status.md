---
title: "E-Post Statusabfrage"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 6
---

#### E-Post Statusabfrage

Sobald Sie einen Versand per E-Post getätigt haben, so werden Sie feststellen, dass noch kein Status für den zugehörigen Eintrag in der Jobliste angezeigt wird.

![](/images/connectornav/epost/statusabfrage.png)

Um den Status für versendete E-Post-API-Briefe zu bekommen, so empfiehlt sich dafür ebenfalls eine Aufgabenwarteschlange einzurichten. Dazu ist ähnliches Vorgehen wie bei der E-Post Summary-Warteschlange notwendig. Öffnen Sie dazu die Seite **Aufgabenwarteschlangenposten** und legen Sie einen neuen Warteschlangenposten an.

![](/images/connectornav/epost/statusabfrage2.png)

Als Art des auszuführenden Objektes ist **CodeUnit** anzugeben. Die ID des auszuführenden Objekts lautet: **5402581**. Weitere Einstellungen können Sie je nach individuellen Präferenzen festlegen. Es ist jedoch zu empfehlen, die Statusabfrage nicht in zu geringen Zeitabständen auszuführen, da dies die Performanz des Systems beeinträchtigen könnte. In diesem Beispiel haben wir daher eine Wartezeit von einer Stunde zwischen den Ausführungen gewählt.

Sobald die Warteschlange ausgeführt wird, so wird für jeden Eintrag in der Jobliste, für den noch kein E-Post-Status vorhanden ist, ein Status bei der deutschen Post angefragt. Wurde ein Status erfolgreich abgefragt, so ändert sich das Feld **Status Rückmeldung** von **Nein** auf **Ja.** Des Weiteren wird das Feld **Statuswert** gefüllt, über welches Sie Auskunft über den Erfolg bzw. Misserfolg des Vorgangs erhalten.

Des Weiteren gibt es noch die Möglichkeit, **einen** Joblisteneintrag manuell auf dessen E-Post-Status abzufragen. In der Seite Jobliste finden Sie dazu unter Aktionen den Schaltknopf **E-Post API Statusabfrage**. Betätigen Sie diesen, um den E-Post Status für einen markierten Joblisteneintrag zu setzen.

![](/images/connectornav/epost/statusabfrage3.png)