---
topic: ASAScore
---

# Retrieve MedMij Core - ASA score

## Overview
| | |
| --- | --- |
| **Id** | 900000107 |
| **Data service name without version (English)** | Retrieve MedMij Core - ASA score |
| **Data service name without version (Dutch)** | Verzamelen MedMij Core - ASA-score |
| **Data service version** | 1.0.0-rc.2 |
| **System role(s)** | MMC-ASR-rc.2 (PHR) <br/> MMC-ASB-rc.2 (XIS) |
| **Used in Implementation Guide(s)** | [Dental Care](https://simplifier.net/medmij-r4-dental-care/) |

## Functional model
| | |
| --- | --- |
| **CIM** | ASAScore (based on [this publication](https://www.asahq.org/standards-and-practice-parameters/statement-on-asa-physical-status-classification-system) by the American Society of Anaesthesiologists (ASA)) |
| **Functional version** | 1.2.0 |

The Logical Model is included below.

{{page:resource-lm-view-tree, canonical:http://medmij.nl/fhir/StructureDefinition/medmij-core-lm-ASAScore}}

## Technical specification
| | |
| --- | --- |
| **FHIR profile(s)** | {{pagelink: FHIRProfilesIndex, text: <text>http://medmij.nl/fhir/StructureDefinition/medmij-core-ASAScore</text>, anchor: MedMijCoreASAScore}} |
| **FHIR package** | [medmij.fhir.nl.r4.core](https://simplifier.net/packages/medmij.fhir.nl.r4.core) version 1.2.0 or compatible |
| **FHIR version** | R4 |
| **Search request** | `GET [base]/Observation?code=http://snomed.info/sct|413347006` |
| **Must Support** | <ul> <li> `.identifier` <li> `.subject` <li> `.effectiveDateTime` <li> `.performer` <li> `.valueCodeableConcept` <li> `.meta.tag` (only the {{pagelink: GranularExchange, text: care type, anchor: CareType}}) |
| **CapabilityStatement(s)** | {{pagelink: CapabilityStatementsIndex, text: ASA Score (Retrieve), anchor: ASAScoreRetrieve}} <br/> {{pagelink: CapabilityStatementsIndex, text: ASA Score (Serve), anchor: ASAScoreServe}} |

The FHIR profile is included below.

{{page:resource-view-tree-no-examples, canonical:http://medmij.nl/fhir/StructureDefinition/medmij-core-ASAScore}}