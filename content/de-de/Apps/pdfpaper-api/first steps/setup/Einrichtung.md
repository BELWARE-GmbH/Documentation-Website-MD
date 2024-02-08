---
title: "Einrichtung"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### Einrichtung
Damit Ihre Dokumente in Ihrem Corporate-Design verschickt werden, müssen Sie vorab den Connector 365 PDF einrichten. Im Folgenden wird erläutert, welche Schritte notwendig sind, für die grundlegende Einrichtung und anschließende Nutzung.

### Allgemein
Für die allgemeine Einrichtung der App PDF suchen Sie über die **Tell me**-Funktion nach **Connector 365 Einrichtung** und öffnen Sie den entsprechenden Link. Klicken Sie anschließend auf **PDF-Einrichtung**. Die Einrichtung für die App klappt aus. 

|![](images/apps/pdf_SaaS/C365_pdf_DEU.png)|
|-|

##### API-Schlüssel
Hier füllen Sie nun zuerst das folgende Feld aus: **API-Schlüssel**. 
Ihren API-Schlüssel erhalten Sie von uns. Diesen können Sie über das folgende Formular anfragen oder via E-Mail bei uns erhalten. Der API-Schlüssel ist essentiell um die App nutzen zu können.

{{< notice info "Hinweis" >}}
 _Auch für die Test-Version benötigen Sie den API-Schlüssel. Bevor Sie Ihren Testzeitraum starten empfehlen wir Ihnen daher bei uns Ihren API-Schlüssel für die Nutzung der App anzufragen._
{{< /notice >}}
</p>

##### Konformitätsgrad
Unter dem Feld Dokumenteneinstellungen, können Sie den **Konformitätsgrad** festlegen. Dieser gibt die Konformitätstufe an, die eine Pdf-Datei erhalten soll, wenn sie erstellt wird.

##### Weitere Felder
Bevor Sie die weiteren Felder ausfüllen können, ist es nötig die entsprechenden Dateien im System zu hinterlegen. Um welche Dateien es sich handelt und wie Sie diese hinterlegen, zeigen wir Ihnen jetzt im Detail jeweils für **Briefpapier**, **Zertifikat** und **Anhänge**.


### Briefpapier
Bevor Sie die Briefpapierkonfiguration einrichten können, ist es notwendig, dass Sie Ihr Briefpapier im Pdf-Format im System hinterlegen. Suchen Sie über die **Tell me**-Funktion nach **Briefpapier**. 

Wenn Sie die App PDF zum ersten Mal verwenden, dann ist dort noch kein Briefpapier hinterlegt. Klicken Sie daher auf den Button **Neu** und hinterlegen Sie per Drag & Drop das gewünschte Briefpapier. Alternativ klicken Sie auf das Feld und durchsuchen Sie Ihre Dateien, bevor Sie die gewünschte Datei hier hinzufügen.

|![](images/apps/pdf_SaaS/Add_stationery_DEU.png)|
|-|

Weisen Sie Ihrem Briefpapier einen Code und einen eindeutigen Namen zu. Denn je eindeutiger der gewählte Code, desto einfacher die anschließende Konfiguration des Briefpapiers. Es besteht zudem die Möglichkeit für weitere Informationen eine Beschreibung hinzuzufügen. Ebenfalls finden Sie hier Informationen zum Dateinamen und der Dateigröße.

|![](images/apps/pdf_SaaS/Add_stationery_example_DEU.png)|
|-|

#### Briefpapierkonfiguration
Nachdem Sie Ihr Briefpapier hinterlegt haben. Öffnen Sie über die **Tell me**-Funktion die **Briefpapierkonfiguration**. Bei Erstkonfiguration ist hier noch keine Briefpapierkonfiguration hinterlegt.

|![](images/apps/pdf_SaaS/Stationery_tellme_DEU.png)|
|-|

Eine neue Briefpapierkonfiguration fügen Sie über den Button **Neu** hinzu. Die folgenden Schritte und Optionen sind für die Briefpapierkonfiguration erforderlich:
1. Weisen Sie Ihrer Briefpapierkonfigurationen einen **Code** zu.
2. Optional können Sie eine Beschreibung hinterlegen, in der Sie den Code weiter definieren.
3. In der Tabelle legen Sie unter dem Reiter **Briefpapierart** fest für welche Seite, bzw. Seiten Ihr Briefpapier verwendet wird. 
Folgende Optionen stehen Ihnen zur Verfügung:
    - Alle Seiten
    - Erste Seite
    - Der Seite folgen
    - Vorletzte Seite
    - Letzte Seite

Die Optionen die Seiten Ihres Briefpapiers zu konfigurieren, sind zahlreich. Hierbei gilt, dass Sie pro Option, bzw. Abschnitt der Seiten jeweils ein Briefpapier hinterlegen können. Im Folgenden führen wir diverse Beispiele an, um die möglichen Konfigurationen zu verdeutlichen.

##### Beispiel 1
Die einfachste Konfiguration ist, wenn Sie für alle Seiten das gleiche Briefpapier verwenden möchten. Wählen Sie hierzu als Briefpapierart **Alle Seiten** und hinterlegen Sie per Code das gewünschte Briefpapier.

|![](images/apps/pdf_SaaS/Example_1_allpages_DEU.png)|
|-|


##### Beispiel 2
Es besteht jedoch ebenfalls die Option mit Hilfe der Konfiguration für einzelne Seiten oder Seiten jeweils ein anderes Briefpapier zu hinterlegen. Hierunter sehen Sie verschiedene Beispielkonfigurationen, wo die Seiten unterschiedliche Briefpapiere zugewiesen bekommen haben.

|![](images/apps/pdf_SaaS/Example_2_differents_DEU.png)|
|-|

### Zertifikat
In der Einrichtung haben Sie die Möglichkeit ein Signaturzertifikat zu hinterlegen. Durch die digitale Signatur wird nicht nur der Autor für eine spätere Authentifizierung, sondern auch der Inhalt des Dokuemts im Moment der Signierung garantiert. Denn das zertfizierte Dokument kann nicht geändert werden, wodurch die Signatur die Integrität sichert.  

#### Signaturzertifikat
Sie können das Signaturzertifikat ***nur*** in der Connector 365 Einrichtung hinterlegen. Klicken Sie hier auf den Kasten und wählen Sie aus einen der von Ihnen hinterlegten Signaturen eine aus. Wenn Sie noch keine Signatur hinterlegt haben, klicken Sie auf **Neu**. Anschließend fügen Sie Ihre Signatur-Datei durch Drag & Drop, bzw. über das Durchsuchen Ihrer Dateien hinzu.

Das folgende Fenster öffnet sich nachdem Sie eine Datei hinzugefügt haben:

|![](images/apps/pdf_SaaS/Add_Signaturecertificate_DEU.png)|
|-|

Der Dateiname und die Dateigröße sind im Gegensatz zur obrigen Abbildung mit den Daten Ihrer Signatur gefüllt. Mit dem Code beschreiben Sie um welche Signatur es sich handelt, wodurch Sie diese identifizieren können, sollten Sie mehrere verwenden. Ebenfalls können Sie in der Beschreibung weitere Informationen hinterlegen zu dieser. Durch die Vergabe eines Passworts stellen Sie sicher, dass das Signaturzertifikat nur von berechtigten Personen verändert werden kann.

Sie können mehrere Signaturzertfikate hinterlegen, jedoch nur eins aktiv in der App nutzen. Um das Signaturzertifikat zu wechseln, wählen Sie ein anderes Signaturzertifikat aus, welches schon hinterlegt ist oder fügen dieses zuerst über die oben genannten Schritte hinzu.

### Anhänge
An dieser Stelle, der Connector 365 Einrichtung, können Sie Ihre Anhänge hinterlegen und die Konfiguration der Anhänge vornehmen.
Ebenfalls möglich ist es jedoch über die **Tell me**-Funktion nach **Anhängen** zu suchen. In der Verwaltung der Anhänge sehen Sie alle bereits hinzugefügten Medien, die Sie als Anhänge verwenden. Hier können Sie neue Medien hinzufügen indem Sie auf **+Neu** klicken und per Drag & Drop oder per Suche in Ihren Dateien, die entsprechende Datei hinterlegen.

Neue Anhänge können Sie jedoch auch über **Anhänge** in der Connector 365 Einrichtung hinzufügen. Dazu klicken Sie in das Kästchen **Einrichtung von Anhängen** und klicken Sie auf **+Neu** für eine neue Anhangskonfiguration.

Das folgende Fenster öffnet sich nun:

|![](images/apps/pdf_SaaS/Attachment_configuration_DEU.png)|
|-|

{{< notice info "Hinweis" >}}
 _Unter dem Begriff Hauptdokument ist hier der vom System generierte Bericht der jeweiligen Verwendung gemeint._
{{< /notice >}}
</p>

Zunächst müssen Sie Ihrer Anhangskonfiguration einen Code zuweisen, damit Sie Anhänge vor und nach dem Hauptdokument anhängen können. Neben dem Code können Sie ebenfalls noch eine Beschreibung zu Ihrer Anhangskonfiguration hinzufügen.

Nun haben Sie 2 Optionen um Anhänge hinzu zu fügen:
1. Anhänge **vor dem Hauptdokument anhängen**
2. Anhänge **nach dem Hauptdokument anhängen**

Das Hinzufügen von Anhängen verläuft bei beiden Optionen nach dem selben Schema. Allerdings unterscheidet sich die Position, wo der Anhang angehängt wird. Beim Hinzufügen der Anhänge gelten folgende Regeln: </p>
1. Ein Anhang kann entweder **vor** oder **nach** dem Hauptdokument angehängt werden.
2. Die **Positionsnr.**, kurz für Positionsnummer bestimmt über die Reihenfolge, wie die Dokumente angehängt werden.
3. Jeder Anhang lässt sich separat **drehen** um 90° Grad, 180° Grad oder 270° Grad.
4. Ein Anhang lässt sich nicht mehrfach innerhalb einer Anhangskonfiguration hinzufügen.

Beim Hinzufügen eines Anhangs wählen Sie z.B. **vor dem Hautpdokument anhängen**. Jetzt klicken Sie in das Feld ***Name*** neben der Positionsnr. 1. Es erscheinen rechts in dem Feld 3 Punkte ("**...**"). Beim Klick auf diese öffnet sich ein neues Fenster.

|![](images/apps/pdf_SaaS/attachments_in_window_DEU.png)|
|-|

Dieses zeigt die bereits hinterlegten Anhänge. Sie können nun aus diesen auswählen oder auch einen neuen Anhang hinterlegen um diesen anschließend hinzu zu fügen. Wenn Sie einen neuen Anhang hinterlegen wollen, klicken Sie auf **+Neu** und laden die entsprechende Datei hoch.
Der hochgeladene Anhang erscheint dann ebenfalls in der Auflistung. 

Selektieren Sie einen Anhang und fügen Sie diesen zu Ihrer Anhangskonfiguration hinzu, indem Sie dies mit **OK** bestätigen.

Hier haben wir beispielhaft einmal die folgenden Anhänge hinzugefügt, wie Sie der Abbildung entnehmen können:

|![](images/apps/pdf_SaaS/configuration_example_DEU.png)|
|-|

Im Folgenden gehen wir kurz darauf ein, wie Sie einen bereits hinzugefügten Anhang wieder entfernen können, bzw. wie Sie die Reihenfolge der Anhänge verändern.

##### Entfernen eines Anhangs
Im **Vor dem Hauptdokument anhängen** haben wir auf der ersten Positionsnr. den Anhang mit dem Code **Anhang** hinterlegt. Um diesen zu entfernen, klicken Sie auf das Feld zwischen der Positionsnr. 1 und Anhang, wie mit dem roten Rechteck markiert. Über die 3 Punkte können Sie ***Zeile löschen*** auswählen und Ihren Anhang entfernen.

##### Verändern der Position eines Anhangs
Im **Nach dem Hauptdokument anhängen** haben wir auf der ersten Positionsnr. den Anhang mit dem Code AGB hinterlegt und auf der zweiten Positionsnr. den Anhang mit dem Code Haftungsausschluss. Die Position dieser beiden möchten wir miteinander tauschen. Da Sie Anhänge nur eine Ebene nach oben verschieben können, müssen Sie Haftungsauschluss auswählen und anschließend den Button **nach oben** klicken. Wiederholen Sie dies entsprechend der Anzahl Position, die dieser nach oben verschoben werden soll.

{{< notice info "Hinweis" >}}
 _Um einen Anhang mehrere Positionen nach oben zu verschieben, müssen Sie nach jeder Positionsverschiebung nach oben, den Anhang **erneut** auswählen._
{{< /notice >}}
</p>

##### Drehen eines Anhangs
Für jeden Anhang können Sie eine Drehung definieren. Hierfür können Sie zwischen 3 verschiedenen Drehungen wählen: 90° Grad, 180° Grad und 270° Grad. Klicken Sie dafür auf **Keine** für den entsprechenden Anhang bei Drehung und wählen Sie die gewünschte Drehung aus. Nun wird Ihr Anhang in der von Ihnen eingestellten Drehung an das Haupdokument angehängt.

