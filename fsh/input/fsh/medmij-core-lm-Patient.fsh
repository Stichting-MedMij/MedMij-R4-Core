// Logical Model for Patient

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
* ^status = #active
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
  * LastName 0..1 BackboneElement "Last name" "Container of the LastName concept. This container contains all data elements of the LastName concept."
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
  * Postcode 0..1 string "Postcode" "Postcode of the address.\n\nIn Dutch addresses, preferably use the postcode from the Postcode table (OID: 2.16.840.1.113883.2.4.4.15). "
    * ^alias = "Postcode"
  * PlaceOfResidence 0..1 string "Place of residence" "A geographically determined area which forms part of the municipal area.\n\nFor Dutch places of residence, preferably use the name from the GBA, table 33 (OID: 2.16.840.1.113883.2.4.6.14)."
    * ^alias = "Woonplaats"
  * Municipality 0..1 string "Municipality" "Municipality of residence.\n\nFor Dutch municipalities, preferably use the name from the GBA, table 33 (OID: 2.16.840.1.113883.2.4.6.14)."
    * ^alias = "Gemeente"
  * Country 0..1 CodeableConcept "Country" "Country in which the address is located."
  * Country from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.121.11.10--20200901000000 (required)
    * ^alias = "Land"
  * AdditionalInformation 0..1 string "Additional information" "Extra information such as the building name, building number, entrance, route number."
    * ^alias = "AdditioneleInformatie"
  * AddressType 0..1 CodeableConcept "Address type" "The type of address in question, such as a home address or mailing address."
  * AddressType from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.20.5.3--20200901000000 (extensible)
    * ^alias = "AdresSoort"
* ContactInformation 0..1 BackboneElement "Contact information" "Patient's telephone number(s) or e-mail address(es)."
  * ^alias = "Contactgegevens"
  * TelephoneNumbers 0..* BackboneElement "Telephone numbers" "Container of the TelephoneNumbers concept. This container contains all data elements of the TelephoneNumbers concept."
    * ^alias = "Telefoonnummers"
    * TelephoneNumber 1..1 string "Telephone number" "The patient's telephone number."
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
    * EmailAddress 1..1 string "E-mail address" "The patient's e-mail address."
      * ^alias = "EmailAdres"
    * EmailAddressType 0..1 CodeableConcept "E-mail address type" "The e-mail address type indicates whether it is a private or business e-mail address."
    * EmailAddressType from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.20.6.3--20200901000000 (extensible)
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
Id: medmij-core-dataset-120-20260923
Title: "Dataset MedMij R4 Core 1.2.0 20260923"
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