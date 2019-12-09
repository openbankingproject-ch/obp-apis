# DRAFT - All identification within the flows

# Important technichal identifications

|      HEADER      |          JSON          |              Description              |
| ---------------- | ---------------------- | ------------------------------------- |
| -                | authorisationId        | -                                     |
| -                | authenticationMethodId | -                                     |
| Consent-ID       | -                      | -                                     |
| -                | paymentId              | -                                     |
| PSU-ID           | -                      | -                                     |
| PSU-Corporate-ID | -                      | -                                     |
| PSU-Device-ID    | -                      | -                                     |
| -                | resourceId             | Anonymous alias to the account number |
| X-Request-ID     | -                      | -                                     |


# Important business identifications
|  HEADER   | JSON |     Description     |           Example           |
| --------- | ---- | ------------------- | --------------------------- |
| iban      | -    |                     | FR7612345987650123456789014 |
| bban      | -    |                     | BARC12345612345678          |
| pan       | -    | Payment Card Number | 5409050000000000            |
| maskedPan | -    |                     | 123456xxxxxx1234            |
| msisdn    | -    | Mobile Phone Number | +41 79 123 45 67            |

# Important types

| HEADER |       JSON        | Description |
| ------ | ----------------- | ----------- |
| -                     | authenticationType |   |
| PSU-ID-Type           | -                  | - |
| PSU-Corporate-ID-Type | -                  | - |
| referenceType         | -                  | - |
| -         | balanceType | - |


# Important status

| HEADER |       JSON        | Description |
| ------ | ----------------- | ----------- |
|        | transactionStatus |             |
