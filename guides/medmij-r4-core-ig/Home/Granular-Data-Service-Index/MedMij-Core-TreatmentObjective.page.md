---
topic: TreatmentObjective
---

# Retrieve MedMij Core - Treatment objective (zib2020/R4)

## Overview
| | |
| --- | --- |
| **Id** | 900000103 |
| **Data service name without version (English)** | Retrieve MedMij Core - Treatment objective (zib2020/R4) |
| **Data service name without version (Dutch)** | Verzamelen MedMij Core - Behandeldoel (zib2020/R4) |
| **Data service version** | 1.0.0-beta.1 |
| **System role(s)** | MMC-TOR-zib2020/R4-1.0.0-beta.1-FHIR (PHR) <br/> MMC-TOB-zib2020/R4-1.0.0-beta.1-FHIR (XIS) |
| **Used in Implementation Guide(s)** | [Dental Care](https://simplifier.net/medmij-r4-dental-care/) |

## Functional model
| | |
| --- | --- |
| **CIM** | [zib TreatmentObjective](https://zibs.nl/wiki/TreatmentObjective-v3.2(2020EN)) |
| **Functional version** | 3.2(2020) |

The functional model can be found on [ART-DECOR](https://decor.nictiz.nl/ad/#/zib2020bbr-/datasets/dataset/2.16.840.1.113883.2.4.3.11.60.40.3.13.5/2020-09-01T00:00:00).

## Technical specification
| | |
| --- | --- |
| **FHIR profile(s)** | [http://nictiz.nl/fhir/StructureDefinition/nl-core-TreatmentObjective](https://simplifier.net/resolve?canonical=http://nictiz.nl/fhir/StructureDefinition/nl-core-TreatmentObjective&scope=nictiz.fhir.nl.r4.nl-core@0.12.0-beta.4) <br/> [http://nictiz.nl/fhir/StructureDefinition/nl-core-MedicalDevice](https://simplifier.net/resolve?canonical=http://nictiz.nl/fhir/StructureDefinition/nl-core-MedicalDevice&scope=nictiz.fhir.nl.r4.nl-core@0.12.0-beta.4) <br/> [http://nictiz.nl/fhir/StructureDefinition/nl-core-MedicalDevice.Product](https://simplifier.net/resolve?canonical=http://nictiz.nl/fhir/StructureDefinition/nl-core-MedicalDevice.Product&scope=nictiz.fhir.nl.r4.nl-core@0.12.0-beta.4) |
| **FHIR package** | [nictiz.fhir.nl.r4.nl-core](https://simplifier.net/packages/nictiz.fhir.nl.r4.nl-core/0.12.0-beta.4) version 0.12.0-beta.4 or compatible |
| **FHIR version** | R4 |
| **Search request** | `GET [base]/Goal` <br/> Specific guidance on the response message is provided {{pagelink: TreatmentObjective, text: below, anchor: SpecificXISResponseMessage}}. |
| **Must Support** | Goal <ul> <li> `.identifier` <li> `.priority` <li> `.description.text` <li> `.subject` <li> `.meta.tag` (only the {{pagelink: GranularExchange, text: care type, anchor: CareType}}) </ul> DeviceUseStatement <ul> <li> `.identifier` <li> `.subject` <li> `.timingPeriod` <li> `.device` <li> `.extension:treatmentObjective` <li> `.meta.tag` (only the {{pagelink: GranularExchange, text: care type, anchor: CareType}}) </ul> Device <ul> <li> `.identifier` <li> `.patient` <li> `.type` <li> `.meta.tag` (only the {{pagelink: GranularExchange, text: care type, anchor: CareType}}) |
| **CapabilityStatement(s)** | [MedMij Core TreatmentObjective Retrieve](https://simplifier.net/resolve?canonical=http://medmij.nl/fhir/CapabilityStatement/medmij-core-TreatmentObjective-Retrieve&scope=medmij.fhir.nl.r4.core@1.0.1) <br/> [MedMij Core TreatmentObjective Serve](https://simplifier.net/resolve?canonical=http://medmij.nl/fhir/CapabilityStatement/medmij-core-TreatmentObjective-Serve&scope=medmij.fhir.nl.r4.core@1.0.1) |

The FHIR profile is included below.

<tabs>
    <tab title="Tree view" active="true">
      {{tree:http://nictiz.nl/fhir/StructureDefinition/nl-core-TreatmentObjective, buttons}}
    </tab>
    <tab title="Xml">
      {{xml:http://nictiz.nl/fhir/StructureDefinition/nl-core-TreatmentObjective}}
    </tab>
    <tab title="Json">
      {{json:http://nictiz.nl/fhir/StructureDefinition/nl-core-TreatmentObjective}}
    </tab>
</tabs>

### Specific technical specifications
#### <a name="SpecificXISResponseMessage"></a> XIS: response message
Even though the PHR only requests the Goal resources corresponding to the TreatmentObjective CIM, the XIS SHALL include all DeviceUseStatement resources corresponding to the MedicalDevice concept (NL-CM:4.26.5) in the Bundle (provided the medical device data is present in the source system). Moreover, the XIS is encouraged to also include the Device resources referenced from these DeviceUseStatement resources via `.device`, but is not required to do so, as these can alternatively be retrieved by the PHR via a `read`.