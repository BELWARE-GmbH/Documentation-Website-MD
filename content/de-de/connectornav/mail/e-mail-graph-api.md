---
title: "E-Mail‑Versand via Microsoft Graph API"
date: 2025-11-07T10:00:00+01:00
draft: false
collapsible: false
weight: 5
lang: "de-de"
---

# E-Mail‑Versand über den Connector NAV/BC via Microsoft Graph API

Kurzbeschreibung
Diese Anleitung erklärt kompakt und strukturiert, wie Sie den E‑Mail‑Versand in Business Central (Connector NAV/BC) über die Microsoft Graph API einrichten.

---

### Voraussetzungen
- Zugriff auf den Entra‑/Azure‑AD‑Mandanten mit Rechten, Apps zu registrieren und Admin‑Zustimmungen zu erteilen.
- Business Central mit installiertem Connector NAV/BC.

---

### 1. Entra‑/Azure‑AD App erstellen

1. Portal: Entra ID (Azure Portal) → App‑Registrierungen → Neue Registrierung.
2. Merken/Notieren:
   - Anwendungs‑(Client‑)ID
   - Verzeichnis‑(Tenant‑)ID
3. Zertifikate & Geheimnisse: Neues Client‑Secret erstellen und Wert sicher aufbewahren.
4. API‑Berechtigungen:
   - Mail.Send (Application) — zwingend erforderlich
5. Redirect/Weiterleitungs‑URI: beliebige URI (für Connector nicht relevant)

Hinweis: Client‑Secrets sind sensibel und dürfen nicht unverschlüsselt gespeichert werden.

![](/images/connectornav/mail/E-Mail_Graph_API_Einrichtung.png)<center>E‑Mail Graph API Einrichtung</center>

### 2. Admin‑Zustimmung (Freigabe)
- In Business Central: Menü Connector NAV/BC → Einrichtung → Unterseite "E‑Mail Graph API Einrichtung".
- Tragen Sie Client‑ID, Tenant‑ID, Secret (und ggf. Redirect URI) ein.
- Aktion: "Adminzustimmung erteilen" → Browser öffnet sich.
- Administrator meldet sich am Microsoft‑Konto an und bestätigt die Freigabe.

Wichtig: Erst nach erfolgreicher Admin‑Zustimmung weiter zur Aktivierung.

### 3. Einrichtung der E‑Mail‑Sender
- Menü Connector NAV/BC → Seite "E‑Mail Sender".

![](/images/connectornav/mail/E-Mail_Sender.png)<center>E‑Mail Sender</center>

- Hinterlegen Sie alle Absender‑E‑Mailadressen, über die versendet werden soll.
  - Feld "Kennwort": für Graph API nicht benötigt → leer lassen.
  - Für freigegebene Postfächer: Haken "Freigegebenes Postfach" setzen.
- Prüfen: In der Benutzer‑Einrichtung muss das Feld "E‑Mail" gefüllt sein (Berechtigungsprüfung).

![](/images/connectornav/mail/BearbeitenBenutzerEinrichtung_GraphAPI.png)<center>Benutzer‑Einrichtung: Bearbeiten</center>

### 4. Versand aktivieren
- Nach Abschluss der App‑Registrierung, Admin‑Zustimmung und Sender‑Konfiguration:
  - Connector NAV/BC → Einrichtung → Unterseite "E‑Mail Graph API Einrichtung"
  - Haken bei "Einrichtung aktiv" setzen → Versand über Graph API ist aktiv.

### Fehlerbehebung (kurz)
- 401 / Berechtigungsfehler: Fehlt Mail.Send (Application) oder wurde keine Admin‑Zustimmung erteilt?
- Admin‑Zustimmung schlägt fehl: Pop‑ups erlauben, anderen Browser oder Admin‑Konto verwenden.
- Secret abgelaufen: Neues Secret erstellen und in BC aktualisieren.

---

### Sicherheits‑Hinweise
- Secrets nur geschäftssicher speichern (Key Vault o.Ä.).
- Zugriffsrechte auf App‑Registrierung auf notwendige Admins beschränken.
