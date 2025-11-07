---
title: "Email sending via the Connector NAV/BC using Microsoft Graph API"
date: 2025-11-07T10:00:00+01:00
draft: false
collapsible: false
weight: 5
lang: "en-us"
---

# Email sending via the Connector NAV/BC using Microsoft Graph API

Short description
This guide explains, concisely and in a structured way, how to configure email sending in Business Central (Connector NAV/BC) using the Microsoft Graph API.

---

### Prerequisites
- Access to the Entra/Azure AD tenant with rights to register apps and grant admin consent.
- Business Central with the Connector NAV/BC installed.

---

### 1. Create an Entra/Azure AD app

1. Portal: Entra ID (Azure Portal) → App registrations → New registration.
2. Note down:
   - Application (client) ID
   - Directory (tenant) ID
3. Certificates & secrets: create a new client secret and store the value securely.
4. API permissions:
   - Mail.Send (Application) - required
5. Redirect/Reply URI: any URI can be entered (not technically relevant for the connector).

Note: Client secrets are sensitive and must not be stored unencrypted.

![](/images/connectornav/mail/E-Mail_Graph_API_Einrichtung.png)<center>E‑Mail Graph API setup</center>

### 2. Grant admin consent
- In Business Central: Connector NAV/BC → Setup → subpage "E‑Mail Graph API Setup".
- Enter the client ID, tenant ID, secret (and optionally the redirect URI).
- Action: "Grant admin consent" → a browser window opens.
- An administrator signs in with a Microsoft account and approves the consent.

Important: Do not activate the setup until admin consent has been successfully granted.

### 3. Configure the email senders
- Connector NAV/BC → page "E‑Mail Sender".

![](/images/connectornav/mail/E-Mail_Sender.png)<center>E‑Mail Sender page</center>

- Add all sender email addresses that should be used for sending.
  - Field "Password": not required for Graph API - leave empty.
  - For shared mailboxes: check "Shared mailbox".

-- Verify: in the user setup the "E‑Mail" field must be filled (used for permission checks).

![](/images/connectornav/mail/BearbeitenBenutzerEinrichtung_GraphAPI.png)<center>User setup: Edit</center>

### 4. Enable sending
- After app registration, admin consent and sender configuration are complete:
  - Connector NAV/BC → Setup → subpage "E‑Mail Graph API Setup"
  - Check "Setup active" to enable sending via Graph API.

---

### Troubleshooting (brief)
- 401 / permission error: Is Mail.Send (Application) missing or was admin consent not granted?
- Admin consent fails: allow browser pop‑ups, try another browser or admin account.
- Secret expired: create a new secret and update it in BC.

---

### Security notes
- Store client secrets securely (Key Vault or similar).
- Restrict access to app registration and secrets to authorized admins only.
