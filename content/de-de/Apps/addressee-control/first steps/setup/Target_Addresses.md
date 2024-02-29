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
Bitte beachten Sie die folgende Tabelle der aktuell nutzbaren Berichtsauswahlen für die Nutzung mit **Connector 365 Addressee Control**.
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

Die **Connector 365 Addressee Control** App erweitert unterstützte Berichtsauswahlseiten um eine Auswahlliste.

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

Im ersten Schritt müssen Sie hierzu wählen, welche Tabelle herangezogen werden soll, in der nach dem Zieladressen-Feld geschaut werden soll. Hierbei können Sie wählen zwischen:
- Rechnung an Debitor-Nummer, bzw. Kreditor-Nummer
- Verkauf an Debitor-Nummer, bzw. Kreditor-Nummer

Anschließend definieren Sie im Bereich **Priorität der Adresse**, welche Tabelle und welches Feld im Bezug auf diese herangezogen werden sollen. Und in welcher Reihenfolge diese vom System herangezogen werden sollen.

| Tabelle | Erläuterung |
|-|-|
|Auswahl des benutzerdefinierten Berichts | Dies ist die Tabelle, auf der das Dokumentlayout basiert. Bei der Standard-Zieladressen-Logik von Business Central hat die höchste Priorität das Dokumentenlayout der Rech. an Deb.-Nr., woraus die Empfänger E-Mail gezogen wird. Im unten gezeigten Beispiel sehen Sie das Dokumentenlayout des Debitors. Für die Verwendung Rechnung sehen Sie das als Empfänger-E-Mail: "demo@belware.de" hinterlegt ist. Zusätzlich sind 3 weitere Zieladressen hinterlegt, die bei dieser Verwendung ebenfalls mitgenommen werden. <img src="/images/apps/Addresse_Control/Dokumentenlayouts_Zieladressen.png" /> Die Abbildung zeigt Ihnen ein Beispiel für die hinterlegte Priorität der Adresse mit den folgenden Parametern: Dokumentlayouts als Zieladress-Tabelle. |
|Verkaufskopf | Nach der Standard-Zieladressen-Logik von Business Central wird, sollte in den Dokumentlayouts keine Empfänger-E-Mailadresse hinterlegt sein, als nächstes das E-Mail-Feld im Belegkopf herangezogen werden. <img src="/images/apps/Addresse_Control/Belegkopf_Zieladresse_DEU.png" /> Hier ist im Belegkopf "adatum@corporation.de als E-Mail hinterlegt. |
| Debitor / Kreditor | Im letzten Schritt fällt der Standard von Business Central bei der Zieladressen-Logik auf die E-Mailadresse des Debitors / Kreditors zurück, wenn in den Dokumentlayouts und im Belegkopf jeweils keine E-Mail hinterlegt ist. <img src="/images/apps/Addresse_Control/Debitor_Zieladresse_DEU.png" /> Welche E-Mail beim Debitor/Kreditor hinterlegt ist, können Sie über die Debitorenkarte/Kreditorenkarte im Abschnitt Adresse und Kontakt einsehen. In diesem Beispiel würde bei fehlender E-Mail in den Dokumentenlayouts und im Belegkopf die E-Mailadresse "adatum.corporation@mail.de" als Empfänger-E-Mail herangezogen, da diese beim rechnungsempfangenden Debitor als E-Mail hinterlegt ist. |

In der Berichtsauswahl haben Sie die Möglichkeit festzulegen, welches Feld als Standard-Zieladresse verwendet werden soll. Zudem können Sie hier definieren, welche Zieladresse die höchste Priorität bekommt und sollte diese Zieladresse nicht definiert sein, welche weiteren Zieladressen dann abhängig von der zugewiesenen Priorität herangezogen werden sollen.

Neben den Standard-Tabellen der Zieladressen-Logik können Sie ebenfalls folgende Tabellen bei der Priorität der Adresse wählen:
| Tabelle | Erläuterung |
|-|-|
|  Lagerort | Wenn Sie im Beleg einen abweichenden Lagerort hinterlegt haben, können Sie die hier hinterlegte E-Mailadresse bei der Zieladressen-Logik heranziehen, wenn gewünscht. Auf folgende E-Mailadresse würde zugegriffen werden: <img src="/images/apps/Addresse_Control/Bsp_Mailempfänger_Lagerortcode_DEU.png" /> |
| Lief. an Adressee | Wählen Sie eine abweichende Lieferadresse, so können Sie die hier hinterlegte E-Mailadresse als Zieladresse in der Priorität der Adressen definieren. <img src="/images/apps/Addresse_Control/Bsp_Mailempfänger_LiefanAdresse_DEU.png" /> | 


<a name="ACCon365" class="anchor"></a>
### Kompatibilität zu anderen **Connector 365 Apps**

Mit **Connector 365 Addressee Control** lassen sich auch die Zieladressen-Logik weiterer **Connector 365 Apps** anpassen.
Folgende **Connector 365 Apps** sind kompatibel zu **Connector 365 Addressee Control**:

-  **Connector 365 XRechnung**
-  **Connector 365 E-Post**
-  **Connector 365 Easy Document Pin**
-  **Connector 365 Mail Experience Plus**
   >  **Connector 365 Mail Attachments Plus**
   >  **Connector 365 Mail Subject Plus**
