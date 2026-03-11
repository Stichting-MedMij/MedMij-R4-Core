// All LogicalModels used in MedMij R4 Core

Logical: MedMijCoreLmASAScore
Parent: http://hl7.org/fhir/StructureDefinition/Element
Id: medmij-core-lm-ASAScore
Title: "ASAScore"
Description: "Classification of physical condition according to American Society of Anaesthesiologists (ASA)."
* insert DefaultNarrative
* ^identifier.use = #official
* ^identifier.system = $URI
* ^identifier.value = $MedMijCoreLmASAScoreOID
* ^status = #draft
* insert PublisherAndContact
* ^purpose = "This LogicalModel represents the ASAScore Clinical Information Model (CIM) for patient use cases in the context of MedMij. It is based on [this publication](https://journals.lww.com/anesthesiologyopen/fulltext/2026/01000/american_society_of_anesthesiologists_statement_on.2.aspx) by the American Society of Anaesthesiologists (ASA), as well as a [Dutch version](https://anesthesia.help/nl/condition/praktische-anesthesiologie/asa-classificatie/) of the specification."
* insert Copyright
* ^abstract = false
* .
  * ^alias = "ASAScore"
* ASAScoreDateTime 0..1 dateTime "ASA score date/time" "The date and time at which the ASA score was determined."
  * ^alias = "ASAScoreDatumTijd"
* ASAScoreValue 1..1 CodeableConcept "ASA score value" "The value of the ASA score."
* ASAScoreValue from ASAScore_VS (required)
  * ^alias = "ASAScoreWaarde"
* Performer 0..1 BackboneElement "Performer" "The health professional who determined the ASA score."
  * ^alias = "Uitvoerder"
  * HealthProfessional 1..1 BackboneElement "Health professional" "The health professional who determined the ASA score."
    * ^alias = "Zorgverlener"
    * HealthProfessionalIdentificationNumber 0..1 Identifier "Health professional identification number" "The healthcare provider identification number is a number that uniquely identifies the healthcare provider."
      * ^alias = "ZorgverlenerIdentificatienummer"
    * NameInformation 0..1 BackboneElement "Name information" "Health professional's full name. If a health professional identification number is entered, it will be the name as listed in UZI, AGB or by the healthcare center."
      * ^alias = "Naamgegevens"
      * FirstNames 0..1 string "First names" "The first names of the health professional."
        * ^alias = "Voornamen"
      * Initials 0..1 string "Initials" "The initials of the health professional."
        * ^alias = "Initialen"
      * LastName 1..1 BackboneElement "Last name" "Container of the LastName concept. This container contains all data elements of the LastName concept."
        * ^alias = "Geslachtsnaam"
        * Prefix 0..1 string "Prefix" "Prefix to the last name of the health professional."
          * ^alias = "Voorvoegsels"
        * LastName 1..1 string "Last name" "The last name of the health professional."
          * ^alias = "Achternaam"
    * Specialty 0..1 CodeableConcept "Specialty" "Health professional's medical specialty."
    * Specialty from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.121.11.22--20200901000000 (required)
      * ^alias = "Specialisme"
    * HealthcareProvider 0..1 BackboneElement "Healthcare provider" "The organization the health professional works for."
      * ^alias = "Zorgaanbieder"
      * HealthcareProviderIdentificationNumber 0..1 Identifier "Healthcare provider identification number" "The organization's identification number."
        * ^alias = "ZorgaanbiederIdentificatienummer"
      * OrganizationName 0..1 string "Organization name" "Name of the organization. If an identification number is given, the name must match the name that corresponds to the identification number."
        * ^alias = "OrganisatieNaam"
      * DepartmentSpecialty 0..1 CodeableConcept "Department specialty" "The specialty of the healthcare provider's department."
      * DepartmentSpecialty from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.106.11.22--20240205133006 (required)
        * ^alias = "AfdelingSpecialisme"
      * OrganizationType 0..1 CodeableConcept "Organization type" "The type of healthcare provider."
      * OrganizationType from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3--20200901000000 (extensible)
        * ^alias = "OrganisatieType"
* Comment 0..* string "Comment" "Comment on the ASA score measurement, including comments on for example the circumstances and/or disruptive factors that may influence the result."
  * ^alias = "Toelichting"

Mapping: MedMijCoreLmASAScoreMedMijCore-100
Source: MedMijCoreLmASAScore
Id: medmij-core-dataset-100-20260319
Title: "Dataset MedMij R4 Core 1.0.0 20260319"
* . -> "medmij-core-dataelement-1" "ASAScore"
* ASAScoreDateTime -> "medmij-core-dataelement-2" "ASAScoreDateTime"
* ASAScoreValue -> "medmij-core-dataelement-3" "ASAScoreValue"
* Performer -> "medmij-core-dataelement-4" "Performer"
  * HealthProfessional -> "medmij-core-dataelement-5" "HealthProfessional"
    * HealthProfessionalIdentificationNumber -> "medmij-core-dataelement-6" "HealthProfessionalIdentificationNumber"
    * NameInformation -> "medmij-core-dataelement-7" "NameInformation"
      * FirstNames -> "medmij-core-dataelement-8" "FirstNames"
      * Initials -> "medmij-core-dataelement-9" "Initials"
      * LastName -> "medmij-core-dataelement-10" "LastName"
        * Prefix -> "medmij-core-dataelement-11" "Prefix"
        * LastName -> "medmij-core-dataelement-12" "LastName"
    * Specialty -> "medmij-core-dataelement-13" "Specialty"
    * HealthcareProvider -> "medmij-core-dataelement-14" "HealthcareProvider"
      * HealthcareProviderIdentificationNumber -> "medmij-core-dataelement-15" "HealthcareProviderIdentificationNumber"
      * OrganizationName -> "medmij-core-dataelement-16" "OrganizationName"
      * DepartmentSpecialty -> "medmij-core-dataelement-17" "DepartmentSpecialty"
      * OrganizationType -> "medmij-core-dataelement-18" "OrganizationType"
* Comment -> "medmij-core-dataelement-19" "Comment"

Mapping: MedMijCoreLmASAScoreSNOMED
Source: MedMijCoreLmASAScore
Target: "http://snomed.info/sct"
Id: SNOMED
Title: "SNOMED CT"
* ASAScoreDateTime -> "439771001" "datum van gebeurtenis"
* ASAScoreValue -> "413347006" "ASA-score"
* Performer
  * HealthProfessional -> "223366009" "gezondheidszorgpersoneel"
    * Specialty -> "394658006" "klinisch specialisme"
    * HealthcareProvider -> "257622000" "zorginstelling"