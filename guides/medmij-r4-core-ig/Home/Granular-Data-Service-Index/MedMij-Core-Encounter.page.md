---
topic: Encounter
---

# Retrieve MedMij Core - Encounter (zib2020/R4)

## Overview
| | |
| --- | --- |
| **Id** | 900000111 |
| **Data service name without version (English)** | Retrieve MedMij Core - Encounter (zib2020/R4) |
| **Data service name without version (Dutch)** | Verzamelen MedMij Core - Contact (zib2020/R4) |
| **Data service version** | 1.0.0-beta.1 |
| **System role(s)** | MMC-ENR-zib2020/R4-1.0.0-beta.1-FHIR (PHR) <br/> MMC-ENB-zib2020/R4-1.0.0-beta.1-FHIR (XIS) |
| **Relevant domain(s)** | [Dental Care](https://simplifier.net/medmij-r4-dental-care/) |

## Functional model
| | |
| --- | --- |
| **CIM** | [zib Encounter](https://zibs.nl/wiki/Encounter-v4.0.1(2020EN)) |
| **Functional version** | 4.0.1(2020) |

The functional model can be found on [ART-DECOR](https://decor.nictiz.nl/ad/#/zib2020bbr-/datasets/dataset/2.16.840.1.113883.2.4.3.11.60.40.3.15.1/2020-09-01T00:00:00).

## Technical specification
| | |
| --- | --- |
| **FHIR profile(s)** | [http://nictiz.nl/fhir/StructureDefinition/nl-core-Encounter](https://simplifier.net/resolve?canonical=http://nictiz.nl/fhir/StructureDefinition/nl-core-Encounter&scope=nictiz.fhir.nl.r4.nl-core@0.12.0-beta.4) |
| **FHIR package** | [nictiz.fhir.nl.r4.nl-core](https://simplifier.net/packages/nictiz.fhir.nl.r4.nl-core) version 0.12.0-beta.4 or compatible |
| **FHIR version** | R4 |
| **Search request** | `GET [base]/Encounter` |
| **Must Support** | <ul> <li> `.identifier` <li> `.subject` <li> `.participant.individual` <li> `.period` <li> `.reasonReference` <li> `.location.location` <li> `.meta.tag` (only the {{pagelink: GranularExchange, text: care type, anchor: CareType}}) |
| **CapabilityStatement(s)** | [MedMij Core Encounter Retrieve](https://simplifier.net/resolve?canonical=http://medmij.nl/fhir/CapabilityStatement/medmij-core-Encounter-Retrieve&scope=medmij.fhir.nl.r4.core@1.0.0) <br/> [MedMij Core Encounter Serve](https://simplifier.net/resolve?canonical=http://medmij.nl/fhir/CapabilityStatement/medmij-core-Encounter-Serve&scope=medmij.fhir.nl.r4.core@1.0.0) |

The FHIR profile is included below.

<tabs>
    <tab title="Tree view" active="true">
      {{tree:http://nictiz.nl/fhir/StructureDefinition/nl-core-Encounter, buttons}}
    </tab>
    <tab title="Xml">
      {{xml:http://nictiz.nl/fhir/StructureDefinition/nl-core-Encounter}}
    </tab>
    <tab title="Json">
      {{json:http://nictiz.nl/fhir/StructureDefinition/nl-core-Encounter}}
    </tab>
</tabs>