---
title: "New and planned"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: true
weight: 1
---

### New and planned

#### Version 2.23.0.0 - 18.11.2025
**New Features:**

**Event Parameter Fix for Sales Credit Memos**
- Fixed incorrect parameter passing in the OnAfterGetLineGeneralInfo event for sales credit memos
- The SalesCrMemoLineID parameter is now correctly passed

#### Version 2.22.0.0 - 14.11.2025
**New Features:**

**ZUGFeRD PDF Support**
- Full integration of ZUGFeRD functionality for creating PDF/A-3B compliant documents
- Automatic embedding of XRechnung XML data in PDF attachments according to ZUGFeRD standard
- Support for CII syntax (Cross Industry Invoice) in PDF generation
- Configurable PDF/A-3B conformance levels for different use cases
- Enables hybrid presentation of invoices (human-readable PDF + machine-readable XML)

#### Version 2.21.0.0 - 21.10.2025
**New Features:**

**Enhanced Allowance Charge Handling**
- Migration of allowance charge processing from Microsoft standard to XRechnung-specific implementation
- Extended field support for complex discount and surcharge scenarios
- Improved accuracy in calculation of allowance charges at line and document level
- Optimized performance when processing large volumes of allowance charges
- Better compatibility with XRechnung validation rules

**New Events for Extended Customization Options**
- `OnAfterSetLinePriceAllowanceChargeInfo`: Adjustment of price allowance charges at line level
- `OnAfterSetLineAllowanceChargeInfo`: Modification of allowance charges for individual sales lines
- `OnAfterSetAllowanceChargeInfo`: Processing of allowance charges at document level
- `OnAfterGetCrMemoBillingReferenceInfo`: Credit memo-specific invoice reference handling
- `OnBeforeGetTotals`: Event before total amount calculation with skip functionality
- `OnAfterGetLineItemInfoWithBuyersItemIdentificationID`: Extended item information with buyer item ID
- `OnAfterGetAccountingSupplierPartyLegalEntityBISWithLegalForm`: Supplier legal entity with legal form
- `OnAfterGetDeliveryAddressWithDeliveryPartyName`: Extended delivery address with party name
- `OnAfterGetPaymentMeansPayeeFinancialAccBISWithPayeeFinancialAccountName`: Extended payment means info with account name

#### Version 2.20.0.1 - 13.10.2025
Corrections:
- Skip XML node PartyTaxScheme when TaxSchemeId is empty.

#### Version 2.20.0.0 - 29.08.2025
**New Features:**

**New Events**
UBL:
- `OnAfterGetSupplierPartyIdentificationID`: Allow setting of SupplierPartyIdentificationID and SupplierPartyIdentificationIDSchemeID

CII:
- `OnAfterGetSellerTradePartyID`: Allow setting of SellerID

#### Version 2.19.0.1 - 17.07.2025
Corrections:
- A validation error when the shipment date was not filled has been fixed.

#### Version 2.19.0.0 - 07.07.2025
**New Features:**

**Connector 365 XRechnung Tab in Sales Documents**
- Integration of a new "Connector 365 XRechnung" tab in sales documents
- Direct documentation and editing of various Business Terms (BT fields)
- Support for the following BT fields:
  - BT-11: Project reference
  - BT-12: Contract reference
  - BT-73: Invoicing period start date
  - BT-74: Invoicing period end date
- Improved user-friendliness through central entry of XRechnung-specific information
- Automatic validation of entered BT values

*Benefits:*
- Reduced error susceptibility through central data entry
- Better overview of XRechnung-relevant fields
- Simplified compliance with XRechnung requirements
- Preparation for future BT field extensions

#### Version 2.18.0.1 - 15.05.2025
Corrections:
- The XRechnung syntax is now only displayed in XRechnung-related processes.

#### Version 2.18.0.0 - 30.04.2025
New features:
- Compatibility with BC-Versions prior to BC25 guaranteed.

#### Version 2.17.0.0 - 24.04.2025
Updates:
- Compatibility with BC versions prior to BC22 is ensured.

#### Version 2.16.0.0 - 16.04.2025
**New Features:**

**CII Syntax Support for XRechnung**
- Full implementation of CII syntax (Cross Industry Invoice) as an alternative to UBL syntax
- Enables creation of XRechnungen in standardized CII format
- Compatibility with various European e-invoicing systems that prefer CII
- Automatic syntax recognition and conversion based on configuration
- Support for both syntax formats (UBL and CII) in a unified solution

*Technical Details:*
- Extended XML generation for CII-compliant outputs
- Optimized validation for both syntax formats
- Improved interoperability with various e-invoicing platforms
- Preparation for future ZUGFeRD integration

#### Version 2.15.0.0 - 18.03.2025
New features:
- Enables zero amount lines to be taken into account when generating an XRechnung

#### Version 2.14.0.0 - 18.03.2025
Corrections:
- Information for BT-44 (buyer name) is now determined by default from the document, no longer from the customer

#### Version 2.13.0.0 - 20.02.2025
**New Features:**

**Decoupled XRechnung Generation with Validation Report**
- Implementation of a standalone function for XRechnung creation independent of the sending process
- Automatic generation of validation reports for quality assurance
- Ability to pre-validate XRechnungen before sending
- Improved error diagnosis through detailed validation reports

**Support for Unposted Documents**
- Technical extension for processing Sales Header records (unposted invoices and credit memos)
- Enables XRechnung creation even before posting
- Improved flexibility in workflow for XRechnung processes
- Preparation for extended draft and approval scenarios

**Enhanced Event Integration**
- Integration of additional events for extended customization options
- Improved hooks for user-defined logic
- Increased flexibility when integrating into existing business processes

*Technical Improvements:*
- Optimized performance in document processing
- Extended error handling and logging
- Improved compatibility with various Business Central versions

#### Version 2.12.0.0 - 31.01.2025
New functions:
- Enables the mail address to be taken from the customer if no mail address has been set up in the document layout.

#### Version 2.11.0.4 - 31.12.2024
Corrections:
- Fixes the problem of empty test reports when downloading and opening from the feedback entries

#### Version 2.11.0.2 - 27.12.2024
Corrections:
- Fixed problem when scrolling through validation reports in various browsers, including Microsoft Edge

#### Version 2.11.0.1 - 21.11.2024
Corrections:
- Fixing of accidentally merged syntax errors

#### Version 2.10.0.0 - 11.10.2024
New features:
- Improved feedback for sending XRechnung to write email error into feedback table.

#### Version 2.9.0.14 - 07.10.2024
Corrections:
- Use of the standard function GetTaxExemptionReason within the PEPPOL Management codeunit instead of a separate implementation.

#### Version 2.9.0.13 - 22.07.2024
Corrections:
- The record ID will now be written to the activity entry table, to allow viewing XRechnungen from the document page.

#### Version 2.9.0.12 - 29.05.2024
Corrections:
- The use of report layouts in combination with Connector 365 Easy Batch has been standardized.

#### Version 2.9.0.11 - 13.05.2024
Corrections:
- New logic for pulling the report layout implemented.

#### Version 2.9.0.10 - 11.04.2024
Corrections:
- Fixed sending without email text.

#### Version 2.9.0.9 - 02.04.2024
Corrections:
- Tenant media permissions added

#### Version 2.9.0.8 - 28.03.2024
Corrections:
- Passing the correct variable for calculating the legal monetary info.

#### Version 2.9.0.7 - 28.03.2024
Corrections:
- Corrected calculation of legal monetary info.

#### Version 2.9.0.6 - 27.03.2024
Corrections:
- The report layout is now also reset in versions < BC21.

#### Version 2.9.0.5 - 26.03.2024
Corrections:
- Correction of the cardinalities of the address addresses.

#### Version 2.9.0.4 - 26.03.2024
Corrections:
- The e-mail text is now created correctly again.

#### Version 2.9.0.3 - 26.03.2024
Corrections:
- The filter for report execution is now set correctly again.

#### Version 2.9.0.2 - 20.03.2024
Corrections:
- dei electronic address of the buyer is now automatically filled with the e_mail address.

#### Version 2.9.0.1 - 15.03.2024
Corrections:
- Error when writing the activity entry if the validation of the XRechnung is deactivated.

#### Version 2.9.0.0 - 01.03.2024
- Establish compatibility with the new Easy Batch version

#### Version 2.8.0.6 - 02.02.2024
New features:
 - Load XRechnung version 3.0 as default value

#### Version 2.8.0.3 - 11.12.2023
Corrections:
 - The definded email subject from Mail Subject Plus will now set for XRechnung as well.

#### Version 2.8.0.2 - 06.11.2023
Corrections:
 - Correction of the display of XRechnung status in role center:
   -> Sent XRechnung in the last 30 days
   -> Draft XRechnung in outbox

#### Version 2.8.0.0 - 31.08.2023

New features:
- Extension of [document sending profiles](en-us/apps/xrechnung/first-steps/setup/doc-sending-profile) with the possibility of XRechnung processing

#### Version 2.7.0.0 - 25.08.2023
New features:
 - Extension of [Communication matrix](/en-us/apps/base/first-steps/setup/communication-matrix/) by fields:
    * Buyer Reference
    * Add Document as Attachment

#### Version 2.5.0.3 - 31.07.2023
New features:
 - Compatibility with XRechnung 2.3
 - Ident-Id (Leitweg-Id) check only optional - no longer leading to error
 - Possibility to set XRechnung version and identifier in setup

Correction:
 - Fixes permission issues when using XRechnung using supplied permission sets.

#### Version 2.4.0.1 - 31.05.2023
Correction:
- Fixes insufficient permissions at XRechnung creation and sending

#### Version 2.4.0.0 - 22.05.2023
New features:
* Integration of **Connector 365 Mail Attachments Plus**
* Possibility to flexibly set in the dialog which attachments are embedded in the XRechnung XML file and which are considered as additional attachments via mail

#### Version 2.3.0.1 - 26.04.2023
Correction:
- Writing a negative validation report when sending via Easy Batch no longer results in an error.
#### Version 2.3.0.0 - 14.04.2023
- Implementation of additional table for saving additional files for each process.
#### Version 2.2.0.0 - 06.01.2023
- Implementation of new license check.

#### Version 2.1.0.2 from 17.11.2022
- Error Correction: Using the app together with other COnnector 365 Apps Easy Batch and Addressee Control no longer results in an error. 

#### Version 2.1.0.0 from 04.11.2022
- Compatibility with **Connector 365 Addressee Control** App
- Improved form for license orders

#### Version 2.0.0.0 from 21.10.2022
##### Correction
- The usage combined with apps Mail Subject Plus and Easy Batch no longer results in an error during the send process.
- Changes within the Email dialog no longer result in an error.

#### Version 2.0.0.0 from 23.09.2022
- Dependency from the new version of app Connector 365 Base (2.0.0.0)
- Transfering table "Joblist Entry" to "Activity Entry"

#### Version 1.0.1.23
- Compatibility with XRechnung 2.2

#### Version 1.0.1.22
- Improvements in the integration of ***Connector 365 Easy Batch*** app

#### Version 1.0.1.18
- Possibility to control and overwrite XML fields by event.

#### Version 1.0.1.11
- Document layout now overrides report selection per usage. 
- Error correction dialog: Subpage "Attachments" was displayed twice. 
- The correct e-mail layout is now always used.
- Service area is now available for XRechnung.

#### Version 1.0.1.5
- Bug fixes
- Support for service invoices and service credit notes

#### Version 1.0.1.3
- Bug fixes
- Integration to Easy Batch

#### Version 1.0.1.1
- The Connector 365 XRechnung app now relies on our base app
- Adding events to control the XRechnung
- Bug fixes

#### Version 1.0.1.0
- Status tracking in Role center
- Invoice accompanying attachments
- Revised XRechnung dialog
- Syntax check of Ident ID
- Extension of input for Ident IDs
- XRechnung version adapted

#### Version 1.0.0.1
- Creating an XRechnung XML file
- Sending the XRechnung by mail using the standard BC Mail dialog.
- Sending of a validation report, which confirms the conformity of the invoice to the recipient.
- Displaying the validation report for the user in case of "non-conformity"
- Aborting the sending in case of "non-conformity"
- Improvement of the WebService query / DLL for the check report