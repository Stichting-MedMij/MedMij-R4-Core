// Profile on Observation used in MedMij R4 Core

Profile: MedMijCoreASAScore
Parent: Observation
Id: medmij-core-ASAScore
Title: "medmij core ASAScore"
Description: "Classification of physical condition according to American Society of Anaesthesiologists (ASA)."
* insert DefaultNarrative
* ^status = #active
* insert PublisherAndContact
* ^purpose = "This Observation resource represents the ASAScore Clinical Information Model (CIM) for patient use cases in the context of MedMij."
* insert Copyright
* .
  * ^short = "ASAScore"
  * ^definition = "Classification of physical condition according to American Society of Anaesthesiologists (ASA)."
  * ^alias = "ASAScore"
* meta
  * tag
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * tag contains 
      careType 0..*
  * tag[careType] from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4--20200901000000 (required)
    * ^short = "CareType"
    * ^definition = "The category of the healthcare provider responsible for the delivered care, or more specifically, the specialty of the department and/or health professional that delivered care. It enables patients and systems to interpret the origin and context of medical data."
    * ^alias = "Zorgtype"
* identifier
  * ^short = "IdentificationNumber"
  * ^definition = "Globally unique number that identifies the instantiation of the CIM. The number is composed of an identification of the issuer organization and a unique number assigned by this organization."
  * ^alias = "Identificatienummer"
* code
  * ^patternCodeableConcept = $SCT#413347006
* subject 1..1
* subject only Reference(Patient or http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient)
  * ^short = "Patient"
  * ^definition = "The patient as subject of the information."
  * ^alias = "Patiënt"
* effectiveDateTime
  * ^short = "EffectiveDateTime"
  * ^definition = "The date and time at which the ASA score was determined."
  * ^alias[0] = "Geldigheid"
  * ^alias[1] = "DatumTijd"
  * ^alias[2] = "ASAScoreDatumTijd"
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

Mapping: MedMijCoreASAScoreMedMij-110
Source: MedMijCoreASAScore
Id: medmij-core-dataset-110-20260603
Title: "Dataset MedMij R4 Core 1.1.0 20260603"
* -> "medmij-core-dataelement-1" "ASAScore"
* meta
  * tag[careType] -> "medmij-core-dataelement-121" "CareType"
* identifier -> "medmij-core-dataelement-115" "IdentificationNumber"
* subject -> "medmij-core-dataelement-116" "Patient"
* effectiveDateTime -> "medmij-core-dataelement-119" "EffectiveDateTime"
* performer -> "medmij-core-dataelement-4" "Performer"
* performer -> "medmij-core-dataelement-117" "HealthcareProvider (implicit, actual mapping is on PractitionerRole.organization)"
* valueCodeableConcept -> "medmij-core-dataelement-3" "ASAScoreValue"
* note.text -> "medmij-core-dataelement-5" "Comment"