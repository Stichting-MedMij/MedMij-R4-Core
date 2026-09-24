// Logical Model for HealthProfessional

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
* HealthProfessionalIdentificationNumber 0..* Identifier "Health professional identification number" "The health professional identification number is a number that uniquely identifies the health professional.\n\nThe following numbers are used in the Netherlands:\n1. UZI Health Professionals. Identification of health professionals (people) in the Dutch healthcare industry.\n2. VEKTIS AGB-Z. Identifies health professionals and healthcare organizations.\n3. BIG-ID. The ID of the health professional listed in the BIG Register.\n\nThis information is not readily available for foreign health professionals."
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
  * LastName 0..1 BackboneElement "Last name" "Container of the LastName concept. This container contains all data elements of the LastName concept."
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
  * Postcode 0..1 string "Postcode" "Postcode of the address.\n\nIn Dutch addresses, preferably use the postcode from the Postcode table (OID: 2.16.840.1.113883.2.4.4.15)."
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
Id: medmij-core-dataset-120-20260923
Title: "Dataset MedMij R4 Core 1.2.0 20260923"
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