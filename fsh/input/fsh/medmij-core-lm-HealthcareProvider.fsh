// Logical Model for HealthcareProvider

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
* OrganizationType 0..1 CodeableConcept "Organization type" "The type of healthcare provider, such as general hospital, or nursing home. If this field is filled in and an AGB code is used for the HealthcareProviderIdentificationNumber, the type must match the type implicitly contained in the AGB code."
* OrganizationType from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3--20200901000000 (extensible)
  * ^alias = "OrganisatieType"
* OrganizationLocation 0..1 BackboneElement "Organization location" "Container of the OrganizationLocation concept. This container contains all data elements of the OrganizationLocation concept."
  * ^alias = "OrganisatieLocatie"
  * LocationName 0..1 string "Location name" "Name of the location, in case a healthcare organization has more than one location."
    * ^alias = "LocatieNaam"
  * LocationNumber 0..1 integer "Location number" "Number of the location, if a numerical location identification is used next to or instead of a location name."
    * ^alias = "LocatieNummer"

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
Id: medmij-core-dataset-120-20260923
Title: "Dataset MedMij R4 Core 1.2.0 20260923"
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