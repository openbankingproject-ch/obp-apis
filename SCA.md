# Technical security matrix
Elementare übersicht zu den drei Ansätzen:
- https://blog.entiros.se/en/blog-media/strong-customer-authentication-sca-for-psd2-apis


## Elemente in der Antwort der "Payment Initiation"

|              Element                      | Ort der Daten          |   Relevante Inhalte  |
| ----------------------------------------- | --------------------- | ----------------------- |
| Header | ASPSP-SCA-Approach               | "EMBEDDED", "DECOUPLED", "REDIRECT" |
| Body	| $..scaMethods[]                   | Liste möglicher Methoden (siehe unten) |
| Body	| $..chosenScaMethod                | "SMS_OTP", "CHIP_OTP", "PHOTO_OTP", "PUSH_OTP" |
| Body	| $..challengeData                  | Text, Bild, etc. |
| Body	| $.._links.sca*                    | URLs für nächste Schritt in Abhängigkeit bei Redirect/OAuth |
| Body	| $.._links.startAuthorisation*     | URLs für nächste Schritt in Abhängigkeit des Status |
