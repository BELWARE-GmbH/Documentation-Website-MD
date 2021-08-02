---
title: "The module DocImport"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 3
---

### The module DocImport

#### Using

With the DocImport module you can centrally manage external documents in Microsoft Dynamics NAV. You minimize your paperwork by storing important documents of any type in the job list. Not only will you find your documents faster, you'll also save time and reduce the likelihood of something getting lost.

#### Moving the documents

Navigate to the path you entered in the **Connector NAV Configuration and Setup** documentation under the **Connector NAV Setup, E-Mail tab** menu item in the **Document Inbox Directory** field. In the example, this is called com_docImport. You can store any documents in this folder

![](/images/connectornav/base/docimport_ordnerstruktur.png)<center>_folder structure com_docimport_</center>

#### The Connector NAV Incoming Documents 

![](/images/connectornav/base/docimport_eing_dok.png)<center>_Connector NAV incoming documents_</center>

The overview displays all job entries that either have not been assigned to a document or have not been manually set to "assigned". It is the central point for importing the documents. Afterwards, the entries can be assigned directly, or distributed to workgroups. After that the entry disappears in this overview. In the *Connector NAV Workgroup Documents* the list with all entries corresponding to the user's workgroup opens (see documentation Connector NAV Configuration and Setup).

####  The Connector NAV workgroup documents 

![](/images/connectornav/base/docimport_arbeitsgruppen.png)<center>_Connector NAV workgroup documents_</center>

The following actions can be performed in both overviews.

##### Actions

![](/images/connectornav/base/eing_dok_aktionen.png)<center>_Connector NAV incoming documents / workgroup documents, actions_</center>

|actions | |
|---|---|
| Show job file    | This action displays the document.                                         |
| import documents | With this action you import the documents from the folder to the job list. |

##### Assign documents

With this action the job entries can be assigned to a document. You can choose from the following categories.

![](/images/connectornav/base/dokumente_zuordnen.png)<center>_Connector NAV incoming documents, action assign documents_</center>

|The following documents are available: | |
|---|---|
| Sale       | - Sales quotation<br /> - Sales order<br /> - Blanket order<br /> - Sales bill<br /> - Sales delivery<br /> - Sales credit memo<br />.                          |
| Purchase   | - Purchase request<br /> - Purchase order<br /> - Blanket purchase order<br /> - Purchase invoice<br /> - Purchase delivery<br /> - Purchase credit note<br />. |
| Fibu       | - Reg. reminder<br /> - Reg. delivery reminder.                                                                                                                 |
| Other      | - Contact<br /> - Assignment.                                                                                                                                   |

##### Edit entry

This action can be used to add information to the job entries.

![](/images/connectornav/base/eintrag_bearbeiten.png)<center>_Connector NAV incoming documents, action edit entry_</center>