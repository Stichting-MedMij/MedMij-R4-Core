# {{page-title}}

## 1.0.0
 
| Component                   | Description  | Ticket    |
| --------------------------- | ------------ | --------- |
| Granular exchange           | An initial page on granular exchange, including an overview of granular data services and guidance on care type, has been added. | [DOSINZAGE1-877](https://medmij.atlassian.net/browse/DOSINZAGE1-877) |
| Dataset                     | Logical Models corresponding to the ASAScore, HealthcareProvider and HealthProfessional information models have been added. | [DOSINZAGE1-879](https://medmij.atlassian.net/browse/DOSINZAGE1-879) |
| FHIR artifacts              | The profile medmij-core-ASAScore has been created based on the mz-ASAScore profile that was previously part of the [Dental Care IG](https://simplifier.net/guide/medmij-r4-dentalcare-ig/Home/Artifact-index/ASA-Score?version=1.0.0-beta.1), and has been added to the IG. Compared to the mz-ASAScore profile, the cardinality of `.subject` has been changed to `1..1` and the mappings in the profile have been aligned with the new Logical Model for ASAScore. | [DOSINZAGE1-879](https://medmij.atlassian.net/browse/DOSINZAGE1-879) |