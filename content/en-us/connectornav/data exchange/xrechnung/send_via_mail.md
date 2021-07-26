---
title: "Direktversand per E-Mail"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 7
---

##### XRechnung direkt per E-Mail versenden (Connector E-Mail Modul)

Wenn Sie zusätzlich das Connector365-Modul **E-Mail** installiert haben, können Sie eine XRechnung nach der Erzeugung direkt per E-Mail durch den Connector versenden. Dazu müssen sie eine Anpassung in der Kommunikationsmatrix vornehmen.

![](/images/connectornav/data_exchange/xr_mail1.png)

Ändern Sie einfach den Wert des Feldes **Jobmodus** von **PDF** auf **E-Mail.** Zudem können Sie optional eine Standard-Zieladresse eingeben. Nun kann die markierte Rechnung über die Schaltfläche **E-Mail**, oder über die Schaltfläche **Stapellauf**, sofern der Eintrag für den Stapelmodus markiert worden ist, in das **XRechnung**-Format konvertiert und direkt per E-Mail weiter versendet werden.

![](/images/connectornav/data_exchange/xr_mail2.png)

Nach Klicken auf der Schaltfläche **E-Mail** oder **Stapellauf**, erscheint ein Dialog zum E-Mail-Versand. In das Feld **Zieladresse** wird die Zieladresse aus der Kommunikationsmatrix übernommen. Die Adresse kann jedoch auch für diesen Dialog geändert werden, falls nicht die Standardadresse für den Debitor verwendet werden soll.

![](/images/connectornav/data_exchange/xr_mail3.png)

Nach Klick auf **OK**, wird die XRechnung erzeugt und wie auch im **PDF-Jobmodus** validiert (falls eingerichtet). Sollte die Validierung erfolgreich sein, erhält der Empfänger die XRechnung per Mail. Falls die Validierung fehlschlagen sollte, gilt gleiches wie bei XRechnung im **PDF-Jobmodus**. Fehlerhafte Aufträge werden in der **Jobliste** mit einem „**-„** versehen.

![](/images/connectornav/data_exchange/xr_mail4.png)

Mit einem Klick auf das „**-**„ aus der Spalte Statuswert, lässt sich die Rückmeldungsübersicht öffnen. Dort lässt sich der Validierungsstatus aus der Spalte **STATUSTEXT** entnehmen.

![](/images/connectornav/data_exchange/xr_mail5.png)

Wenn eine XRechnung nicht erfolgreich validiert werden kann, so wird **keine** E-Mail verschickt. Dies gilt nicht, wenn die XRechnung-Prüfung in der Einrichtung ausgeschaltet wurde.