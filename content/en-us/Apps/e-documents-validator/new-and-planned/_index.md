---
title: "New and Planned"
date: 2024-04-03
description: 
draft: false
collapsible: true
weight: 1 
---
### New and planned

#### Version 1.5.0.0 - 13.11.2025
New features:
- **Automatic Creation of Date Transformation Rules on Install:** The app now automatically creates a transformation rule for date formatting during installation (Code: 'TTMMJJJJ_DATUM'), providing the 'yyyyMMdd' format for date processing in E-Documents.

#### Version 1.4.0.1 - 12.09.2025
New features:
- **Improved user interface:** Fixed Action Group assignment to prevent breaking changes

#### Version 1.4.0.0 - 11.09.2025
New features:
- **PDF attachment extraction:** Improved handling of PDF files, particularly ZUGFeRD files. Using the REST API, attachments can now be requested from a PDF, which are then considered as additional attachments within the incoming documents framework.
- **Automatic recognition of embedded e-invoices:** With appropriate setup, it's possible to recognize an embedded e-invoice (e.g: factur-x.xml) and automatically treat it as the main attachment.
- **Unified XML and PDF attachment extraction process:** Integration of extraction into a unified routine for better performance and maintainability.
- **Enhanced user interface:** New validation, visualization and extraction actions directly available in the Incoming Documents Card
- **Improved translations:** Updated language files for better user experience

#### Version 1.3.0.3 - 02.12.2024
New features:
- Extraction of PDF files

#### Version 1.2.0.0 - 11.11.2024
New features:
- Implementation of new license check
- Improved user interface for E-Document validation
- Extended configuration options for validation rules

#### Version 1.1.0.0 - 18.07.2024
new features:
- visualization, restructuring, automated processing