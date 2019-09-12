# Vergaben für Identifikationen in der Schweiz

## Abgrenzung

Die Schweiz folgt der Gesetzgebung zu PSD2 nicht. Die folgenden Vergaben sind nur Empfehlungen.

## Vergaben für Identifikationen in der Schweiz



# Anhänge - Quelle der Bundesdruckerei

Bei der Bundesdruckerei Deutschland steht dazu in der Anleitung: http://www.d-trust.net/internet/files/ausfuellhinweise_psd2.pdf.

National Competent Authority (NCA): The IDs are defined by ETSI.
PSP Identifier: please enter the exact ID as given to you by your NCA (as an ASPSP or TPP), typically 4-9 digits.
The organization identifier which will show up in the certificate is then composed of “PSD”+<NCA ID>+<PSP ID>.
Die pro Land spezifische ID ist also nur eine Zahl. Für die komplette ID im Zertifikat ist das dann:
    PSD<Authority-ID><Zahl>
In dem Testzertifikat das wir haben lautet die ID allerdings: “PSDDE-BAFIN-CC1111”
Das Format ist ein ETSI Standard (ETSI TS 119 495 V1.1.2 (2018-07) (https://www.etsi.org/deliver/etsi_ts/119400_119499/119495/01.02.01_60/ts_119495v010201p.pdf Kapitel 5.2.1):
GEN-5.2.1-3: The organizationIdentifier attribute shall contain information using the following structure in the presented order: 

| Beschreibung | Ausprägung OBP.ch |
|---|---|
|	“PSD" as 3 character legal person identity type reference | **PSD**
|	2 character ISO 3166 [7] country code representing the NCA country | **CH**
|	hyphen-minus "-" (0x2D (ASCII), U+002D (UTF-8)) | **-**
|	2-8 character NCA identifier (A-Z uppercase only, no separator) | **OBP**
|	hyphen-minus "-" (0x2D (ASCII), U+002D (UTF-8)) | **-**
|	PSP identifier (authorization number as specified by the NCA) | **1xxxxxxxx**

EXAMPLE: The organizationIdentifier "PSDES-BDE-3DFD21" means a certificate issued to a PSP where the authorization number is 3DFD21, authorization was granted by the Spanish NCA Banco de España (identifier after second hyphen-minus is decided by Spanish numbering system). Any separator in NCA identifier shall be removed.
