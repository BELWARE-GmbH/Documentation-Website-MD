---
title: "Adressdaten übersteuern"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### Adressdaten übersteuern

Wenn Sie die standardmäßig übegebenen Addressdaten durch eigene übersteuern möchten, können Sie dies über einen Event Subscriber implementieren. 

```AL
codeunit 50200 EPostApiExt
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"BEL365 E-POST Api", 'OnBeforeWriteJSONContent', '', false, false)]

    local procedure OnBeforeWriteJSONContent(var addressLine1: Text; var addressLine2: Text; var addressLine3: Text; RecRef: RecordRef)
    var
        Contact: Record Contact;
        ContactFieldRef: FieldRef;
        DataTypeMgmt: Codeunit "Data Type Management";
    begin
    // Get document related contact data
        DataTypeMgmt.FindFieldByName(RecRef, ContactFieldRef, 'Bill-to Contact No.');
        if Contact.Get(ContactFieldRef.Value) then begin
    // Override address data with different field from contact
            addressLine3 := Contact."Address 2";
        end;
    end;
}
```