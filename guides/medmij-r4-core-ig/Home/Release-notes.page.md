# {{page-title}}

## 1.0.1

| Component                   | Description  | Ticket    |
| --------------------------- | ------------ | --------- |
| Granular data service index | The following granular data services have been updated: <br/> <ul> <li> Retrieve MedMij Core - ASA score, version 1.0.0-beta.2 <ul> <li> The system roles have been updated to conform to the 30-character limit. </ul> <li> Retrieve MedMij Core - Encounter (zib2020/R4), version 1.0.0-beta.2 <ul> <li> The system roles have been updated to conform to the 30-character limit. </ul> <li> Retrieve MedMij Core - Patient (zib2020/R4), version 1.0.0-beta.2 <ul> <li> The system roles have been updated to conform to the 30-character limit. </ul> <li> Retrieve MedMij Core - Payer (zib2020/R4), version 1.0.0-beta.2 <ul> <li> The system roles have been updated to conform to the 30-character limit. </ul> <li> Retrieve MedMij Core - Treatment objective (zib2020/R4), version 1.0.0-beta.2 <ul> <li> The system roles have been updated to conform to the 30-character limit. </ul> | [DOSINZAGE1-984](https://medmij.atlassian.net/browse/DOSINZAGE1-984) |

## 1.0.0

| Component                   | Description  | Ticket    |
| --------------------------- | ------------ | --------- |
| Granular exchange           | An initial page on granular exchange, including an overview of granular data services and guidance on care type, has been added. | [DOSINZAGE1-877](https://medmij.atlassian.net/browse/DOSINZAGE1-877) |
| Granular data service index | The following granular data services have been added: <br/> <ul> <li> Retrieve MedMij Core - ASA score, version 1.0.0-beta.1 <li> Retrieve MedMij Core - Encounter (zib2020/R4), version 1.0.0-beta.1 <li> Retrieve MedMij Core - Patient (zib2020/R4), version 1.0.0-beta.1 <li> Retrieve MedMij Core - Payer (zib2020/R4), version 1.0.0-beta.1 <li> Retrieve MedMij Core - Treatment objective (zib2020/R4), version 1.0.0-beta.1 | [DOSINZAGE1-878](https://medmij.atlassian.net/browse/DOSINZAGE1-878) |
| Dataset                     | Logical Models corresponding to the ASAScore, HealthcareProvider and HealthProfessional information models have been added. | [DOSINZAGE1-879](https://medmij.atlassian.net/browse/DOSINZAGE1-879) |
| FHIR artifacts              | The profile medmij-core-ASAScore has been created based on the mz-ASAScore profile that was previously part of the [Dental Care IG](https://simplifier.net/guide/medmij-r4-dentalcare-ig/Home/Artifact-index/ASA-Score?version=1.0.0-beta.1), and has been added to the IG. Compared to the mz-ASAScore profile, the cardinality of `.subject` has been changed to `1..1` and the mappings in the profile have been aligned with the new Logical Model for ASAScore. | [DOSINZAGE1-879](https://medmij.atlassian.net/browse/DOSINZAGE1-879) |
| FHIR artifacts              | CapabilityStatements for the Retrieve and Serve transactions of the initial set of granular data services have been added. | [DOSINZAGE1-878](https://medmij.atlassian.net/browse/DOSINZAGE1-878) |