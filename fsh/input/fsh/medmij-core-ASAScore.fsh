// Profile on Observation to be used in MedMij R4 Core

Profile: MedMijCoreASAScore
Parent: Observation
Id: medmij-core-ASAScore
Title: "medmij core ASAScore"
Description: "Classification of physical condition according to American Society of Anaesthesiologists (ASA)."
* insert DefaultNarrative
* ^status = #draft
* insert PublisherAndContact
* ^purpose = "This Observation resource represents the ASAScore Clinical Information Model (CIM) for patient use cases in the context of MedMij."
* insert Copyright
* . 
  * ^short = "ASAScore"
  * ^definition = "Classification of physical condition according to American Society of Anaesthesiologists (ASA)."
  * ^alias = "ASAScore"
* code
  * ^patternCodeableConcept = $SCT#413347006
* subject only Reference(Patient or http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient)
* effectiveDateTime
  * ^short = "ASAScoreDateTime"
  * ^definition = "The date and time at which the ASA score was determined."
  * ^alias = "ASAScoreDatumTijd"
* performer only Reference(Practitioner or PractitionerRole or Organization or CareTeam or Patient or RelatedPerson or http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole)
  * ^short = "Performer"
  * ^definition = "The health professional who determined the ASA score."
  * ^comment = """
    Each occurrence of the zib HealthProfessional is normally represented by _two_ FHIR resources: a PractitionerRole resource (instance of [nl-core-HealthProfessional-PractitionerRole](http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole)) and a Practitioner resource (instance of [nl-core-HealthProfessional-Practitioner](http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-Practitioner)). The Practitioner resource is referenced from the PractitionerRole instance. For this reason, sending systems should fill the reference to the PractitionerRole instance here, and not the Practitioner resource. Receiving systems can then retrieve the reference to the Practitioner resource from that PractitionerRole instance.
    
    In rare circumstances, there is only a Practitioner instance, in which case it is that instance which will be referenced here. However, since this should be the exception, the nl-core-HealthProfessional-Practitioner profile is not explicitly mentioned as a target profile.
    """
  * ^alias = "Uitvoerder"
* valueCodeableConcept 1..1
* valueCodeableConcept from ASAScore_VS (required)
  * ^short = "ASAScoreValue"
  * ^definition = "The value of the ASA score."
  * ^alias = "ASAScoreWaarde"
* note
  * text
    * ^short = "Comment"
    * ^definition = "Comment on the ASA score, including comments on for example the circumstances and/or disruptive factors that may influence the result."
    * ^alias = "Toelichting"

Mapping: MedMijCoreASAScoreMedMij-100
Source: MedMijCoreASAScore
Id: medmij-core-dataset-100-20260319
Title: "Dataset MedMij R4 Core 1.0.0 20260319"
* -> "medmij-core-dataelement-1" "ASAScore"
* effectiveDateTime -> "medmij-core-dataelement-2" "ASAScoreDateTime"
* performer -> "medmij-core-dataelement-4" "Performer"
* valueCodeableConcept -> "medmij-core-dataelement-3" "ASAScoreValue"
* note.text -> "medmij-core-dataelement-19" "Comment"