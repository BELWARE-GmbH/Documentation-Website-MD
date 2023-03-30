---
title: "Senden externer Dokumente"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: true
weight: 1
---
### Senden externer Dokumente

Möchten Sie die App zum Senden externer Belege über Business Central nutzen, da Sie bspw. auf die Kontaktdaten aus Business Central zugreifen möchten. Können Sie dies mit einem einfachen Funktionsaufruf selbst implementieren. 

```AL
codeunit 50200 EPostApiExt
{
    trigger OnRun()
    var
        Contact: Record Contact;
        DocumentAttachment: Record "Document Attachment";
        EPostAPI: Codeunit "BEL365 E-POST Api";
        LetterFileTempBlob: Codeunit "Temp Blob";
        ContactDataJson: JsonObject;
        DocNo: Code[20];
        DocumentTypes: Enum "BEL365 Document Types";
        OStream: OutStream;
    begin
        // Fill document no and document type if letter document is linked to an existing document within Business Central, otherwise leave this empty
        DocNo := '10000';
        DocumentTypes := DocumentTypes::"Posted Sales Invoice";

        // Fill TempBlob Codeunit with a document that was previsouly imported to Business Central
        DocumentAttachment.SetRange("Table ID", Database::"Sales Invoice Header");
        DocumentAttachment.SetRange("No.", DocNo);
        if DocumentAttachment.FindFirst() then begin
            LetterFileTempBlob.CreateOutStream(OStream);
            DocumentAttachment."Document Reference ID".ExportStream(OStream);
        end;

        // If no contact exists in Business Central fill json object with contact data, otherwise leave this empty
        ContactDataJson.Add('CompanyName', 'Testfirma');
        ContactDataJson.Add('ContactName', 'Testperson');
        ContactDataJson.Add('Address', 'Teststraße');
        ContactDataJson.Add('PostCode', '12345');
        ContactDataJson.Add('City', 'Teststadt');
        ContactDataJson.Add('Country', 'ÖSTERREICH'); // Not neccessary if recipient residents within Germany

        // Call the function to start the sending process of the document with previously filled parameters
        EPostAPI.SendLetter(Contact, '10000', Enum::"BEL365 Document Types"::"Posted Purchase Invoice", LetterFileTempBlob, ContactDataJson);
    end;
}
```