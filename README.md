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

| CH Domestic Data Element | CH Domestic Type | domestic-swiss-credit-transfers-ISR | domestic-swiss-credit-transfers | domestic-swiss-foreign-credit-transfers | sepa-credit-transfers | cross-border-credit-transfers |  |  | Payment Type 1: ISR | Payment Type 2: IBAN/postal account and IID/BIC | Payment Type 4: Foreign currency | Payment Type 5: Foreign SEPA | Payment Type 6: Foreign | endToEndIdentification | Max35Text-Swift | mandatory | mandatory | mandatory | mandatory | mandatory | debtorAccount (incl. type) | accountReference16-CH (adpated from CashAccount16-CH_IdTpCcy) | mandatory | mandatory | mandatory | mandatory | mandatory | debtorAgent | deptorAgent7-CH (adapted from FinancialInstitutionIdentification7-CH_BicOrClrId) | mandatory | mandatory | mandatory | mandatory | optional | debtorName | Max70Text | mandatory | mandatory | mandatory | mandatory | mandatory | debtorId | Max35Text | optional 3) | optional 3) | optional 3) | optional 3) | optional 3) | ultimateDebtor | Max70Text | optional | optional | optional | optional | optional | instructedAmount (inc. currency) | amount | mandatory | dependent 1) | dependent 1) | dependent 1) | dependent 1) | equivalentAmount | amount | n.a. | dependent 1) | dependent 1) | dependent 1) | dependent 1) | currencyOfTransfer | currencyCode | n.a. | dependent 1) | dependent 1) | dependent 1) | dependent 1) | exchangeRateInformation | exchangeRateInformation1 (adpated from ExchangeRateInformation1) | n.a. | optional 2) | optional 2) | optional 2) | optional 2) | creditorAccount | accountReference16-CH (adpated from CashAccount16-CH_IdTpCcy) | mandatory | mandatory | mandatory | mandatory | mandatory | creditorAgent | creditorAgent7-CH (adapted from FinancialInstitutionIdentification7-CH) | n.a. | dependent 4) | mandatory | dependent 4) | dependent 4) | creditorAgentName | Max70Text | n.a. | n.a. | dependent 5) | n.a. | dependent 5) | creditorName | Max70Text | mandatory | mandatory | mandatory | mandatory | mandatory | creditorId | Max35Text | n.a. | optional | optional | optional | optional | creditorAddress | postalAddress6-CH (adapted from PostalAddress6-CH) | optional | optional | optional | optional | optional | creditorNameAndAddress | Max140Text | n.a. | dependent | dependent | dependent | dependent | ultimateCreditor | Max70Text | n.a. | optional | optional | optional | optional | chargeBearer | chargeBearer | n.a. | optional | optional | mandatory | optional | purposeCode | purposeCode | optional | optional | optional | optional | optional | remittanceInformationUnstructuredArray | Max140Text | n.a. | n.a. | n.a. | n.a. | n.a. | serviceLevel | externalServiceLevel1Code | n.a. | optional | optional | mandatory | optional | remittanceInformationUnstructured | Max140Text | n.a. | optional | optional | optional | optional | remittanceInformationStructured | remittanceInformationStructured7 (adapted from remittanceInformationStructured7) | mandatory | optional | optional | optional | optional | requestedExecutionDate | ISODate | mandatory | mandatory | mandatory | mandatory | mandatory | requestedExecutionTime | ISODateTime | n.a. | n.a. | n.a. | n.a. | n.a. | intermediaryAgent | bicfi | n.a. | n.a. | optional 2) | n.a. | optional 2) | 

1) currencyOfTransfer is a subfield of equivalentAmount and may only be used if equivalentAmount is used instead of instructedAmount.
2) The element may only be used in consultation with the financial institution commissioned.
3) The element is currently ignored by financial institutions.
4) Dependence on creditorAccount, see SIX Swiss Payments Standards implementation guidelines.
5) Type 4(V3), 6(V2, V3): must be present. Type 4(V2): may be present. Other species: may not be present.
