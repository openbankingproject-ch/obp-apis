# OpenBankingProject.ch

Mehr zur OpenBankingProject.ch Initiative findet sich auf der [Homepage](https://www.openbankingproject.ch).

## Schweizer Ausgabe der Berlin Group NextGen API

Dieses Repository enthält eine helvetisierte Fassung der Banking API der
[Berlin Group](https://www.berlin-group.org/). Die API
liegt als [OpenAPI 3.0](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.2.md)
Spezifikation vor:

![Prüfungsstatus der Spezifikation](https://travis-ci.com/openbankingproject-ch/obp-apis.svg?branch=master "Prüfungsstatus der Spezifikation")

* Die API als HTML-Dokumenent: [/docs](https://openbankingproject-ch.github.io/obp-apis)
* Die API als YAML-Datei: [/swiss-ng-api.yaml](https://github.com/openbankingproject-ch/obp-apis/raw/master/swiss-ng-api.yaml)

## Anhang 1 - Swiss Domestic Definition

Die Schweiz spezifischen Definitionen umfassen die ESR-Zahlungen, sowie falls nötig weitere
Ergänzungen:

| Element Type                         | Type                | domestic-swiss-credit-transfers-ISR | domestic-swiss-credit-transfers                                                 | sepa-credit-transfers    | cross-border-credit-transfers       |
|--------------------------------------|---------------------|-------------------------------------|---------------------------------------------------------------------------------|--------------------------|-------------------------------------|
| endToEnd Identification              | Max35Text           | mandatory (not provided)            | mandatory (not provided)                                                        | mandatory (not provided) | optional                            |
| debtorAccount (incl. type)           | Account Reference   | mandatory                           | mandatory                                                                       | mandatory                | mandatory                           |
| debtorId                             | Max35Text           | optional                            | optional                                                                        | optional                 | optional                            |
| ultimateDebtor                       | Max70Text           | optional                            | optional                                                                        | optional                 | MT n.a. / MX optional               |
| instructedAmount (inc. Curr.)        | Amount              | mandatory                           | mandatory                                                                       | mandatory                | mandatory                           |
| currencyOfTransfer                   | Currency Code       | mandatory                           | mandatory                                                                       | mandatory                | mandatory                           |
| exchangeRateInformation              | Payment Ex. Rate    | n.a.                                | optional                                                                        | n.a.                     | optional                            |
| creditorAccount                      | Account Reference   | mandatory                           | mandatory                                                                       | mandatory                | optional (mandatory kunde an kunde) |
| creditorAgent                        | BICFI               | optional                            | optional (mit IBAN braucht es creditor Agent nicht)                             | optional                 | dependent                           |
| creditorAgentName                    | Max70Text           | n.a.                                | dependent (entweder creditorAgent oder creditorName, nicht beides gleichzeitig) | n.a.                     | dependent                           |
| creditorName                         | Max70Text           | mandatory (not provided)            | mandatory                                                                       | mandatory                | mandatory                           |
| creditorId                           | Max35Text           | optional                            | dependent                                                                       | optional                 | dependent                           |
| creditorAddress                      | Address             | mandatory                           | optional                                                                        | optional                 | optional                            |
| creditorNameAndAddress               | Max140Text          | n.a.                                | dependent                                                                       | dependent                | dependent                           |
| ultimateCreditor                     | Max70Text           | optional                            | optional                                                                        | optional                 | MT n.a. / MX optional               |
| purposeCode (SALA / PENS)            | Purpose Code        | optional (z.B. Salär)               | optional                                                                        | optional                 | optional                            |
| chargeBearer                         | Charge Bearer       | n.a.                                | optional                                                                        | mandatory SHA            | optional                            |
| serviceLevel                         | Service Level Code  | n.a.                                | optional                                                                        | optional                 | optional                            |
| remittanceInformation (Unstrd nur 1) | Max140Text          | n.a.                                | optional                                                                        | optional                 | optional                            |
| remittanceInformation (Unstrd 1..N)  | Array of Max140Text | n.a.                                | optional                                                                        | optional                 | optional                            |
| remittanceInformation (Structured)   | Remittance          | mandatory (ESR-Ref)                 | n.a.                                                                            | optional (SCOR)          | optional                            |
| requestedExecution Date              | ISODate             | mandatory                           | mandatory                                                                       | mandatory                | mandatory                           |
| requestedExecution Time              | ISODateTime         | n.a.                                | n.a.                                                                            | n.a.                     | n.a.                                |
| Intermediary Agent                   | Intermediary Agent  | n.a.                                | optional                                                                        | n.a.                     | optional                            |
