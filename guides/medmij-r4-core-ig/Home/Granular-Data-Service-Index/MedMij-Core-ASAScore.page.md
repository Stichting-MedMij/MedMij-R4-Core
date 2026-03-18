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
| **Data service version** | 1.0.0-beta.1 |
| **System role(s)** | MMC-ASR-1.0.0-beta.1-FHIR (PHR) <br/> MMC-ASB-1.0.0-beta.1-FHIR (XIS) |
| **Relevant domain(s)** | [Dental Care](https://simplifier.net/medmij-r4-dental-care/) |

## Functional model
| | |
| --- | --- |
| **CIM** | ASAScore (based on [this publication](https://journals.lww.com/anesthesiologyopen/fulltext/2026/01000/american_society_of_anesthesiologists_statement_on.2.aspx) by the American Society of Anaesthesiologists (ASA)) |
| **Functional version** | 1.0.0 |

The Logical Model is included below.

<tabs>
    <tab title="Tree view" active="true">
      {{tree:http://medmij.nl/fhir/StructureDefinition/medmij-core-lm-ASAScore, buttons}}
    </tab>
    <tab title="Xml">
      {{xml:http://medmij.nl/fhir/StructureDefinition/medmij-core-lm-ASAScore}}
    </tab>
    <tab title="Json">
      {{json:http://medmij.nl/fhir/StructureDefinition/medmij-core-lm-ASAScore}}
    </tab>
</tabs>

## Technical specification
| | |
| --- | --- |
| **FHIR profile(s)** | [http://medmij.nl/fhir/StructureDefinition/medmij-core-ASAScore](https://simplifier.net/resolve?canonical=http://medmij.nl/fhir/StructureDefinition/medmij-core-ASAScore&scope=medmij.fhir.nl.r4.core@1.0.0) |
| **FHIR package** | [medmij.fhir.nl.r4.core](https://simplifier.net/packages/medmij.fhir.nl.r4.core) version 1.0.0 or compatible |
| **FHIR version** | R4 |
| **Search request** | `GET [base]/Observation?code=http://snomed.info/sct|413347006` |
| **Must Support** | <ul> <li> `.identifier` <li> `.subject` <li> `.effectiveDateTime` <li> `.performer` <li> `.valueCodeableConcept` <li> `.meta.tag` (only the {{pagelink: GranularExchange, text: care type, anchor: CareType}}) |
| **CapabilityStatement(s)** | [MedMij Core ASAScore Retrieve](https://simplifier.net/resolve?canonical=http://medmij.nl/fhir/CapabilityStatement/medmij-core-ASAScore-Retrieve&scope=medmij.fhir.nl.r4.core@1.0.0) <br/> [MedMij Core ASAScore Serve](https://simplifier.net/resolve?canonical=http://medmij.nl/fhir/CapabilityStatement/medmij-core-ASAScore-Serve&scope=medmij.fhir.nl.r4.core@1.0.0) |

The FHIR profile is included below.

<tabs>
    <tab title="Tree view" active="true">
      {{tree:http://medmij.nl/fhir/StructureDefinition/medmij-core-ASAScore, buttons}}
    </tab>
    <tab title="Xml">
      {{xml:http://medmij.nl/fhir/StructureDefinition/medmij-core-ASAScore}}
    </tab>
    <tab title="Json">
      {{json:http://medmij.nl/fhir/StructureDefinition/medmij-core-ASAScore}}
    </tab>
</tabs>