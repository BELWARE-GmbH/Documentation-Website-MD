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

Nun haben Sie die Möglichkeit, für verschiedene Berichtsverwendungen die Zieladressen-Logik jeweils abweichend von der Standard-Zieladressen-Logik einzustellen.

Im Folgenden beschreiben wir die verschiedenen Felder für die Herkunft Art, sowie wie die Standard-Zieladressen-Logik in Business Central.

<div style="text-indent:20px;"><details>
  <summary>Dokumentenlayouts</summary>
  <p style="text-indent:30px;">Bei der Standard-Zieladressen-Logik von Business Central hat die höchste Priorität das Dokumentenlayout der Rech. an Deb.-Nr., woraus die</p> <p style="text-indent:30px;">Empfänger E-Mail gezogen wird. Im unten gezeigten Beispiel sehen Sie das Dokumentenlayout des rechnungsempfangenden Debitors. </p>
  <p style="text-indent:30px;">Für die Verwendung Rechnung sehen Sie das als Empfänger-E-Mail: "demo@belware.de" hinterlegt ist. </p> 
  <p style="text-indent:30px;">Zusätzlich sind 3 weitere Zieladressen hinterlegt, die bei dieser Verwendung ebenfalls mitgenommen werden.</p>
  <p style="text-indent:30px;"><img src="/images/apps/Addresse_Control/Dokumentenlayouts_Zieladressen.png" /></p>
  <p style="text-indent:30px;">Die Abbildung zeigt Ihnen ein Beispiel für die hinterlegte Priorität der Adresse mit den folgenden Parametern: </p>
  <p style="text-indent:30px;">Dokumentlayouts als Herkunft Art, 10000 Adatum Corporation als Rechn. an Deb.-Nr. und demo@belware.de als Empfänger-E-Mail </p>
  <p style="text-indent:30px;">mit weiteren 3 Zieladressen.</p>
</details></div>

<div style="text-indent:20px;"><details>
  <summary>Belegkopf</summary>
  <p style="text-indent:30px;">Nach der Standard-Zieladressen-Logik von Business Central wird, sollte in den Dokumentenlayouts kein Empfänger hinterlegt sein, als</p> 
  <p style="text-indent:30px;">nächstes die E-Mailadresse aus dem Belegkopf herangezogen.</p>
 <img src="/images/apps/Addresse_Control/Belegkopf_Zieladresse_DEU.png" />
 <p style="text-indent:30px;">Hier ist im Belegkopf "adatum@corporation.de als E-Mail hinterlegt.</p>
</details></div>

<div style="text-indent:20px;"><details>
  <summary>Debitor</summary>
  <p style="text-indent:30px;">Im letzten Schritt fällt der Standard von Business Central bei der Zieladressen-Logik auf die E-Mailadresse des rechnungsempfangenden</p> 
  <p style="text-indent:30px;">Debitors zurück, wenn in den Dokumentenlayouts als auch im Belegkopf keine Empfänger-E-Mail hinterlegt sind. </p>
  <img src="/images/apps/Addresse_Control/Debitor_Zieladresse_DEU.png" />
  <p style="text-indent:30px;">Welche E-Mail beim Debitor hinterlegt ist, können Sie über die Debitorenkarte im Abschnitt Adresse und Kontakt einsehen.</p> 
  <p style="text-indent:30px;">In diesem Beispiel würde bei fehlender E-Mail in den Dokumentenlayouts und im Belegkopf die E-Mailadresse "adatum.corporation@mail.de"</p>
  <p style="text-indent:30px;">als Empfänger-E-Mail herangezogen, da diese beim rechnungsempfangenden Debitor alas E-Mail hinterlegt ist.</p>
</details></div>

<div style="text-indent:20px;"><details>
  <summary>Kreditor</summary>
  <p style="text-indent:30px;">Genau wie der Debitor beim Verkauf, wird der Kreditor beim Einkauf als letzte Priorität bezüglich der Zieladressen-Logik herangezogen.</p> 
  <p style="text-indent:30px;">Die E-Mail, welche beim Kreditor hinterlegt ist, können Sie über die Kreditorenkarte im Abschnitt Adresse und Kontakt einsehen.</p>
  <img src="/images/apps/Addresse_Control/Priorität_Kreditor_DEU.png" />
</details></div>

<div style="text-indent:20px;"><details>
  <summary>Kontakt</summary>
  <p style="text-indent:30px;">Standardmäßig wird der Kontakt bei der Zieladressen-Logik von Business Central nicht berücksichtigt.</p> 
  <p style="text-indent:30px;">Für eine flexibele Empfängersteuerung können Sie jedoch auch auf die Ebene des Kontakts zugreifen.</p>
</details></div>
<p></p>

In der Berichtsauswahl haben Sie die Möglichkeit festzulegen, welches Feld als Standard-Zieladresse verwendet werden soll. Zudem können Sie hier definieren, welche Zieladresse die höchste Priorität bekommt und sollte diese Zieladresse nicht definiert sein, welche weiteren Zieladressen dann abhängig von der zugewiesenen Priorität herangezogen werden sollen.




**ALT**
Nun haben Sie die Möglichkeit, eines der aufgezeigten Felder als Standard-Zieladresse zu definieren.
Die angezeigten Felder auf dieser Seite sind Felder, welche einen direkten Bezug zu einem Debitor/Kreditor oder zu einem Kontakt haben.
Legt man also beispielsweise für die Verwendung (Verkaufs-)**Rechnung** eine Verknüpfung zu Feld Nr. **2** - **Verk. an Deb.-Nr.** an, so wird der Empfänger einer Verkaufsrechnung künftig immer aus dem Debitor gesucht, welcher mit **Verk. an Deb.-Nr.** verknüpft ist.

{{< notice info>}}
Wählt man als Zieladresse eine Feldzuordnung zu einem Debitor/Kreditor, so hat dies auch Einfluss auf die Wahl der Dokumentlayouts. 
Wenn Sie beispielsweise für Verkaufsrechnungen festlegen, dass der Verkauf-an-Debitor für die Suche nach Zieladressen herangezogen werden soll, so werden auch die Einstellungen der Dokumentlayouts des entsprechenden Debitors entnommen. 
Standardmäßig ist in Business Central hierfür der Rechnungsempfänger vorgesehen. 
Mit **Connector 365 Addressee Control** können Sie dieses Verhalten übersteuern.
{{< /notice >}}

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
