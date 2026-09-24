// Logical Model for Base

Logical: MedMijCoreLmBase
Parent: http://hl7.org/fhir/StructureDefinition/Element
Id: medmij-core-lm-Base
Title: "Base"
Description: "All CIMs implicitly contain a number of basic concepts, such as an identification number or a reference to the patient the data belongs to. These are usually not included in the information models of the individual CIMs, but are supposed to be present. These are concepts that are of a more technical nature, sometimes have little or no clinical relevance, but are necessary for the sake of clarity and readability of the information. These basic concepts are collected in this Base model.\n\nWhenever similar concepts are in fact of clinical significance in the context of a certain CIM, they will be explicitly added in the information model of that CIM. An example of this is the inclusion of a healthcare provider reference to convey the relevant location in a CIM like Encounter or Procedure (next to the HealthcareProvider concept (medmij-core-dataelement-117) already present in this Base model), since the location where an encounter took place or where a procedure was carried out might be of clinical significance. Moreover, identification numbers with clinical significance such as AGB or UZI, might be added explicitly in certain CIMs (next to the IdentificationNumber concept (medmij-core-dataelement-115) already present in this Base model)."
* insert DefaultNarrative
* ^identifier.use = #official
* ^identifier.system = $URI
* ^identifier.value = $MedMijCoreLmBaseOID
* ^status = #active
* insert PublisherAndContact
* ^purpose = "This LogicalModel represents the base model for patient use cases in the context of MedMij. It takes inspiration from the Dutch zibs ('Zorginformatiebouwsteen', i.e. Health and Care Information Model) [BasicElements v1.0 (2017)](https://zibs.nl/wiki/BasicElements-v1.0(2017EN)) and [RegistrationData v1.1.2 (2024)](https://www.zibs.nl/wiki/RegistrationData-v1.1.2(2024EN)), as well as the [EHDS DataSet model](https://www.xt-ehr.eu/fhir/models/1.0.0/en/StructureDefinition-EHDSDataSet.html), and is adjusted such that it is suitable for implementation purposes in the context of MedMij. Note that there is no zib in publication 2020 equivalent to the zib BasicElements from publication 2017 or the zib RegistrationData from publication 2024, hence a custom base model has been introduced."
* insert Copyright
* ^abstract = false
* .
  * ^alias = "Basis"
* IdentificationNumber 1..* Identifier "Identification number" "Globally unique number that identifies the instantiation of the CIM. The number is composed of an identification of the issuer organization and a unique number assigned by this organization."
  * ^alias = "Identificatienummer"
* Patient 1..1 Reference(MedMijCoreLmPatient) "Patient" "The patient as subject of the information."
  * ^alias = "Patiënt"
* HealthcareProvider 0..1 Reference(MedMijCoreLmHealthcareProvider) "Healthcare provider" "The healthcare provider where the information is recorded and/or that is responsible for the information."
  * ^alias[0] = "Zorgaanbieder"
  * ^alias[1] = "Zorgorganisatie"
* Effective[x] 0..1 dateTime or Period "Effective" "The time or period the event to which the information relates took place. This is the medically relevant time or period."
  * ^alias = "Tijdsindicatie"
* EffectiveDateTime
  * ^short = "Effective date time"
  * ^definition = "The time the event to which the information relates took place. This is the medically relevant time."
  * ^alias = "DatumTijd"
* EffectivePeriod
  * ^short = "Effective period"
  * ^definition = "The period the event to which the information relates took place. This is the medically relevant period."
  * ^alias = "Periode"
  * start
    * ^short = "Start date time"
    * ^definition = "The start date (and if possible start time) of the event to which the information relates. This is the medically relevant start date time."
    * ^alias = "StartDatumTijd"
    * ^comment = "The EffectivePeriod.start is often referred to as StartDateTime."
  * end
    * ^short = "End date time"
    * ^definition = "The end date (and if possible end time) of the event to which the information relates. This is the medically relevant end date time. If the event still continues, the end date is not populated."
    * ^alias = "EindDatumTijd"
    * ^comment = "The EffectivePeriod.end is often referred to as EndDateTime."
* CareType 0..* CodeableConcept "Care type" "The type of the healthcare provider responsible for the delivered care, or more specifically, the specialty of the department and/or health professional that delivered care. It enables patients and systems to interpret the origin and context of medical data."
* CareType from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4--20200901000000 (required)
  * ^alias = "Zorgtype"

Mapping: MedMijCoreLmBaseZibBasicElements
Source: MedMijCoreLmBase
Target: "https://zibs.nl/wiki/BasicElements-v1.0(2017EN)"
Id: zib-basicelements-v1.0-2017EN
Title: "zib BasicElements-v1.0(2017EN)"
* . -> "NL-CM:0.0.1" "HCIMRoot"
* IdentificationNumber -> "NL-CM:0.0.6" "IdentificationNumber"
* Patient -> "NL-CM:0.0.12" "Patient"
* HealthcareProvider -> "NL-CM:0.0.9" "HealthProfessionalAsAuthor (implicit, actual mapping is on HealthProfessionalAsAuthor::HealthProfessional.HealthcareProvider (NL-CM:17.1.6))"
* EffectiveDateTime -> "NL-CM:0.0.14" "DateTime"

Mapping: MedMijCoreLmBaseZibRegistrationData
Source: MedMijCoreLmBase
Target: "https://www.zibs.nl/wiki/RegistrationData-v1.1.2(2024EN)"
Id: zib-registrationdata-v1.1.2-2024EN
Title: "zib RegistrationData-v1.1.2(2024EN)"
* . -> "NL-CM:22.1.1" "RegistrationData"
* IdentificationNumber -> "NL-CM:22.1.12" "IdentificationNumber"
* HealthcareProvider -> "NL-CM:22.1.2" "Author (implicit, actual mapping is on Author::HealthProfessional.HealthcareProvider (NL-CM:17.1.6))"

Mapping: MedMijCoreLmBaseEHDSDataSet
Source: MedMijCoreLmBase
Target: "https://www.xt-ehr.eu/fhir/models/1.0.0/en/StructureDefinition-EHDSDataSet.html"
Id: ehds-dataset-v1.0.0
Title: "EHDS DataSet v1.0.0"
* . -> "EHDSDataSet" "EHDSDataSet"
* IdentificationNumber -> "EHDSDataSet.header.identifier" "identifier"
* Patient -> "EHDSDataSet.header.subject" "subject"
* HealthcareProvider -> "EHDSDataSet.header.authorEHDSOrganisation" "authorEHDSOrganisation"

Mapping: MedMijCoreLmBaseMedMijCore-120
Source: MedMijCoreLmBase
Id: medmij-core-dataset-120-20260923
Title: "Dataset MedMij R4 Core 1.2.0 20260923"
* . -> "medmij-core-dataelement-114" "Base"
* IdentificationNumber -> "medmij-core-dataelement-115" "IdentificationNumber"
* Patient -> "medmij-core-dataelement-116" "Patient"
* HealthcareProvider -> "medmij-core-dataelement-117" "HealthcareProvider"
* Effective[x] -> "medmij-core-dataelement-118" "Effective"
* EffectiveDateTime -> "medmij-core-dataelement-119" "EffectiveDateTime"
* EffectivePeriod -> "medmij-core-dataelement-120" "EffectivePeriod"
  * start -> "medmij-core-dataelement-121" "StartDateTime"
  * end -> "medmij-core-dataelement-122" "EndDateTime"
* CareType -> "medmij-core-dataelement-123" "CareType"

Mapping: MedMijCoreLmBaseSNOMED
Source: MedMijCoreLmBase
Target: "http://snomed.info/sct"
Id: SNOMED
Title: "SNOMED CT"
* IdentificationNumber -> "396278008" "identificatienummer"
* Patient -> "131195008" "onderwerp van informatie"
* EffectiveDateTime -> "439771001" "datum van gebeurtenis"