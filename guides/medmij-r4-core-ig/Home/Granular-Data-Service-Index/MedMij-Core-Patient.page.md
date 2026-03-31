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
| **Data service version** | 1.0.0-beta.1 |
| **System role(s)** | MMC-PTR-zib2020/R4-1.0.0-beta.1-FHIR (PHR) <br/> MMC-PTB-zib2020/R4-1.0.0-beta.1-FHIR (XIS) |
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
| **CapabilityStatement(s)** | [MedMij Core Patient Retrieve](https://simplifier.net/resolve?canonical=http://medmij.nl/fhir/CapabilityStatement/medmij-core-Patient-Retrieve&scope=medmij.fhir.nl.r4.core@1.0.0) <br/> [MedMij Core Patient Serve](https://simplifier.net/resolve?canonical=http://medmij.nl/fhir/CapabilityStatement/medmij-core-Patient-Serve&scope=medmij.fhir.nl.r4.core@1.0.0) |

The FHIR profile is included below.

<tabs>
    <tab title="Tree view" active="true">
      {{tree:http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient, buttons}}
    </tab>
    <tab title="Xml">
      {{xml:http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient}}
    </tab>
    <tab title="Json">
      {{json:http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient}}
    </tab>
</tabs>