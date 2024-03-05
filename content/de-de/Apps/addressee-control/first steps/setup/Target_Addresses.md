---
title: "Zieladressen"
date: 2020-02-28T00:00:00+09:00
description: 
draft: false
collapsible: false
weight: 5
---
### Einrichtung Zieladressen pro Bericht

Um die Zieladressen-Logik über die **Connector 365 Addressee Control** App nach Belieben einzustellen, öffnen Sie eine der Seiten *Berichtsauswahlen*.

{{< notice info Hinweis>}}
Bitte beachten Sie die folgende Tabelle der aktuell nutzbaren Berichtsauswahlen für die Nutzung mit **Connector 365 Addressee Control**. Dies bedeutet jedoch nicht, dass alle Verwendungen der einzelnen Berichtsauswahlseiten unterstützt werden.
{{< /notice >}}

| Verwendung | Unterstützt|
-------------|-------------
| Verkauf    | <img src="/images/apps/Addresse_Control/tick.png" width=30 >       |
| Einkauf    | <img src="/images/apps/Addresse_Control/tick.png" width=30 >       |
| Lager      | <img src="/images/apps/Addresse_Control/cross.png" width=30 >       |
| Cashflow   | <img src="/images/apps/Addresse_Control/cross.png" width=30 >       |
| Mahnung/Zinsrechnung  | <img src="/images/apps/Addresse_Control/tick.png" width=30 > ab Version 1.2.0.0 |
| Bankkonto | <img src="/images/apps/Addresse_Control/cross.png" width=30 >  |
| Projekt | <img src="/images/apps/Addresse_Control/cross.png" width=30 >  |
| Service | <img src="/images/apps/Addresse_Control/tick.png" width=30 > ab Version 1.4.0.0 |

Die **Connector 365 Addressee Control** App erweitert unterstützte Verwendungen einzelner Berichtsauswahlseiten um eine Auswahlliste.

*Beispiel aus dem Bereich Verkauf -> **Berichtsauswahl - Verkauf**:*

|<img src="/images/apps/Addresse_Control/AddresseeControl_Priorität_der_Adresse_DEU.png" />|
|-|

{{< notice info Hinweis>}}
Die Werkseinstellungen sind der Zieladressen-Logik des Standards von Business Central nachempfunden (Stand Februar 2024). 
Wir empfehlen Ihnen daher **nur** Änderungen in den Berichten vor zu nehmen, bei denen Sie eine abweichende Zieladressenlogik einrichten möchten.
{{< /notice >}}
<p></p>

Mit Connector 365 Addressee Control haben Sie die Möglichkeit, für verschiedene Berichtsverwendungen die Zieladressen-Logik jeweils abweichend von der Standard-Zieladressen-Logik einzustellen.

Im Folgenden beschreiben wir anhand der Standard-Zieladressen-Logik, wie Sie eine eigene Zieladressen-Logik einrichten können.

Im ersten Schritt müssen Sie hierzu definieren, wie das Dokumentlayout zugeordnet werden soll, wie z.B. an 
- Rechnung an Debitor-Nummer, bzw. Kreditor-Nummer
- Verkauf an Debitor-Nummer, bzw. Kreditor-Nummer

Anschließend definieren Sie im Bereich **Priorität der Adresse**, welche Tabelle und welches Feld im Bezug auf diese herangezogen werden sollen. Und in welcher Reihenfolge diese vom System herangezogen werden sollen.

| Tabelle | Beispiel-Feld |
|-|-|
|Auswahl des benutzerdefinierten Berichts | <img src="/images/apps/Addresse_Control/Dokumentenlayouts_Zieladressen.png" /> |
|Verkaufskopf | <img src="/images/apps/Addresse_Control/Belegkopf_Zieladresse_DEU.png" /> |
| Debitor / Kreditor | <img src="/images/apps/Addresse_Control/Debitor_Zieladresse_DEU.png" /> |

In der Berichtsauswahl haben Sie die Möglichkeit festzulegen, welches Feld als Standard-Zieladresse verwendet werden soll. Zudem können Sie hier definieren, welche Zieladresse die höchste Priorität bekommt und sollte diese Zieladresse nicht definiert sein, welche weiteren Zieladressen dann abhängig von der zugewiesenen Priorität herangezogen werden sollen.

Neben den Standard-Tabellen der Zieladressen-Logik stehen Ihnen ebenfalls folgende Tabellen zur Verfügung:

{{< notice info Hinweis>}}
Durch Löschen des Filters können Sie auf alle Standard-Tabellen aus Business Central zugreifen.
{{< /notice >}}
<p></p>

| Tabelle | Beispiel-Feld |
|-|-|
|  Lagerort | Wenn Sie im Beleg einen abweichenden Lagerort hinterlegt haben, können Sie die hier hinterlegte E-Mailadresse bei der Zieladressen-Logik heranziehen, wenn gewünscht. Auf folgendes Feld könnte für die E-Mailadresse zugegriffen werden: <img src="/images/apps/Addresse_Control/Bsp_Mailempfänger_Lagerortcode_DEU.png" /> |
| Lief. an Adressee | Wählen Sie eine abweichende Lieferadresse, so können Sie die hier hinterlegte E-Mailadresse, bzw. das entsprechende Feld als Zieladresse definieren. <img src="/images/apps/Addresse_Control/Bsp_Mailempfänger_LiefanAdresse_DEU.png" /> | 
