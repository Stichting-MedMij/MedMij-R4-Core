// All LogicalModels used in MedMij R4 Core

Logical: MedMijCoreLmASAScore
Parent: MedMijCoreLmBase
Id: medmij-core-lm-ASAScore
Title: "ASAScore"
Description: "Classification of physical condition according to American Society of Anaesthesiologists (ASA)."
* insert DefaultNarrative
* ^identifier.use = #official
* ^identifier.system = $URI
* ^identifier.value = $MedMijCoreLmASAScoreOID
* ^status = #active
* insert PublisherAndContact
* ^purpose = "This LogicalModel represents the ASAScore Clinical Information Model (CIM) for patient use cases in the context of MedMij. It is based on [this publication](https://www.asahq.org/standards-and-practice-parameters/statement-on-asa-physical-status-classification-system) by the American Society of Anaesthesiologists (ASA), as well as a [Dutch version](https://anesthesia.help/nl/condition/praktische-anesthesiologie/asa-classificatie/) of the specification."
* insert Copyright
* ^abstract = false
* .
  * ^alias = "ASAScore"
* EffectiveDateTime
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

Logical: MedMijCoreLmBase
Parent: http://hl7.org/fhir/StructureDefinition/Element
Id: medmij-core-lm-Base
Title: "Base"
Description: "All CIMs implicitly contain a number of basic elements. These are usually not included in the information models of the individual CIMs, but are supposed to be present. These are concepts that are of a more technical nature, often have little or no clinical relevance, but are necessary for the sake of clarity and readability of the information. In those cases where these elements are of clinical significance, they will usually be explicit in the information models."
* insert DefaultNarrative
* ^identifier.use = #official
* ^identifier.system = $URI
* ^identifier.value = $MedMijCoreLmBaseOID
* ^status = #draft
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
  * ^alias = "Geldigheid"
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

Logical: MedMijCoreLmHealthProfessional
Parent: http://hl7.org/fhir/StructureDefinition/Element
Id: medmij-core-lm-HealthProfessional
Title: "HealthProfessional"
Description: "A health professional is a person who is authorized to perform actions in the field of individual healthcare."
Characteristics: #can-be-target
* insert DefaultNarrative
* ^identifier.use = #official
* ^identifier.system = $URI
* ^identifier.value = $MedMijCoreLmHealthProfessionalOID
* ^status = #active
* insert PublisherAndContact
* ^purpose = "This LogicalModel represents the HealthProfessional Clinical Information Model (CIM) for patient use cases in the context of MedMij. It is largely based on the Dutch [zib ('Zorginformatiebouwsteen', i.e. Health and Care Information Model) HealthProfessional v3.5 (2020)](https://zibs.nl/wiki/HealthProfessional-v3.5(2020EN)) adjusted such that it is suitable for implementation purposes in the context of MedMij."
* insert Copyright
* ^abstract = false
* .
  * ^alias = "Zorgverlener"
* HealthProfessionalIdentificationNumber 0..* Identifier "Health professional identification number" "The health professional identification number is a number that uniquely identifies the health professional.\nThe following numbers are used in the Netherlands: 1. UZI Health Professionals. Identification of health professionals (people) in the Dutch healthcare industry. 2. VEKTIS AGB-Z. Identifies health professionals and healthcare organizations 3. BIG-ID. The ID of the health professional listed in the BIG Register.\nThis information is not readily available for foreign health professionals."
  * ^alias = "ZorgverlenerIdentificatienummer"
* NameInformation 0..1 BackboneElement "Name information" "Health professional's full name. If a health professional identification number is entered, it will be the name as listed in UZI, AGB or by the healthcare center."
  * ^alias = "Naamgegevens"
  * FirstNames 0..1 string "First names" "The official first names of the health professional."
    * ^alias = "Voornamen"
  * Initials 0..1 string "Initials" "The initials of the health professional."
    * ^alias = "Initialen"
  * GivenName 0..1 string "Given name" "The name normally used to address the health professional."
    * ^alias = "Roepnaam"
  * NameUsage 0..1 CodeableConcept "Name usage" "This concept indicates the last name or order of last names with which the health professional is to be addressed."
  * NameUsage from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.20.4.1--20200901000000 (required)
    * ^alias = "Naamgebruik"
  * LastName 1..1 BackboneElement "Last name" "Container of the LastName concept. This container contains all data elements of the LastName concept."
    * ^alias = "Geslachtsnaam"
    * Prefix 0..1 string "Prefix" "Prefix to the last name of the health professional."
      * ^alias = "Voorvoegsels"
    * LastName 1..1 string "Last name" "The official last name of the health professional."
      * ^alias = "Achternaam"
  * LastNamePartner 0..1 BackboneElement "Last name partner" "Container of the LastNamePartner concept. This container contains all data elements of the LastNamePartner concept."
    * ^alias = "GeslachtsnaamPartner"
    * PartnerPrefix 0..1 string "Partner prefix" "Prefix to the partner's last name of the health professional."
      * ^alias = "VoorvoegselsPartner"
    * PartnerLastName 1..1 string "Partner last name" "The partner's official last name of the health professional."
      * ^alias = "AchternaamPartner"
  * Titles 0..1 string "Titles" "Noble and scientific titles. These can assist in formulating oral and formal addresing titles."
    * ^alias = "Titels"
* Specialty 0..1 CodeableConcept "Specialty" "Health professional's medical specialty. This refers to the recognized medical specialties as stated in the BIG Act. For example general practitioner or cardiologist."
* Specialty from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.121.11.22--20200901000000 (required)
  * ^alias = "Specialisme"
* Gender 0..1 CodeableConcept "Gender" "Administrative gender of the health professional."
* Gender from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.17.1.8--20200901000000 (required)
  * ^alias = "Geslacht"
* AddressInformation 0..* BackboneElement "Address information" "Health professional's address information."
  * ^alias = "Adresgegevens"
  * Street 0..1 string "Street" "Street name of the address."
    * ^alias = "Straat"
  * HouseNumber 0..1 string "House number" "House number of the address."
    * ^alias = "Huisnummer"
  * HouseNumberLetter 0..1 string "House number letter" "A letter following the house number as assigned by the municipal authorities."
    * ^alias = "Huisnummerletter"
  * HouseNumberAddition 0..1 string "House number addition" "The letters or signs needed to locate the mailbox, in addition to the house number and letter."
    * ^alias = "Huisnummertoevoeging"
  * HouseNumberIndication 0..1 CodeableConcept "House number indication" "The indication used for addresses which do not consist of the usual street name and house number."
  * HouseNumberIndication from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.20.5.4--20200901000000 (required)
    * ^alias = "AanduidingBijNummer"
  * Postcode 0..1 string "Postcode" "Postcode of the address.\nIn Dutch addresses, preferably use the postcode from the Postcode table (OID: 2.16.840.1.113883.2.4.4.15)."
    * ^alias = "Postcode"
  * PlaceOfResidence 0..1 string "Place of residence" "A geographically determined area which forms part of the municipal area.\nFor Dutch places of residence, preferably use the name from the GBA, table 33 (OID: 2.16.840.1.113883.2.4.6.14)."
    * ^alias = "Woonplaats"
  * Municipality 0..1 string "Municipality" "Municipality of residence.\nFor Dutch municipalities, preferably use the name from the GBA, table 33 (OID: 2.16.840.1.113883.2.4.6.14)."
    * ^alias = "Gemeente"
  * Country 0..1 CodeableConcept "Country" "Country in which the address is located."
  * Country from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.121.11.10--20200901000000 (required)
    * ^alias = "Land"
  * AdditionalInformation 0..1 string "Additional information" "Extra information such as the building name, building number, entrance, route number."
    * ^alias = "AdditioneleInformatie"
  * AddressType 0..1 CodeableConcept "Address type" "The type of address in question, such as a home address or mailing address."
  * AddressType from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.20.5.3--20200901000000 (extensible)
    * ^alias = "AdresSoort"
* ContactInformation 0..1 BackboneElement "Contact information" "Health professional's telephone number(s) or e-mail address(es)."
  * ^alias = "Contactgegevens"
  * TelephoneNumbers 0..* BackboneElement "Telephone numbers" "Container of the TelephoneNumbers concept. This container contains all data elements of the TelephoneNumbers concept."
    * ^alias = "Telefoonnummers"
    * TelephoneNumber 1..1 string "Telephone number" "The health professional's telephone number."
      * ^alias = "Telefoonnummer"
    * TelecomType 0..1 CodeableConcept "Telecom type" "The telecom or device type that the telephone number is connected to."
    * TelecomType from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.20.6.1--20200901000000 (extensible)
      * ^alias = "TelecomType"
    * NumberType 0..1 CodeableConcept "Number type" "The number type indicates whether the number is a landline, temporary or work telephone number."
    * NumberType from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.20.6.2--20200901000000 (extensible)
      * ^alias = "NummerSoort"
    * Comment 0..1 string "Comment" "Explanation about the telephone number and how to use it. It can be indicated, for example, that it is a department number (for healthcare professionnals) or that availability by phone is only possible during a specified part of the day."
      * ^alias = "Toelichting"
  * EmailAddresses 0..* BackboneElement "E-mail addresses" "Container of the EmailAddresses concept. This container contains all data elements of the E-mailAddresses concept."
    * ^alias = "EmailAdressen"
    * EmailAddress 1..1 string "E-mail address" "The health professional's e-mail address."
      * ^alias = "EmailAdres"
    * EmailAddressType 0..1 CodeableConcept "E-mail address type" "The e-mail address type indicates whether it is a private or business e-mail address."
    * EmailAddressType from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.20.6.3--20200901000000 (extensible)
      * ^alias = "EmailSoort"
* HealthcareProvider 0..1 Reference(MedMijCoreLmHealthcareProvider) "Healthcare provider" "The organization the health professional works for."
  * ^alias = "Zorgaanbieder"
* HealthProfessionalRole 0..1 CodeableConcept "Health professional role" "The role the health professional fulfils in the healthcare process. For health professionals, this could be for example attender, referrer or performer."
* HealthProfessionalRole from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.17.1.5--20200901000000 (extensible)

Logical: MedMijCoreLmHealthcareProvider
Parent: http://hl7.org/fhir/StructureDefinition/Element
Id: medmij-core-lm-HealthcareProvider
Title: "HealthcareProvider"
Description: "A healthcare provider is an organization that offers and provides medical, paramedic and/or nursing care to patients/clients. Examples include: hospitals, nursing homes, doctor's offices."
Characteristics: #can-be-target
* insert DefaultNarrative
* ^identifier.use = #official
* ^identifier.system = $URI
* ^identifier.value = $MedMijCoreLmHealthcareProviderOID
* ^status = #active
* insert PublisherAndContact
* ^purpose = "This LogicalModel represents the HealthcareProvider Clinical Information Model (CIM) for patient use cases in the context of MedMij. It is largely based on the Dutch [zib ('Zorginformatiebouwsteen', i.e. Health and Care Information Model) HealthcareProvider v3.4 (2020)](https://zibs.nl/wiki/HealthcareProvider-v3.4(2020EN)) adjusted such that it is suitable for implementation purposes in the context of MedMij."
* insert Copyright
* ^abstract = false
* .
  * ^alias = "Zorgaanbieder"
* HealthcareProviderIdentificationNumber 0..* Identifier "Healthcare provider identification number" "The organization's identification number. For Dutch healthcare providers, the URA number or the AGB number is used, if possible. Depending on the context other IDs are also possible. For foreign or non-affiliated healthcare providers, another unique identification number can be used. This must be accompanied by the name and/or code of the issuing organization."
  * ^alias = "ZorgaanbiederIdentificatienummer"
* OrganizationName 0..1 string "Organization name" "Name of the organization. If an identification number is given, the name must match the name that corresponds to the identification number."
  * ^alias = "OrganisatieNaam"
* DepartmentSpecialty 0..1 CodeableConcept "Department specialty" "The specialty of the healthcare provider's department. The departmental specialty can be filled in if further indication of the healthcare provider is needed. This refers to the recognized medical specialties as stated in the BIG Act."
* DepartmentSpecialty from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4--20200901000000 (required)
  * ^alias = "AfdelingSpecialisme"
* ContactInformation 0..1 BackboneElement "Contact information" "The information needed to contact the healthcare organization via telephone and/or e-mail."
  * ^alias = "Contactgegevens"
  * TelephoneNumbers 0..* BackboneElement "Telephone numbers" "Container of the TelephoneNumbers concept. This container contains all data elements of the TelephoneNumbers concept."
    * ^alias = "Telefoonnummers"
    * TelephoneNumber 1..1 string "Telephone number" "The healthcare provider's telephone number."
      * ^alias = "Telefoonnummer"
    * TelecomType 0..1 CodeableConcept "Telecom type" "The telecom or device type that the telephone number is connected to."
    * TelecomType from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.20.6.1--20200901000000 (extensible)
      * ^alias = "TelecomType"
    * NumberType 0..1 CodeableConcept "Number type" "The number type indicates whether the number is a landline, temporary or work telephone number."
    * NumberType from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.20.6.2--20200901000000 (extensible)
      * ^alias = "NummerSoort"
    * Comment 0..1 string "Comment" "Explanation about the telephone number and how to use it. It can be indicated, for example, that it is a department number (for healthcare professionnals) or that availability by phone is only possible during a specified part of the day."
      * ^alias = "Toelichting"
  * EmailAddresses 0..* BackboneElement "E-mail addresses" "Container of the EmailAddresses concept. This container contains all data elements of the E-mailAddresses concept."
    * ^alias = "EmailAdressen"
    * EmailAddress 1..1 string "E-mail address" "The healthcare provider's e-mail address."
      * ^alias = "EmailAdres"
    * EmailAddressType 0..1 CodeableConcept "E-mail address type" "The e-mail address type indicates whether it is a private or business e-mail address."
    * EmailAddressType from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.20.6.3--20200901000000 (extensible)
      * ^alias = "EmailSoort"
* AddressInformation 0..* BackboneElement "Address information" "The physical address of the healthcare provider's location."
  * ^alias = "Adresgegevens"
  * Street 0..1 string "Street" "Street name of the address."
    * ^alias = "Straat"
  * HouseNumber 0..1 string "House number" "House number of the address."
    * ^alias = "Huisnummer"
  * HouseNumberLetter 0..1 string "House number letter" "A letter following the house number as assigned by the municipal authorities."
    * ^alias = "Huisnummerletter"
  * HouseNumberAddition 0..1 string "House number addition" "The letters or signs needed to locate the mailbox, in addition to the house number and letter."
    * ^alias = "Huisnummertoevoeging"
  * HouseNumberIndication 0..1 CodeableConcept "House number indication" "The indication used for addresses which do not consist of the usual street name and house number."
  * HouseNumberIndication from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.20.5.4--20200901000000 (required)
    * ^alias = "AanduidingBijNummer"
  * Postcode 0..1 string "Postcode" "Postcode of the address.\nIn Dutch addresses, preferably use the postcode from the Postcode table (OID: 2.16.840.1.113883.2.4.4.15)."
    * ^alias = "Postcode"
  * PlaceOfResidence 0..1 string "Place of residence" "A geographically determined area which forms part of the municipal area.\nFor Dutch places of residence, preferably use the name from the GBA, table 33 (OID: 2.16.840.1.113883.2.4.6.14)."
    * ^alias = "Woonplaats"
  * Municipality 0..1 string "Municipality" "Municipality of residence.\nFor Dutch municipalities, preferably use the name from the GBA, table 33 (OID: 2.16.840.1.113883.2.4.6.14)."
    * ^alias = "Gemeente"
  * Country 0..1 CodeableConcept "Country" "Country in which the address is located."
  * Country from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.121.11.10--20200901000000 (required)
    * ^alias = "Land"
  * AdditionalInformation 0..1 string "Additional information" "Extra information such as the building name, building number, entrance, route number."
    * ^alias = "AdditioneleInformatie"
  * AddressType 0..1 CodeableConcept "Address type" "The type of address in question, such as a home address or mailing address."
  * AddressType from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.20.5.3--20200901000000 (extensible)
    * ^alias = "AdresSoort"
* OrganizationType 0..1 CodeableConcept "Organization type" "The type of healthcare provider, such as general hospital, or nursing home. If this field is filled in and an AGB code is used for the HealthcareProviderIdentificationNumber, the type must match the type implicitly contained in the AGB code."
* OrganizationType from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3--20200901000000 (extensible)
  * ^alias = "OrganisatieType"
* OrganizationLocation 0..1 BackboneElement "Organization location" "Container of the OrganizationLocation concept. This container contains all data elements of the OrganizationLocation concept."
  * ^alias = "OrganisatieLocatie"
  * LocationName 0..1 string "Location name" "Name of the location, in case a healthcare organization has more than one location."
    * ^alias = "LocatieNaam"
  * LocationNumber 0..1 integer "Location number" "Number of the location, if a numerical location identification is used next to or instead of a location name."
    * ^alias = "LocatieNummer"

Logical: MedMijCoreLmPatient
Parent: http://hl7.org/fhir/StructureDefinition/Element
Id: medmij-core-lm-Patient
Title: "Patient"
Description: "A person who receives medical, psychological, paramedical or nursing care. In some care settings, the term client or participant is used instead of the term patient."
Characteristics: #can-be-target
* insert DefaultNarrative
* ^identifier.use = #official
* ^identifier.system = $URI
* ^identifier.value = $MedMijCoreLmPatientOID
* ^status = #draft
* insert PublisherAndContact
* ^purpose = "This LogicalModel represents the Patient Clinical Information Model (CIM) for patient use cases in the context of MedMij. It is largely based on the Dutch [zib ('Zorginformatiebouwsteen', i.e. Health and Care Information Model) Patient v3.2 (2020)](https://zibs.nl/wiki/Patient-v3.2(2020EN)) adjusted such that it is suitable for implementation purposes in the context of MedMij."
* insert Copyright
* ^abstract = false
* .
  * ^alias = "Patient"
* NameInformation 0..1 BackboneElement "Name information" "Patient's full name."
  * ^alias = "Naamgegevens"
  * FirstNames 0..1 string "First names" "The official first names of the patient."
    * ^alias = "Voornamen"
  * Initials 0..1 string "Initials" "The initials of the patient."
    * ^alias = "Initialen"
  * GivenName 0..1 string "Given name" "The name normally used to address the patient."
    * ^alias = "Roepnaam"
  * NameUsage 0..1 CodeableConcept "Name usage" "This concept indicates the last name or order of last names with which the patient is to be addressed."
  * NameUsage from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.20.4.1--20200901000000 (required)
    * ^alias = "Naamgebruik"
  * LastName 1..1 BackboneElement "Last name" "Container of the LastName concept. This container contains all data elements of the LastName concept."
    * ^alias = "Geslachtsnaam"
    * Prefix 0..1 string "Prefix" "Prefix to the last name of the patient."
      * ^alias = "Voorvoegsels"
    * LastName 1..1 string "Last name" "The official last name of the patient."
      * ^alias = "Achternaam"
  * LastNamePartner 0..1 BackboneElement "Last name partner" "Container of the LastNamePartner concept. This container contains all data elements of the LastNamePartner concept."
    * ^alias = "GeslachtsnaamPartner"
    * PartnerPrefix 0..1 string "Partner prefix" "Prefix to the partner's last name of the patient."
      * ^alias = "VoorvoegselsPartner"
    * PartnerLastName 1..1 string "Partner last name" "The partner's official last name of the patient."
      * ^alias = "AchternaamPartner"
  * Titles 0..1 string "Titles" "Noble and scientific titles. These can assist in formulating oral and formal addresing titles."
    * ^alias = "Titels"
* AddressInformation 0..* BackboneElement "Address information" "Patient's address information."
  * ^alias = "Adresgegevens"
  * Street 0..1 string "Street" "Street name of the address."
    * ^alias = "Straat"
  * HouseNumber 0..1 string "House number" "House number of the address."
    * ^alias = "Huisnummer"
  * HouseNumberLetter 0..1 string "House number letter" "A letter following the house number as assigned by the municipal authorities."
    * ^alias = "Huisnummerletter"
  * HouseNumberAddition 0..1 string "House number addition" "The letters or signs needed to locate the mailbox, in addition to the house number and letter."
    * ^alias = "Huisnummertoevoeging"
  * HouseNumberIndication 0..1 CodeableConcept "House number indication" "The indication used for addresses which do not consist of the usual street name and house number."
  * HouseNumberIndication from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.20.5.4--20200901000000 (required)
    * ^alias = "AanduidingBijNummer"
  * Postcode 0..1 string "Postcode" "Postcode of the address.\nIn Dutch addresses, preferably use the postcode from the Postcode table (OID: 2.16.840.1.113883.2.4.4.15). "
    * ^alias = "Postcode"
  * PlaceOfResidence 0..1 string "Place of residence" "A geographically determined area which forms part of the municipal area.\nFor Dutch places of residence, preferably use the name from the GBA, table 33 (OID: 2.16.840.1.113883.2.4.6.14)."
    * ^alias = "Woonplaats"
  * Municipality 0..1 string "Municipality" "Municipality of residence.\nFor Dutch municipalities, preferably use the name from the GBA, table 33 (OID: 2.16.840.1.113883.2.4.6.14)."
    * ^alias = "Gemeente"
  * Country 0..1 CodeableConcept "Country" "Country in which the address is located."
  * Country from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.121.11.10--20200901000000 (required)
    * ^alias = "Land"
  * AdditionalInformation 0..1 string "Additional information" "Extra information such as the building name, building number, entrance, route number."
    * ^alias = "AdditioneleInformatie"
  * AddressType 0..1 CodeableConcept "Address type" "The type of address in question, such as a home address or mailing address."
  * AddressType from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.20.5.3--20200901000000 (required)
    * ^alias = "AdresSoort"
* ContactInformation 0..1 BackboneElement "Contact information" "Patient's telephone number(s) or e-mail address(es)."
  * ^alias = "Contactgegevens"
  * TelephoneNumbers 0..* BackboneElement "Telephone numbers" "Container of the TelephoneNumbers concept. This container contains all data elements of the TelephoneNumbers concept."
    * ^alias = "Telefoonnummers"
    * TelephoneNumber 1..1 string "Telephone number" "The patient's telephone number."
      * ^alias = "Telefoonnummer"
    * TelecomType 0..1 CodeableConcept "Telecom type" "The telecom or device type that the telephone number is connected to."
    * TelecomType from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.20.6.1--20200901000000 (required)
      * ^alias = "TelecomType"
    * NumberType 0..1 CodeableConcept "Number type" "The number type indicates whether the number is a landline, temporary or work telephone number."
    * NumberType from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.20.6.2--20200901000000 (required)
      * ^alias = "NummerSoort"
    * Comment 0..1 string "Comment" "Explanation about the telephone number and how to use it. It can be indicated, for example, that it is a department number (for healthcare professionnals) or that availability by phone is only possible during a specified part of the day."
      * ^alias = "Toelichting"
  * EmailAddresses 0..* BackboneElement "E-mail addresses" "Container of the EmailAddresses concept. This container contains all data elements of the E-mailAddresses concept."
    * ^alias = "EmailAdressen"
    * EmailAddress 1..1 string "E-mail address" "The patient's e-mail address."
      * ^alias = "EmailAdres"
    * EmailAddressType 0..1 CodeableConcept "E-mail address type" "The e-mail address type indicates whether it is a private or business e-mail address."
    * EmailAddressType from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.20.6.3--20200901000000 (required)
      * ^alias = "EmailSoort"
* PatientIdentificationNumber 0..* Identifier "The patient's identification number. In transfer situations, use of the social security number (BSN) must comply with the Use of Social Security Numbers in Healthcare Act (Wbsn-z). In other situations, other number systems can be used, such as internal hospital patient numbers."
  * ^alias = "Identificatienummer"
* DateOfBirth 0..1 dateTime "Date of birth" "Patient's date of birth. The date of birth is mandatory for a patient. A vague date (such as only the year) is permitted."
  * ^alias = "Geboortedatum"
* Gender 0..1 CodeableConcept "Gender" "Patient's administrative gender."
* Gender from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1--20200901000000 (required)
  * ^alias = "Geslacht"
* MultipleBirthIndicator 0..1 boolean "Multiple birth indicator" "An indication stating whether the patient is of a multiple birth."
  * ^alias = "MeerlingIndicator"
* DeathIndicator 0..1 boolean "Death indicator" "An indication stating whether the patient has died."
  * ^alias = "OverlijdensIndicator"
* DateOfDeath 0..1 dateTime "Date of death" "The date on which the patient died. A 'vague' date, such as only the year, is permitted."
  * ^alias = "DatumOverlijden"

Mapping: MedMijCoreLmASAScoreMedMijCore-120
Source: MedMijCoreLmASAScore
Id: medmij-core-dataset-120-2026xxyy
Title: "Dataset MedMij R4 Core 1.2.0 2026xxyy"
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
Id: medmij-core-dataset-120-2026xxyy
Title: "Dataset MedMij R4 Core 1.2.0 2026xxyy"
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

Mapping: MedMijCoreLmHealthProfessionalZibHealthProfessional
Source: MedMijCoreLmHealthProfessional
Target: "https://zibs.nl/wiki/HealthProfessional-v3.5(2020EN)"
Id: zib-healthprofessional-v3.5-2020EN
Title: "zib HealthProfessional-v3.5(2020EN)"
* . -> "NL-CM:17.1.1" "HealthProfessional"
* HealthProfessionalIdentificationNumber -> "NL-CM:17.1.2" "HealthProfessionalIdentificationNumber"
* NameInformation -> "NL-CM:17.1.3" "NameInformation"
* Specialty -> "NL-CM:17.1.4" "Specialty"
* Gender -> "NL-CM:17.1.9" "Gender"
* AddressInformation -> "NL-CM:17.1.7" "AddressInformation"
* ContactInformation -> "NL-CM:17.1.8" "ContactInformation"
* HealthcareProvider -> "NL-CM:17.1.6" "HealthcareProvider"
* HealthProfessionalRole -> "NL-CM:17.1.5" "HealthProfessionalRole"

Mapping: MedMijCoreLmHealthProfessionalZibNameInformation
Source: MedMijCoreLmHealthProfessional
Target: "https://zibs.nl/wiki/NameInformation-v1.1(2020EN)"
Id: zib-nameinformation-v1.1-2020EN
Title: "zib NameInformation-v1.1(2020EN)"
* NameInformation -> "NL-CM:20.4.1" "NameInformation"
  * FirstNames -> "NL-CM:20.4.4" "FirstNames"
  * Initials -> "NL-CM:20.4.5" "Initials"
  * GivenName -> "NL-CM:20.4.6" "GivenName"
  * NameUsage -> "NL-CM:20.4.7" "NameUsage"
  * LastName -> "NL-CM:20.4.2" "LastName"
    * Prefix -> "NL-CM:20.4.11" "Prefix"
    * LastName -> "NL-CM:20.4.10" "LastName"
  * LastNamePartner -> "NL-CM:20.4.3" "LastNamePartner"
    * PartnerPrefix -> "NL-CM:20.4.9" "PartnerPrefix"
    * PartnerLastName -> "NL-CM:20.4.8" "PartnerLastName"
  * Titles -> "NL-CM:20.4.12" "Titles"

Mapping: MedMijCoreLmHealthProfessionalZibAddressInformation
Source: MedMijCoreLmHealthProfessional
Target: "https://zibs.nl/wiki/AddressInformation-v1.1(2020EN)"
Id: zib-addressinformation-v1.1-2020EN
Title: "zib AddressInformation-v1.1(2020EN)"
* AddressInformation -> "NL-CM:20.5.1" "AddressInformation"
  * Street -> "NL-CM:20.5.2" "Street"
  * HouseNumber -> "NL-CM:20.5.12" "HouseNumber"
  * HouseNumberLetter -> "NL-CM:20.5.11" "HouseNumberLetter"
  * HouseNumberAddition -> "NL-CM:20.5.10" "HouseNumberAddition"
  * HouseNumberIndication -> "NL-CM:20.5.9" "HouseNumberIndication"
  * Postcode -> "NL-CM:20.5.6" "Postcode"
  * PlaceOfResidence -> "NL-CM:20.5.3" "PlaceOfResidence"
  * Municipality -> "NL-CM:20.5.4" "Municipality"
  * Country -> "NL-CM:20.5.5" "Country"
  * AdditionalInformation -> "NL-CM:20.5.7" "AdditionalInformation"
  * AddressType -> "NL-CM:20.5.8" "AddressType"

Mapping: MedMijCoreLmHealthProfessionalZibContactInformation
Source: MedMijCoreLmHealthProfessional
Target: "https://zibs.nl/wiki/ContactInformation-v1.2(2020EN)"
Id: zib-contactinformation-v1.2-2020EN
Title: "zib ContactInformation-v1.2(2020EN)"
* ContactInformation -> "NL-CM:20.6.1" "ContactInformation"
  * TelephoneNumbers -> "NL-CM:20.6.2" "TelephoneNumbers"
    * TelephoneNumber -> "NL-CM:20.6.4" "TelephoneNumber"
    * TelecomType -> "NL-CM:20.6.5" "TelecomType"
    * NumberType -> "NL-CM:20.6.6" "NumberType"
    * Comment -> "NL-CM:20.6.9" "Comment"
  * EmailAddresses -> "NL-CM:20.6.3" "EmailAddresses"
    * EmailAddress -> "NL-CM:20.6.7" "EmailAddress"
    * EmailAddressType -> "NL-CM:20.6.8" "EmailAddressType"

Mapping: MedMijCoreLmHealthProfessionalMedMijCore-120
Source: MedMijCoreLmHealthProfessional
Id: medmij-core-dataset-120-2026xxyy
Title: "Dataset MedMij R4 Core 1.2.0 2026xxyy"
* . -> "medmij-core-dataelement-6" "HealthProfessional"
* HealthProfessionalIdentificationNumber -> "medmij-core-dataelement-7" "HealthProfessionalIdentificationNumber"
* NameInformation -> "medmij-core-dataelement-8" "NameInformation"
  * FirstNames -> "medmij-core-dataelement-9" "FirstNames"
  * Initials -> "medmij-core-dataelement-10" "Initials"
  * GivenName -> "medmij-core-dataelement-11" "GivenName"
  * NameUsage -> "medmij-core-dataelement-12" "NameUsage"
  * LastName -> "medmij-core-dataelement-13" "LastName"
    * Prefix -> "medmij-core-dataelement-14" "Prefix"
    * LastName -> "medmij-core-dataelement-15" "LastName"
  * LastNamePartner -> "medmij-core-dataelement-16" "LastNamePartner"
    * PartnerPrefix -> "medmij-core-dataelement-17" "PartnerPrefix"
    * PartnerLastName -> "medmij-core-dataelement-18" "PartnerLastName"
  * Titles -> "medmij-core-dataelement-19" "Titles"
* Specialty -> "medmij-core-dataelement-20" "Specialty"
* Gender -> "medmij-core-dataelement-21" "Gender"
* AddressInformation -> "medmij-core-dataelement-22" "AddressInformation"
  * Street -> "medmij-core-dataelement-23" "Street"
  * HouseNumber -> "medmij-core-dataelement-24" "HouseNumber"
  * HouseNumberLetter -> "medmij-core-dataelement-25" "HouseNumberLetter"
  * HouseNumberAddition -> "medmij-core-dataelement-26" "HouseNumberAddition"
  * HouseNumberIndication -> "medmij-core-dataelement-27" "HouseNumberIndication"
  * Postcode -> "medmij-core-dataelement-28" "Postcode"
  * PlaceOfResidence -> "medmij-core-dataelement-29" "PlaceOfResidence"
  * Municipality -> "medmij-core-dataelement-30" "Municipality"
  * Country -> "medmij-core-dataelement-31" "Country"
  * AdditionalInformation -> "medmij-core-dataelement-32" "AdditionalInformation"
  * AddressType -> "medmij-core-dataelement-33" "AddressType"
* ContactInformation -> "medmij-core-dataelement-34" "ContactInformation"
  * TelephoneNumbers -> "medmij-core-dataelement-35" "TelephoneNumbers"
    * TelephoneNumber -> "medmij-core-dataelement-36" "TelephoneNumber"
    * TelecomType -> "medmij-core-dataelement-37" "TelecomType"
    * NumberType -> "medmij-core-dataelement-38" "NumberType"
    * Comment -> "medmij-core-dataelement-39" "Comment"
  * EmailAddresses -> "medmij-core-dataelement-40" "EmailAddresses"
    * EmailAddress -> "medmij-core-dataelement-41" "EmailAddress"
    * EmailAddressType -> "medmij-core-dataelement-42" "EmailAddressType"
* HealthcareProvider -> "medmij-core-dataelement-43" "HealthcareProvider"
* HealthProfessionalRole -> "medmij-core-dataelement-44" "HealthProfessionalRole"

Mapping: MedMijCoreLmHealthProfessionalSNOMED
Source: MedMijCoreLmHealthProfessional
Target: "http://snomed.info/sct"
Id: SNOMED
Title: "SNOMED CT"
* . -> "223366009" "gezondheidszorgpersoneel"
* Specialty -> "394658006" "klinisch specialisme"

Mapping: MedMijCoreLmPatientZibPatient
Source: MedMijCoreLmPatient
Target: "https://zibs.nl/wiki/Patient-v3.2(2020EN)"
Id: zib-patient-v3.2-2020EN
Title: "zib Patient-v3.2(2020EN)"
* . -> "NL-CM:0.1.1" "Patient"
* NameInformation -> "NL-CM:0.1.6" "NameInformation"
* AddressInformation -> "NL-CM:0.1.4" "AddressInformation"
* ContactInformation -> "NL-CM:0.1.5" "ContactInformation"
* PatientIdentificationNumber -> "NL-CM:0.1.7" "PatientIdentificationNumber"
* DateOfBirth -> "NL-CM:0.1.10" "DateOfBirth"
* Gender -> "NL-CM:0.1.9" "Gender"
* MultipleBirthIndicator -> "NL-CM:0.1.31" "MultipleBirthIndicator"
* DeathIndicator -> "NL-CM:0.1.32" "DeathIndicator"
* DateOfDeath -> "NL-CM:0.1.33" "DateOfDeath"

Mapping: MedMijCoreLmPatientZibNameInformation
Source: MedMijCoreLmPatient
Target: "https://zibs.nl/wiki/NameInformation-v1.1(2020EN)"
Id: zib-nameinformation-v1.1-2020EN
Title: "zib NameInformation-v1.1(2020EN)"
* NameInformation
  * FirstNames -> "NL-CM:20.4.4" "FirstNames"
  * Initials -> "NL-CM:20.4.5" "Initials"
  * GivenName -> "NL-CM:20.4.6" "GivenName"
  * NameUsage -> "NL-CM:20.4.7" "NameUsage"
  * LastName -> "NL-CM:20.4.2" "LastName"
    * Prefix -> "NL-CM:20.4.11" "Prefix"
    * LastName -> "NL-CM:20.4.10" "LastName"
  * LastNamePartner -> "NL-CM:20.4.3" "LastNamePartner"
    * PartnerPrefix -> "NL-CM:20.4.9" "PartnerPrefix"
    * PartnerLastName -> "NL-CM:20.4.8" "PartnerLastName"
  * Titles -> "NL-CM:20.4.12" "Titles"

Mapping: MedMijCoreLmPatientZibAddressInformation
Source: MedMijCoreLmPatient
Target: "https://zibs.nl/wiki/AddressInformation-v1.1(2020EN)"
Id: zib-addressinformation-v1.1-2020EN
Title: "zib AddressInformation-v1.1(2020EN)"
* AddressInformation
  * Street -> "NL-CM:20.5.2" "Street"
  * HouseNumber -> "NL-CM:20.5.12" "HouseNumber"
  * HouseNumberLetter -> "NL-CM:20.5.11" "HouseNumberLetter"
  * HouseNumberAddition -> "NL-CM:20.5.10" "HouseNumberAddition"
  * HouseNumberIndication -> "NL-CM:20.5.9" "HouseNumberIndication"
  * Postcode -> "NL-CM:20.5.6" "Postcode"
  * PlaceOfResidence -> "NL-CM:20.5.3" "PlaceOfResidence"
  * Municipality -> "NL-CM:20.5.4" "Municipality"
  * Country -> "NL-CM:20.5.5" "Country"
  * AdditionalInformation -> "NL-CM:20.5.7" "AdditionalInformation"
  * AddressType -> "NL-CM:20.5.8" "AddressType"

Mapping: MedMijCoreLmPatientZibContactInformation
Source: MedMijCoreLmPatient
Target: "https://zibs.nl/wiki/ContactInformation-v1.2(2020EN)"
Id: zib-contactinformation-v1.2-2020EN
Title: "zib ContactInformation-v1.2(2020EN)"
* ContactInformation
  * TelephoneNumbers -> "NL-CM:20.6.2" "TelephoneNumbers"
    * TelephoneNumber -> "NL-CM:20.6.4" "TelephoneNumber"
    * TelecomType -> "NL-CM:20.6.5" "TelecomType"
    * NumberType -> "NL-CM:20.6.6" "NumberType"
    * Comment -> "NL-CM:20.6.9" "Comment"
  * EmailAddresses -> "NL-CM:20.6.3" "EmailAddresses"
    * EmailAddress -> "NL-CM:20.6.7" "EmailAddress"
    * EmailAddressType -> "NL-CM:20.6.8" "EmailAddressType"

Mapping: MedMijCoreLmPatientMedMijCore-120
Source: MedMijCoreLmPatient
Id: medmij-core-dataset-120-2026xxyy
Title: "Dataset MedMij R4 Core 1.2.0 2026xxyy"
* . -> "medmij-core-dataelement-74" "Patient"
* NameInformation -> "medmij-core-dataelement-75" "NameInformation"
  * FirstNames -> "medmij-core-dataelement-76" "FirstNames"
  * Initials -> "medmij-core-dataelement-77" "Initials"
  * GivenName -> "medmij-core-dataelement-78" "GivenName"
  * NameUsage -> "medmij-core-dataelement-79" "NameUsage"
  * LastName -> "medmij-core-dataelement-80" "LastName"
    * Prefix -> "medmij-core-dataelement-81" "Prefix"
    * LastName -> "medmij-core-dataelement-82" "LastName"
  * LastNamePartner -> "medmij-core-dataelement-83" "LastNamePartner"
    * PartnerPrefix -> "medmij-core-dataelement-84" "PartnerPrefix"
    * PartnerLastName -> "medmij-core-dataelement-85" "PartnerLastName"
  * Titles -> "medmij-core-dataelement-86" "Titles"
* AddressInformation -> "medmij-core-dataelement-87" "AddressInformation"
  * Street -> "medmij-core-dataelement-88" "Street"
  * HouseNumber -> "medmij-core-dataelement-89" "HouseNumber"
  * HouseNumberLetter -> "medmij-core-dataelement-90" "HouseNumberLetter"
  * HouseNumberAddition -> "medmij-core-dataelement-91" "HouseNumberAddition"
  * HouseNumberIndication -> "medmij-core-dataelement-92" "HouseNumberIndication"
  * Postcode -> "medmij-core-dataelement-93" "Postcode"
  * PlaceOfResidence -> "medmij-core-dataelement-94" "PlaceOfResidence"
  * Municipality -> "medmij-core-dataelement-95" "Municipality"
  * Country -> "medmij-core-dataelement-96" "Country"
  * AdditionalInformation -> "medmij-core-dataelement-97" "AdditionalInformation"
  * AddressType -> "medmij-core-dataelement-98" "AddressType"
* ContactInformation -> "medmij-core-dataelement-99" "ContactInformation"
  * TelephoneNumbers -> "medmij-core-dataelement-100" "TelephoneNumbers"
    * TelephoneNumber -> "medmij-core-dataelement-101" "TelephoneNumber"
    * TelecomType -> "medmij-core-dataelement-102" "TelecomType"
    * NumberType -> "medmij-core-dataelement-103" "NumberType"
    * Comment -> "medmij-core-dataelement-104" "Comment"
  * EmailAddresses -> "medmij-core-dataelement-105" "EmailAddresses"
    * EmailAddress -> "medmij-core-dataelement-106" "EmailAddress"
    * EmailAddressType -> "medmij-core-dataelement-107" "EmailAddressType"
* PatientIdentificationNumber -> "medmij-core-dataelement-108" "PatientIdentificationNumber"
* DateOfBirth -> "medmij-core-dataelement-109" "DateOfBirth"
* Gender -> "medmij-core-dataelement-110" "Gender"
* MultipleBirthIndicator -> "medmij-core-dataelement-111" "MultipleBirthIndicator"
* DeathIndicator -> "medmij-core-dataelement-112" "DeathIndicator"
* DateOfDeath -> "medmij-core-dataelement-113" "DateOfDeath"

Mapping: MedMijCoreLmPatientSNOMED
Source: MedMijCoreLmPatient
Target: "http://snomed.info/sct"
Id: SNOMED
Title: "SNOMED CT"
* . -> "116154003" "patiënt"
* DeathIndicator -> "397709008" "patiënt overleden"

Mapping: MedMijCoreLmPatientLOINC
Source: MedMijCoreLmPatient
Target: "http://loinc.org"
Id: LOINC
Title: "LOINC"
* DateOfBirth -> "21112-8" "Geboortedatum"
* Gender -> "46098-0" "Geslacht"
* DateOfDeath -> "81954-0" "Date of death"

Mapping: MedMijCoreLmHealthcareProviderZibHealthcareProvider
Source: MedMijCoreLmHealthcareProvider
Target: "https://zibs.nl/wiki/HealthcareProvider-v3.4(2020EN)"
Id: zib-healthcareprovider-v3.4-2020EN
Title: "zib HealthcareProvider-v3.4(2020EN)"
* . -> "NL-CM:17.2.1" "HealthcareProvider"
* HealthcareProviderIdentificationNumber -> "NL-CM:17.2.2" "HealthcareProviderIdentificationNumber"
* OrganizationName -> "NL-CM:17.2.3" "OrganizationName"
* DepartmentSpecialty -> "NL-CM:17.2.7" "DepartmentSpecialty"
* ContactInformation -> "NL-CM:17.2.6" "ContactInformation"
* AddressInformation -> "NL-CM:17.2.5" "AddressInformation"
* OrganizationType -> "NL-CM:17.2.4" "OrganizationType"
* OrganizationLocation -> "NL-CM:17.2.9" "OrganizationLocation"
  * LocationName -> "NL-CM:17.2.8" "LocationName"
  * LocationNumber -> "NL-CM:17.2.10" "LocationNumber"

Mapping: MedMijCoreLmHealthcareProviderZibContactInformation
Source: MedMijCoreLmHealthcareProvider
Target: "https://zibs.nl/wiki/ContactInformation-v1.2(2020EN)"
Id: zib-contactinformation-v1.2-2020EN
Title: "zib ContactInformation-v1.2(2020EN)"
* ContactInformation -> "NL-CM:20.6.1" "ContactInformation"
  * TelephoneNumbers -> "NL-CM:20.6.2" "TelephoneNumbers"
    * TelephoneNumber -> "NL-CM:20.6.4" "TelephoneNumber"
    * TelecomType -> "NL-CM:20.6.5" "TelecomType"
    * NumberType -> "NL-CM:20.6.6" "NumberType"
    * Comment -> "NL-CM:20.6.9" "Comment"
  * EmailAddresses -> "NL-CM:20.6.3" "EmailAddresses"
    * EmailAddress -> "NL-CM:20.6.7" "EmailAddress"
    * EmailAddressType -> "NL-CM:20.6.8" "EmailAddressType"

Mapping: MedMijCoreLmHealthcareProviderZibAddressInformation
Source: MedMijCoreLmHealthcareProvider
Target: "https://zibs.nl/wiki/AddressInformation-v1.1(2020EN)"
Id: zib-addressinformation-v1.1-2020EN
Title: "zib AddressInformation-v1.1(2020EN)"
* AddressInformation -> "NL-CM:20.5.1" "AddressInformation"
  * Street -> "NL-CM:20.5.2" "Street"
  * HouseNumber -> "NL-CM:20.5.12" "HouseNumber"
  * HouseNumberLetter -> "NL-CM:20.5.11" "HouseNumberLetter"
  * HouseNumberAddition -> "NL-CM:20.5.10" "HouseNumberAddition"
  * HouseNumberIndication -> "NL-CM:20.5.9" "HouseNumberIndication"
  * Postcode -> "NL-CM:20.5.6" "Postcode"
  * PlaceOfResidence -> "NL-CM:20.5.3" "PlaceOfResidence"
  * Municipality -> "NL-CM:20.5.4" "Municipality"
  * Country -> "NL-CM:20.5.5" "Country"
  * AdditionalInformation -> "NL-CM:20.5.7" "AdditionalInformation"
  * AddressType -> "NL-CM:20.5.8" "AddressType"

Mapping: MedMijCoreLmHealthcareProviderMedMijCore-120
Source: MedMijCoreLmHealthcareProvider
Id: medmij-core-dataset-120-2026xxyy
Title: "Dataset MedMij R4 Core 1.2.0 2026xxyy"
* . -> "medmij-core-dataelement-45" "HealthcareProvider"
* HealthcareProviderIdentificationNumber -> "medmij-core-dataelement-46" "HealthcareProviderIdentificationNumber"
* OrganizationName -> "medmij-core-dataelement-47" "OrganizationName"
* DepartmentSpecialty -> "medmij-core-dataelement-48" "DepartmentSpecialty"
* ContactInformation -> "medmij-core-dataelement-49" "ContactInformation"
  * TelephoneNumbers -> "medmij-core-dataelement-50" "TelephoneNumbers"
    * TelephoneNumber -> "medmij-core-dataelement-51" "TelephoneNumber"
    * TelecomType -> "medmij-core-dataelement-52" "TelecomType"
    * NumberType -> "medmij-core-dataelement-53" "NumberType"
    * Comment -> "medmij-core-dataelement-54" "Comment"
  * EmailAddresses -> "medmij-core-dataelement-55" "EmailAddresses"
    * EmailAddress -> "medmij-core-dataelement-56" "EmailAddress"
    * EmailAddressType -> "medmij-core-dataelement-57" "EmailAddressType"
* AddressInformation -> "medmij-core-dataelement-58" "AddressInformation"
  * Street -> "medmij-core-dataelement-59" "Street"
  * HouseNumber -> "medmij-core-dataelement-60" "HouseNumber"
  * HouseNumberLetter -> "medmij-core-dataelement-61" "HouseNumberLetter"
  * HouseNumberAddition -> "medmij-core-dataelement-62" "HouseNumberAddition"
  * HouseNumberIndication -> "medmij-core-dataelement-63" "HouseNumberIndication"
  * Postcode -> "medmij-core-dataelement-64" "Postcode"
  * PlaceOfResidence -> "medmij-core-dataelement-65" "PlaceOfResidence"
  * Municipality -> "medmij-core-dataelement-66" "Municipality"
  * Country -> "medmij-core-dataelement-67" "Country"
  * AdditionalInformation -> "medmij-core-dataelement-68" "AdditionalInformation"
  * AddressType -> "medmij-core-dataelement-69" "AddressType"
* OrganizationType -> "medmij-core-dataelement-70" "OrganizationType"
* OrganizationLocation -> "medmij-core-dataelement-71" "OrganizationLocation"
  * LocationName -> "medmij-core-dataelement-72" "LocationName"
  * LocationNumber -> "medmij-core-dataelement-73" "LocationNumber"

Mapping: MedMijCoreLmHealthcareProviderSNOMED
Source: MedMijCoreLmHealthcareProvider
Target: "http://snomed.info/sct"
Id: SNOMED
Title: "SNOMED CT"
* . -> "257622000" "zorginstelling"