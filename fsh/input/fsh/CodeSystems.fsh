// All custom CodeSystems used in MedMij R4 Core

CodeSystem: DataService_CS
Id: DataService
Title: "DataService CodeSystem."
Description: "Codes for the data services defined by MedMij. These codes for instance allow filtering on the context of the respective data services."
* insert DefaultNarrative
* ^identifier.use = #official
* ^identifier.system = $URI
* ^identifier.value = $DataServiceCodeSystemOID
* ^name = "DataService"
* ^status = #active
* ^experimental = false
* insert PublisherAndContact
* ^caseSensitive = false
* ^content = #complete
* ^count = 1
* #urn:oid:2.16.528.1.1023.5.7 "Provider Tasks"
  * ^designation[0].language = #nl-NL
  * ^designation[0].use = $SCT#900000000000013009 "Synonym"
  * ^designation[0].value = "Aanbiedertaken"