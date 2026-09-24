// Logical Model for ASAScore

Logical: MedMijCoreLmASAScore
Parent: MedMijCoreLmBase
Id: medmij-core-lm-ASAScore
Title: "ASAScore"
Description: "Classification of physical condition according to the American Society of Anesthesiologists (ASA)."
* insert DefaultNarrative
* ^identifier.use = #official
* ^identifier.system = $URI
* ^identifier.value = $MedMijCoreLmASAScoreOID
* ^status = #active
* insert PublisherAndContact
* ^purpose = "This LogicalModel represents the ASAScore Clinical Information Model (CIM) for patient use cases in the context of MedMij. It is based on [this publication](https://www.asahq.org/standards-and-practice-parameters/statement-on-asa-physical-status-classification-system) by the American Society of Anesthesiologists (ASA), as well as a [Dutch version](https://anesthesia.help/nl/condition/praktische-anesthesiologie/asa-classificatie/) of the specification."
* insert Copyright
* ^abstract = false
* .
  * ^alias = "ASAScore"
* EffectiveDateTime 1..1
  * ^short = "ASA score date/time"
  * ^definition = "The date and time at which the ASA score was determined."
  * ^alias = "ASAScoreDatumTijd"
* EffectivePeriod 0..0
* ASAScoreValue 1..1 CodeableConcept "ASA score value" "The value of the ASA score."
* ASAScoreValue from ASAScore_VS (required)
  * ^alias = "ASAScoreWaarde"
* Performer 0..1 Reference(MedMijCoreLmHealthProfessional) "Performer" "The health professional who determined the ASA score."
  * ^alias = "Uitvoerder"
* Comment 0..* string "Comment" "Comment on the ASA score, including comments on for example the circumstances and/or disruptive factors that may influence the result."
  * ^alias = "Toelichting"

Mapping: MedMijCoreLmASAScoreMedMijCore-120
Source: MedMijCoreLmASAScore
Id: medmij-core-dataset-120-20260923
Title: "Dataset MedMij R4 Core 1.2.0 20260923"
* . -> "medmij-core-dataelement-1" "ASAScore"
* ASAScoreValue -> "medmij-core-dataelement-3" "ASAScoreValue"
* Performer -> "medmij-core-dataelement-4" "Performer"
* Comment -> "medmij-core-dataelement-5" "Comment"

Mapping: MedMijCoreLmASAScoreSNOMED
Source: MedMijCoreLmASAScore
Target: "http://snomed.info/sct"
Id: SNOMED
Title: "SNOMED CT"
* ASAScoreValue -> "413347006" "ASA-score"

Mapping: MedMijCoreLmASAScoreLOINC
Source: MedMijCoreLmASAScore
Target: "http://loinc.org"
Id: LOINC
Title: "LOINC"
* Comment -> "48767-8" "Verklarend commentaar"