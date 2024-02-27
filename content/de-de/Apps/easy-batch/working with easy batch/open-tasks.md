---
title: "Offene Aufgaben"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 4
---
### Arbeiten mit Easy Batch

### Offene Aufgaben

Die Seite **Offene Aufgaben** bietet Ihnen eine Übersicht sämtlicher Belege, welche zur Verarbeitung eingestellt wurden, allerdings noch nicht (erfolgreich) verarbeitet wurden.

![](images/apps/Easy_Batch/de-de/app_open_tasks.png)

Neben der geplanten Verarbeitungszeit kann im Fehlerfall im Feld **Fehlernachricht** nachgeprüft werden, warum die Verarbeitung fehlschlug.

Über die Schaltfläche **Verarbeitung stornieren** kann die Verarbeitung für einzelne Belege gestoppt werden.

Die Aktion **Aufgabe wiederholen** stellt die selektierten Aufgaben erneut zur Verarbeitung ein.
Es werden nur Aufgaben berücksichtigt, welche bei der Verarbeitung auf einen Fehler gestoßen sind.

Über **Berichte** können Sie sich jeweils eine Vorschau des selektierten Berichts als auch des E-Mail-Textes anzeigen lassen.

Durch Klicken des Felds **Belegnr.** navigieren Sie zum spezifischen Beleg.

Nachdem die Verarbeitung erfolgreich war, werden die Vorgänge aus dieser Übersicht entfernt und anschließend in den [Connector 365 Aktivitäten](/de-de/apps/easy-batch/working-with-easy-batch/archive/) archiviert.

In der folgenden Tabelle finden Sie weitere Informationen zu den Feldern aus der Liste:

| Feld | Bedeutung |
|-|-|
| **Belegnr.** | Mit einem Klick auf die Belegnummer kommen Sie direkt zum entsprechenden Beleg.|
| **Belegart** | Hier können Sie sehen, um welche Art von Beleg es sich für diese entsprechende Belegnummer handelt.|
| **Verarbeitungszeit** | Zeigt Ihnen den Zeitpunkt an, zu welchem diese Aufgabe verarbeitet werden soll. Wenn Sie in der Connector 365 Einrichtung eine "feste" Verarbeitungszeit eingerichtet haben, dann wird Ihnen hier gezeigt für wann die Verarbeitung der Aufgabe eingestellt wurde. |
| **Erstellt am** | Zeigt an, zu welcher Zeit und Datum die Aufgabe gerade erstellt wurde. |
| **Erstellt von** | Hier können Sie sehen, welcher Nutzer die Aufgabe erstellt hat. |
| **Fehlernachricht** | Wenn bei der Verarbeitung der Aufgabe ein Fehler aufgetreten ist, dann wird die entsprechende Aufgabe farblich rot markiert. Ebenfalls zeigt dieses Feld dann eine kurze Fehlernachricht an, in welcher der Fehler beschrieben wird.  |
| **Freigegeben** | Zeigt an, ob die Aufgabe freigegeben ist. |
| **Kontotyp** | Zeigt den mit der Aufgabe, bzw. entsprechendem Beleg verknüpften Kontotyp an. |
| **Kontonr.** | Gibt die Kontonummer an, die mit dem Beleg verknüpft ist. |
| **Kontaktnr.** | Zeigt die Kontaktnummer an, die mit dem Beleg verknüpft ist. |
| **Dateien** | Hier sehen Sie die Anzahl der zusätzlichen Dateien, die zusammen mit dem Beleg für die ausgewählte Aufgabe verschickt werden. Hierunter fallen u.a. Standardanhänge, Beleganhänge und Belegzeilenanhängen. |
| **Jobmodus** | Zeigt an, wie der Beleg verarbeitet wird. Beispiele für Jobmodi sind z.B. Mail oder XRechnung. |
| **Empfängeradresse** | Bei Versand via E-Mail sehen Sie hier an welche Empfängeradresse (E-Mailadresse) der Beleg gesendet wird. |
| **Absenderadresse** | Bei Versand via E-Mail sehen Sie hier von welcher Absenderadresse (E-Mailadresse) der Beleg gesendet wird. |
| **Berichts-ID** | Zeigt die Berichts-ID an, mit der der Beleg erstellt wird. |
| **Betreff** | Hier wird der Betreff angezeigt, mit dem die E-Mail gesendet wird. |
| **Dateiname** | Zeigt den Dateinamen an des generierten Berichts an, mit dem die E-Mail gesendet wird. |
| **Weitere Empfänger** | Bei weiteren E-Mail-Empfängern können Sie hier die Anzahl und die weiteren Empfängeradressen einsehen. |
| **Leitweg-ID** | In Verbindung mit unserer Connector 365 XRechnung können Sie hier die angegebene Leitweg-ID des Empfängers für diese XRechnung sehen. |
| **E-POST Einstellungen** | In Verbindung mit unserer Connector 365 E-POST können Sie hier beim entsprechenden Jobmodus weitere Informationen einsehen, wie ob Ihre E-POST in Farbe, ob mit oder ohne Deckblat, ob in Duplex, ob es sich um ein Einschreiben handelt und um welche Art von Einschreiben und ob die eingereichte Aufgabe im Testmodus oder nicht verschickt wird. |