---
topic: Payer
---

# Retrieve MedMij Core - Payer (zib2020/R4)

## Overview
| | |
| --- | --- |
| **Id** | 900000110 |
| **Data service name without version (English)** | Retrieve MedMij Core - Payer (zib2020/R4) |
| **Data service name without version (Dutch)** | Verzamelen MedMij Core - Betaler (zib2020/R4) |
| **Data service version** | 1.0.0-beta.1 |
| **System role(s)** | MMC-PAR-zib2020/R4-1.0.0-beta.1-FHIR (PHR) <br/> MMC-PAB-zib2020/R4-1.0.0-beta.1-FHIR (XIS) |
| **Used in Implementation Guide(s)** | [Dental Care](https://simplifier.net/medmij-r4-dental-care/) |

## Functional model
| | |
| --- | --- |
| **CIM** | [zib Payer](https://zibs.nl/wiki/Payer-v3.1.1(2020EN)) |
| **Functional version** | 3.1.1(2020) |

The functional model can be found on [ART-DECOR](https://decor.nictiz.nl/ad/#/zib2020bbr-/datasets/dataset/2.16.840.1.113883.2.4.3.11.60.40.3.1.1/2020-09-01T00:00:00).

## Technical specification
| | |
| --- | --- |
| **FHIR profile(s)** | [http://nictiz.nl/fhir/StructureDefinition/nl-core-Payer.PayerPerson](https://simplifier.net/resolve?canonical=http://nictiz.nl/fhir/StructureDefinition/nl-core-Payer.PayerPerson&scope=nictiz.fhir.nl.r4.nl-core@0.12.0-beta.4) <br/> [http://nictiz.nl/fhir/StructureDefinition/nl-core-Payer.InsuranceCompany](https://simplifier.net/resolve?canonical=http://nictiz.nl/fhir/StructureDefinition/nl-core-Payer.InsuranceCompany&scope=nictiz.fhir.nl.r4.nl-core@0.12.0-beta.4) <br/> [http://nictiz.nl/fhir/StructureDefinition/nl-core-Payer-Organization](https://simplifier.net/resolve?canonical=http://nictiz.nl/fhir/StructureDefinition/nl-core-Payer-Organization&scope=nictiz.fhir.nl.r4.nl-core@0.12.0-beta.4) |
| **FHIR package** | [nictiz.fhir.nl.r4.nl-core](https://simplifier.net/packages/nictiz.fhir.nl.r4.nl-core/0.12.0-beta.4) version 0.12.0-beta.4 or compatible |
| **FHIR version** | R4 |
| **Search request** | `GET [base]/Coverage` |
| **Must Support** | Coverage <ul> <li> `.identifier` <li> `.beneficiary` <li> `.period` <li> `.payor` <li> `.meta.tag` (only the {{pagelink: GranularExchange, text: care type, anchor: CareType}}) </ul> Organization <ul> <li> `.identifier` <li> `.name` <li> `.meta.tag` (only the {{pagelink: GranularExchange, text: care type, anchor: CareType}}) |
| **CapabilityStatement(s)** | [MedMij Core Payer Retrieve](https://simplifier.net/resolve?canonical=http://medmij.nl/fhir/CapabilityStatement/medmij-core-Payer-Retrieve&scope=medmij.fhir.nl.r4.core@1.0.1) <br/> [MedMij Core Payer Serve](https://simplifier.net/resolve?canonical=http://medmij.nl/fhir/CapabilityStatement/medmij-core-Payer-Serve&scope=medmij.fhir.nl.r4.core@1.0.1) |

The FHIR profiles are included below.

<tabs>
    <tab title="Tree view" active="true">
      {{tree:http://nictiz.nl/fhir/StructureDefinition/nl-core-Payer.PayerPerson, buttons}}
    </tab>
    <tab title="Xml">
      {{xml:http://nictiz.nl/fhir/StructureDefinition/nl-core-Payer.PayerPerson}}
    </tab>
    <tab title="Json">
      {{json:http://nictiz.nl/fhir/StructureDefinition/nl-core-Payer.PayerPerson}}
    </tab>
</tabs>

<tabs>
    <tab title="Tree view" active="true">
      {{tree:http://nictiz.nl/fhir/StructureDefinition/nl-core-Payer.InsuranceCompany, buttons}}
    </tab>
    <tab title="Xml">
      {{xml:http://nictiz.nl/fhir/StructureDefinition/nl-core-Payer.InsuranceCompany}}
    </tab>
    <tab title="Json">
      {{json:http://nictiz.nl/fhir/StructureDefinition/nl-core-Payer.InsuranceCompany}}
    </tab>
</tabs>

<tabs>
    <tab title="Tree view" active="true">
      {{tree:http://nictiz.nl/fhir/StructureDefinition/nl-core-Payer-Organization, buttons}}
    </tab>
    <tab title="Xml">
      {{xml:http://nictiz.nl/fhir/StructureDefinition/nl-core-Payer-Organization}}
    </tab>
    <tab title="Json">
      {{json:http://nictiz.nl/fhir/StructureDefinition/nl-core-Payer-Organization}}
    </tab>
</tabs>