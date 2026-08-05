---
topic: Patient
---

# Retrieve MedMij Core - Patient (zib2020/R4)

## Overview
| | |
| --- | --- |
| **Id** | 900000101 |
| **Data service name without version (English)** | Retrieve MedMij Core - Patient (zib2020/R4) |
| **Data service name without version (Dutch)** | Verzamelen MedMij Core - Patient (zib2020/R4) |
| **Data service version** | 1.0.0-rc.1 |
| **System role(s)** | MMC-PTR-zib2020/R4-rc.1 (PHR) <br/> MMC-PTB-zib2020/R4-rc.1 (XIS) |
| **Used in Implementation Guide(s)** | [Dental Care](https://simplifier.net/medmij-r4-dental-care/) |

## Functional model
| | |
| --- | --- |
| **CIM** | [zib Patient](https://zibs.nl/wiki/Patient-v3.2(2020EN)) |
| **Functional version** | 3.2(2020) |

The functional model can be found on [ART-DECOR](https://decor.nictiz.nl/ad/#/zib2020bbr-/datasets/dataset/2.16.840.1.113883.2.4.3.11.60.40.3.0.1/2020-09-01T00:00:00).

## Technical specification
| | |
| --- | --- |
| **FHIR profile(s)** | [http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient](https://simplifier.net/resolve?canonical=http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient&scope=nictiz.fhir.nl.r4.nl-core@0.12.0-beta.4) |
| **FHIR package** | [nictiz.fhir.nl.r4.nl-core](https://simplifier.net/packages/nictiz.fhir.nl.r4.nl-core/0.12.0-beta.4) version 0.12.0-beta.4 or compatible |
| **FHIR version** | R4 |
| **Search request** | `GET [base]/Patient` |
| **Must Support** | <ul> <li> `.identifier` <li> `.name` <li> `.birthDate` <li> `.contact` <li> `.meta.tag` (only the {{pagelink: GranularExchange, text: care type, anchor: CareType}}) |
| **CapabilityStatement(s)** | {{pagelink: CapabilityStatementsIndex, text: Patient (Retrieve), anchor: PatientRetrieve}} <br/> {{pagelink: CapabilityStatementsIndex, text: Patient (Serve), anchor: PatientServe}} |

The FHIR profile is included below.

{{page:resource-view-tree-zib-no-examples, canonical:http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient}}