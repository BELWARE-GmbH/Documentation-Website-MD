---
title: "Begleitende Dokumente"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 6
---

##### Begleitende Dokumente

Der XRechnung-Standard lässt es zu, rechnungsbegleitende Anlagen anzuhängen.  
Dieser Standard erlaubt Anhänge von folgenden MIME-Typen (Multipurpose Internet Mail Extensions):

-   Application/pdf (.pdf)

-   Image/png (.png)

-   Image/jpeg (.jpg)

-   Text/CSV (.csv)

-   Application/vnd.openxmlformats-officedocument.spreadsheethtml.sheet (.xslx)

-   Excel-Tabellen

-   Application/vnd.oasis.opendocument.spreadsheet (.ods)

-   OpenDocument-Tabellen

{{<notice warning "Wichtig">}}PDF-Anhänge können von manchen Auftraggebern als unsicher eingestuft werden und werden dementsprechend auch vom XRechnung Portal Deutschland als solche gekennzeichnet. Um dies zu vermeiden wird empfohlen stattdessen PDF/A-Dateien zu verwenden. Diese haben eine höhere Sicherheitsstufe und werden daher auch vom Portal als sichere Anghänge eingestuft. Im folgenden ein Zitat des [*zentralen Rechnungseingangs des Bundes (ZRE Bund):*](https://ref.xrechnung.bund.de/ref/er_files/nutzungsbedingungen_technisch_de.jsp){{</notice>}}
####
> „Die Anforderungen des Rechnungsempfängers sind durch den Rechnungssender zu berücksichtigen, beispielsweise, dass sicherheitsrelevante Behörden ggf. nur Anhänge im Format PDF/A erhalten können. Ob und welche Einschränkungen für einen Rechnungsempfänger gelten, ist beim jeweiligen Rechnungsempfänger zu erfragen.“

{{<notice info>}}Das PDF/A-Modul kann ebenfalls bei BELWARE erworben werden.{{</notice>}}
####
Mit dem XRechnung-Modul des **Connector NAV**s können Sie unterstützte Dokumenttypen ganz einfach in die resultierende XRechnung einbinden. Diese Anhänge können Sie entweder einer Rechnung hinterlegen, oder aber im Dialog beim Senden/Erstellen hinzufügen. Abhängig von der gewählten Methode sind Einrichtungen in den **Benutzerberichten** notwendig.

###### Methode 1 – Anhänge in Rechnungen hinterlegen

Navigieren Sie zu: **Connector 365 -\> Benutzerberichte**

![](/images/connectornav/data_exchange/begl_dok1.png)

Wählen Sie den Bericht für Ihre Verkaufsrechnungen (Hier: **Standard Sales – Invoice, 1306**) mit dem zugehörigen Sprachcode und der Benutzer-ID, falls vorhanden, und wählen Sie bearbeiten.

![](/images/connectornav/data_exchange/begl_dok2.png)

In dem Register **Steuerung**, setzen Sie ein Häkchen bei **Dokumentenlinks als Anhang**.

![](/images/connectornav/data_exchange/begl_dok3.png)

Dieses Häkchen muss gesetzt werden, damit der Connector angehängte Dokumente bei der XRechnung-Erzeugung berücksichtigt.

Navigieren Sie nun auf die Seite **Geb. Verkaufsrechnungen Auswahl** aus den **Connector 365 Templates**, markieren Sie eine Rechnung, für die Sie einen Anhang hinterlegen wollen, und klicken Sie auf **Bearbeiten**. Es öffnet sich die Rechnung. Klicken Sie nun auf **Links**. Diese Schaltfläche ist im oberen Menü unter dem Reiter **Start** zu finden.

![](/images/connectornav/data_exchange/begl_dok4.png)

Es öffnet sich ein weiteres Fenster:

![](/images/connectornav/data_exchange/begl_dok5.png)

Klicken Sie hier auf das Zahnrad-Symbol:

Nun finden Sie zwei weitere Felder, **Linkadresse** und **Beschreibung** vor. Klicken Sie das Kästchen mit den drei Punkte, welches rechts neben dem Feld **Linkadresse** zu finden ist.

![](/images/connectornav/data_exchange/begl_dok6.png)

Es sollte sich der Explorer öffnen, aus dem Sie eine beliebige Datei auswählen und öffnen können. Nachdem Sie dies getan haben, drücken Sie auf **Speichern**.

![](/images/connectornav/data_exchange/begl_dok7.png)

Das Fenster zeigt die hochgeladene Datei an. Jetzt können Sie das Fenster schließen und zu der Übersicht **Geb. Verkaufsrechnungen Auswahl** zurückkehren.

Überprüfen Sie dazu wie gewohnt, ob Sie die Einstellungen in der Kommunikationsmatrix für den betroffenen Debitor vorgenommen haben.

![](/images/connectornav/data_exchange/begl_dok8.png)<center>Kommunikationsmatrix-Einträge für den Beispiel-Debitor **Gilde Jupiter Versicherungen**</center>

Für den Jobmodus **PDF** und den betreffenden Bericht (hier 1306 für Geb. Verkaufsrechnungen) tragen Sie folgendes ein:   
Setzen Sie ein Haken in das Feld XRechnung und tragen Sie eine Leitweg-ID ein. Zusätzlich wählen Sie die **PEPPOL Verwendung** aus (Für dieses Beispiel Verkaufsrechnung) und tragen Sie bei PEPPOL Version **PEPPOL BIS3** ein. Letztere beiden Einträge können Sie aus dem zugehörigen Dropdown-Menü wählen. Wenn gewünscht, so können Sie unter **XRechnung PDF als Anhang** auswählen, ob zusätzlich die Rechnungs-PDF-Datei eingebettet werden soll.

Als nächstes navigieren Sie auf die Seite **Geb. Verkaufsrechnungen Auswahl** aus den **Connector 365 Templates** zurück und selektieren Sie eine Rechnung, die Sie in eine XRechnung umwandeln möchten.

Markieren Sie dann die von Ihnen bearbeitete Rechnung und drücken Sie auf die Schaltfläche **PDF**.

![](/images/connectornav/data_exchange/begl_dok9.png)

Falls Sie Option **Dialog anzeigen** für die Verkaufsrechnungen aktiviert haben, so öffnet sich das Dialogfenster (Methode 2).

![](/images/connectornav/data_exchange/begl_dok10.png)

Unter dem Register **Anhänge** sollte nun Ihre hochgeladene Datei zu sehen sein. Optional können Sie noch weiter Anhänge hinzufügen (Methode 2). Drücken Sie nun **OK,** um die Rechnung samt Anhang in eine XRechnung umzuwandeln.

###### Methode 2 – Anhänge über Dialog hinzufügen.

Navigieren Sie zunächst in die Benutzereinrichtung des **Connector NAV 365.**

![](/images/connectornav/data_exchange/begl_dok11.png)

Unter dem Register **Steuerung**, setzen Sie ein Häkchen bei **Dialog** oder bei **Dialog PDF**. (Wenn Dialog ausgewählt, erscheint **IMMER** ein Dialog, also auch beispielsweise bei Ausdruck oder bei E-Mailversand)

![](/images/connectornav/data_exchange/begl_dok12.png)

Navigieren Sie nun auf die Seite **Geb. Verkaufsrechnungen Auswahl** aus den **Connector 365 Templates**, und markieren Sie eine Rechnung

![](/images/connectornav/data_exchange/begl_dok13.png)

Überprüfen Sie dazu wie gewohnt, ob Sie die Einstellungen in der Kommunikationsmatrix für den betroffenen Debitor vorgenommen haben.

![](/images/connectornav/data_exchange/begl_dok14.png)<center>Kommunikationseinträge für den Beispiel-Debitor **Gilde Jupiter Versicherungen**</center>

Für den Jobmodus **PDF** und den betreffenden Bericht (hier 1306 für Geb. Verkaufsrechnungen) tragen Sie folgendes ein:   
Setzen Sie ein Haken in das Feld XRechnung und tragen Sie eine Leitweg-ID ein. Zusätzlich wählen Sie die **PEPPOL Verwendung** aus (Für dieses Beispiel Verkaufsrechnung) und tragen Sie bei PEPPOL Version **PEPPOL BIS3** ein. Letztere beiden Einträge können Sie aus dem zugehörigen Dropdown-Menü wählen.

Als nächstes navigieren Sie auf die Seite **Geb. Verkaufsrechnungen Auswahl** aus den **Connector 365 Templates** zurück und selektieren Sie eine Rechnung, die Sie in eine XRechnung umwandeln möchten.

Klicken Sie auf die Schaltfläche **PDF**.

![](/images/connectornav/data_exchange/begl_dok15.png)

Nach Klicken auf die Schaltfläche **PDF**, öffnet sich folgendes Dialogfenster:

![](/images/connectornav/data_exchange/begl_dok16.png)

Drücken Sie nun auf die Schaltfläche **Dateien hinzufügen** in dem Register **Anhänge**. Hierdurch öffnet sich ein weiteres Fenster, in der Sie eine Datei auswählen können, welche als Anlage hinzugefügt werden soll.

![](/images/connectornav/data_exchange/begl_dok17.png)

Selektieren Sie eine Datei, die Sie anfügen wollen und drücken Sie auf **Öffnen**.

![](/images/connectornav/data_exchange/begl_dok18.png)

###### Resultat 

Die ausgewählte Datei ist nun als Anhang in dem Dialogfenster zu sehen. Klicken Sie nun auf **OK** um eine XRechnung zu erzeugen. Die erzeugte XML-Datei sollte nun einen Eintrag für Anhänge enthalten.

![](/images/connectornav/data_exchange/begl_dok19.png)

Diesem Eintrag folgt die angehängte Datei, kodiert in das Base64-Format. Die kodierten Zeichenfolgen sind in der Regel sehr lang, wie im folgenden Prüfbericht zu sehen ist:

![](/images/connectornav/data_exchange/begl_dok20.png)<center>Ausschnitt des Prüfberichtes über die XML-Datei mit Anhang:</center>

Die öffentlichen Empfänger sind in der Lage, diese kodierten Zeichenfolgen zu dekodieren und somit die originalen Anhangs-Dateien wiederherzustellen.