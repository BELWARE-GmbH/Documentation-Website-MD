---
title: "Das Modul E-Rechnungs-Import"
date: 2024-10-16
description: 
draft: false
collapsible: true
weight: 4
---

# Das Modul E-Rechnungs-Import

## Nutzen 

Das Modul E-Rechnungs-Import (Validator) ist ein Bestandteil der Connector NAV Basis Extended. 
Mit dem Modul Modul E-Rechnungs-Import können Sie ankommende E-Rechnungen per E-Mail in Microsoft Dynamics NAV zentral verwalten. Sie minimieren damit den manuellen Aufwand vieler einzelner Arbeitsschritte, die ankommenden XML per Mail über manuelle Online-Tools zu prüfen, zu visualisieren oder auch zu entpacken. 
Das Modul Modul E-Rechnungs-Import mit unserem Validator unterstützt Sie dabei, all Ihre E-Rechnungen zentral in einem System zu verwalten, direkt zu prüfen, zu visualisieren und embedded Dateien direkt zu entpacken.  

Alle E-Rechnungen sind zentral am Einkaufs-Vorgang gespeichert und können jederzeit immer wieder eingesehen werden. Sie haben bereits ein DMS System? Unsere Module lassen sich spielend an vorhandene DMS Systeme docken. 


## Einrichtung Import 

 

Unter dem Menü-Punkt **Connector NAV/BC** - **Einrichtung** - Register E-Mail finden Sie das Feld **Dokumenteneingangsverzeichnis** - Hier können Sie die Verbindung schaffen, zu einem Share--Folder, um die E-Rechnungen aus Mail ins Dynamics NAV zu überführen. Im Beispiel heißt dieser hier ….\COM_IN\... 

 

Entweder Sie nutzen den Connector NAV/BC als Archiv-System dann richten Sie den Reiter  

"Dokumentenarchivierungsverzeichnis" ebenfalls ein, hier in dem Beispiel ….\COM_ARCHIV\... 

 

Oder Sie möchten die eingehenden E-Rechnungen direkt in Ihr DMS mit einfließen lassen, dann nutzen Sie den 

Zusätzlichen Ausgabepfad als ShareFolder, hier in dem Beispiel …\DMS_Übergabe\.... 

 

So werden die E-Rechnungen o. Dokumente aus dem ….\COM_IN\... An den richtigen Ort weitergeleitet 

|![](images/connectornav/e-documents/de/inc-docs-setup.png)|
|-|


## Verschiebung der E-Rechnung aus Mail nach Dynamics NAV 
 

Ziehen Sie nun die angekommenden E-Rechnungen aus Ihrem Mail-Postfach in den, in unserem Beispiel ….\COM_IN\... Ordner. Das Modul E-Rechnungs-Import (Validator) kann aktuell folgende E-Rechnungen einlesen und verarbeiten: XRechnung, PEPPOL BIS 3, ZUGFERD (XML).  

|![](images/connectornav/e-documents/de/inc-docs-com-in-folder.png)|
|-|

Nachdem Sie alle E-Rechnung in den ….\COM_IN\... Vorschoben haben, gehen Sie in den Connector NAV/BC  unter dem Menüpunkt Listen finden Sie den Reiter eingehende Dokumente! 

|![](images/connectornav/e-documents/de/inc-docs-menu-con-nav.png)|
|-|

Sie öffnen den Reiter eingehende Dokumente. Hier finden alle bereits eingelesenen und verarbeiteten E-Rechnung aus der Vergangenheit und können nun Ihre neuen E-Rechnungen aus dem …\COM_IN\... Unter dem Menüpunkt "Dokumente importieren" hinzufügen. 

|![](images/connectornav/e-documents/de/inc-docs-list-page.png)|
|-|


Alle E-Rechnungen oder Dokumente werden jetzt eingelesen und Sie können den Fortschritt beobachten. Dieser Prozess kann auch automatisiert über Wartschlangen im Hintergrund erfolgen. Ist im einzelnen Projekt zu berücksichtigen.  

Gerne unterstützen wir dabei. Im Connector NAV/BC ist dies erstmal eine manuelle Aktion. 

|![](images/connectornav/e-documents/de/inc-docs-import-dialog.png)|
|-|

Nun werden stehen Ihnen alle E-Rechnungen o. Dokumente aus dem …\COM_IN\... In Dynamics NAV zur Verfügung. Alle eingelesenen E-Rechnungen werden eindeutig mit einer laufenden Nummer und Datumsstempel versehen.  

 

Das Modul E-Rechnungs-Import (Validator) überführt nicht nur die Daten ins System, sondern bereitet die E-Rechnungen auch schon bereits für die weitere Verarbeitung auf. 

|![](images/connectornav/e-documents/de/inc-docs-status-after-import.png)|
|-|

Nun werden stehen Ihnen alle E-Rechnungen o. Dokumente aus dem …\COM_IN\... In Dynamics NAV zur Verfügung. Das Modul E-Rechnungs-Import (Validator) überführt nicht nur die Daten ins System, sondern bereitet die E-Rechnungen auch schon bereits für die weitere Verarbeitung auf. Das sehen Sie in dem Reiter Dateien. 

|![](images/connectornav/e-documents/de/inc-docs-action-show-files.png)|
|-|

Für unser Beispiel nehmen wir den Vorgang 4399 mit den 5 Dateien. Unter Dateien anzeigen können Sie sich die begleitenden Dokumente zu der E-Rechnung ansehen. Sie nutzen dafür die Funktion "Dateien anzeigen" oben in der Menüleiste. In einem separaten Fenster öffnet sich die Übersicht der begleitenden Dokumente. 

|![](images/connectornav/e-documents/de/inc-docs-action-show-file.png)|
|-| 

Der ...xml_report.html und .._view.html finden Sie an jeder E-Rechnung. Das macht unser Modul E-Rechnungs-Import (Validator). Somit haben Sie die Gewissheit, dass die ankommende E-Rechnung den 

Gesetzlichen Vorgaben entspricht. Der Viewer gibt Ihnen einen visuellen Einblick in die XML. Die weiteren Daten der E-Rechnung aus unseren Beispiel sind Daten und Dateien, die in der E-Rechnung in der XML enthalten sind. Auch das ist eine Kernfunktion des Moduls E-Rechnungs-Import (Validator). 

Einblick in die Datei …xml_report.html - eine valide E-RG  

|![](images/connectornav/e-documents/de/inc-docs-validation-report.png)|
|-|

Ein Beispiel einer nicht validen E-Rechnung: 

|![](images/connectornav/e-documents/de/inc-docs-validation-report-failure-feedback.png)|
|-|

|![](images/connectornav/e-documents/de/inc-docs-validation-report-failure.png)|
|-|

Mit einem negativen Prüfbericht können Sie direkt die Rechnung wieder abweisen und Ihren Lieferanten bitten eine konforme und valide neue zu erstellen. So buchen Sie nicht eine nicht konforme Rechnung ein.  

Das ist wichtig, da bei einer Prüfung die XML Vorrang einer PDF hat! 

 

Einblick in die Datei …view.html…. - Die Visualisierung der E-Rechnung 

|![](images/connectornav/e-documents/de/inc-docs-visualization-file.png)|
|-|

|![](images/connectornav/e-documents/de/inc-docs-visualization-file2.png)|
|-|

|![](images/connectornav/e-documents/de/inc-docs-visualization-file3.png)|
|-|

|![](images/connectornav/e-documents/de/inc-docs-visualization-file4.png)|
|-|

Die Rechtsbegründeten Unterlagen werden mit unserem Modul E-Rechnungs-Import (Validator) direkt ins System geholt. Hier noch mal der Auszug aus unserem Beispiel: 

|![](images/connectornav/e-documents/de/inc-docs-attachments-list.png)|
|-|

Connector NAV weitere Verarbeitung der E-Rechnung zu einer Geb. EK-RG oder Geb. EK-GS 


Nachdem Sie alle eingehenden Dokumente geprüft haben, können Sie nun aus den XML Dateien Ihre Einkaufs-Rechnungen erstellen. Dafür nutzen Sie die Funktion oben im Menüband "Eingehenden Beleg erzeugen".  

|![](images/connectornav/e-documents/de/inc-docs-create-doc.png)|
|-|

Bestätigen diesen Vorgang: 

|![](images/connectornav/e-documents/de/inc-docs-create-doc-dialog.png)|
|-|

 

Und Sie arbeiten nun in der Standard Page weiter. Alle dazugehörigen Dokumente aus dem Import werden direkt mitgenommen. Da auch hier keine Warnung mehr vorliegt, dann diese E-Rechnung direkt weiter verarbeitet werden. 


Warnungen an der Stelle haben dann nichts mehr mit der konformen und validen E-Rechnung zu tun, sondern dies ist ein Hinweis auf ggf. Stammdatenpflege. Hier wird dann gewarnt, dass Informationen am KRE zum Beispiel fehlen.   

|![](images/connectornav/e-documents/de/inc-docs-card-page.png)|
|-|

Über die Funktion Beleg erstellen, geht es dann weiter zur Erstellung einer EK-Rechnung 

|![](images/connectornav/e-documents/de/inc-docs-doc-created.png)|
|-|

Die erzeugte EK-RG wird dem Datensatz nun zugeordnet. Sie können nun von hieraus in die EK-Rechnung springen. 

|![](images/connectornav/e-documents/de/inc-docs-linked-purchase-doc.png)|
|-|

Sie sehen nun, dass sich die E-Rechnung komplett in die Zeilen von Dynamics NAV mit den XML Daten aus der  

E-Rechnung aufgelöst haben. Auch hier stehen Ihnen wieder alle Rechtsbegründeten Unterlagen in der Factbox am Vorgang. zur Verfügung. So können Sie auch zu einem späteren Zeitpunkt immer wieder Zugriff auf diese Dateien. 

|![](images/connectornav/e-documents/de/inc-docs-purchase-doc-factbox.png)|
|-|

Um einen besseren Überblick bzgl. der internen Verarbeitung behalten, stehen auch Status Informationen in unserem Modul zur Verfügung. Sie sehen einmal den Status, ob die E_Rechnung schon als Eingangsrechnung erfasst wurde oder auch schon gebucht wurde. Durch die Funktion "Zugehörigen Beleg öffnen" werden Sie an die jeweilige Stelle des Verarbeitungsprozess direkt hingeführt. So müssen Sie die entsprechenden Tabellen nicht manuell suchen und öffnen. Sie gelangen direkt zu dem Vorgang. 

|![](images/connectornav/e-documents/de/inc-docs-open-linked-docs.png)|
|-|

Aus der Einkaufsrechnung habe wir mit der Standard Funktion buchen eine Geb. EK-Rechnung erzeugt. Auch hier haben Sie wieder alle Rechtsbegründete Unterlagen dabei, sowie den Validator Bericht, der Ihnen bestätigt, dass Ihre ankommende E-Rechnung valide und konform war. Sie haben jederzeit Zugriff auf diese Daten. 

|![](images/connectornav/e-documents/de/inc-docs-posted-purchase-doc-factbox.png)|
|-|

 
In den eingehenden Dokumenten können Sie den Status wieder sehen: 

|![](images/connectornav/e-documents/de/inc-docs-status-posted-doc.png)|
|-|

 

Unser Modul sieht keine Freigabe-Prozesse vor. Freigabe Workflows gibt es bereits in der Dynamics NAV Standard Version. Sollte das für Sie nicht ausreichen, gibt es die Möglichkeit weiterer Add-Ons oder kleine weitere Entwicklungen. Sprechen Sie uns oder Ihren Partner hierzu gerne an. 


Die Verknüpfung von eingehenden E-Rechnungen zu einer Bestellung ist aktuell in der Planung. 