---
topic: ASAScore
logicalmodelcanonical: http://medmij.nl/fhir/StructureDefinition/medmij-core-lm-ASAScore
profilecanonical: http://medmij.nl/fhir/StructureDefinition/medmij-core-ASAScore
---

# Retrieve MedMij Core - ASA score

## Overview
| | |
| --- | --- |
| **Id** | 900000107 |
| **Data service name without version (English)** | Retrieve MedMij Core - ASA score |
| **Data service name without version (Dutch)** | Verzamelen MedMij Core - ASA-score |
| **Data service version** | 1.0.0-rc.1 |
| **System role(s)** | MMC-ASR-rc.1 (PHR) <br/> MMC-ASB-rc.1 (XIS) |
| **Used in Implementation Guide(s)** | [Dental Care](https://simplifier.net/medmij-r4-dental-care/) |

## Functional model
| | |
| --- | --- |
| **CIM** | ASAScore (based on [this publication](https://www.asahq.org/standards-and-practice-parameters/statement-on-asa-physical-status-classification-system) by the American Society of Anaesthesiologists (ASA)) |
| **Functional version** | 1.1.0 |

The Logical Model is included below.

{{page:lm-view-tree-granular}}

## Technical specification
| | |
| --- | --- |
| **FHIR profile(s)** | [http://medmij.nl/fhir/StructureDefinition/medmij-core-ASAScore](https://simplifier.net/resolve?canonical=http://medmij.nl/fhir/StructureDefinition/medmij-core-ASAScore&scope=medmij.fhir.nl.r4.core@1.1.0) |
| **FHIR package** | [medmij.fhir.nl.r4.core](https://simplifier.net/packages/medmij.fhir.nl.r4.core) version 1.1.0 or compatible |
| **FHIR version** | R4 |
| **Search request** | `GET [base]/Observation?code=http://snomed.info/sct|413347006` |
| **Must Support** | <ul> <li> `.identifier` <li> `.subject` <li> `.effectiveDateTime` <li> `.performer` <li> `.valueCodeableConcept` <li> `.meta.tag` (only the {{pagelink: GranularExchange, text: care type, anchor: CareType}}) |
| **CapabilityStatement(s)** | [MedMij Core ASAScore Retrieve](https://simplifier.net/resolve?canonical=http://medmij.nl/fhir/CapabilityStatement/medmij-core-ASAScore-Retrieve&scope=medmij.fhir.nl.r4.core@1.1.0) <br/> [MedMij Core ASAScore Serve](https://simplifier.net/resolve?canonical=http://medmij.nl/fhir/CapabilityStatement/medmij-core-ASAScore-Serve&scope=medmij.fhir.nl.r4.core@1.1.0) |

The FHIR profile is included below.

{{page:resource-view-tree-granular}}