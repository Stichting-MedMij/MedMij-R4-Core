// All custom ValueSets used in MedMij R4 Core

ValueSet: ASAScore_VS
Id: ASAScore
Title: "ASAScore ValueSet."
Description: "ValueSet for the classification of physical condition according to American Society of Anaesthesiologists (ASA)."
* insert DefaultNarrative
* ^identifier.use = #official
* ^identifier.system = $URI
* ^identifier.value = $ASAScoreValueSetOID
* ^name = "ASAScore"
* ^status = #draft
* ^experimental = false
* insert PublisherAndContact
* $SCT#413495001 "ASA-score 1"
  * ^extension[http://hl7.org/fhir/StructureDefinition/valueset-concept-comments].valueString = "Gezonde patiënt"
* $SCT#413496000 "ASA-score 2"
  * ^extension[http://hl7.org/fhir/StructureDefinition/valueset-concept-comments].valueString = "Milde systemische aandoening zonder belemmering"
* $SCT#413497009 "ASA-score 3"
  * ^extension[http://hl7.org/fhir/StructureDefinition/valueset-concept-comments].valueString = "Ernstige systemische aandoening, beperking dagelijkse activiteit"
* $SCT#413498004 "ASA-score 4"
  * ^extension[http://hl7.org/fhir/StructureDefinition/valueset-concept-comments].valueString = "Ernstige invaliderende systeemaandoening, constante levensbedreiging"
* $SCT#413499007 "ASA-score 5"
  * ^extension[http://hl7.org/fhir/StructureDefinition/valueset-concept-comments].valueString = "Stervende, overlijden < 24 uur zonder ingreep"
* $SCT#413500003 "ASA-score 6"
  * ^extension[http://hl7.org/fhir/StructureDefinition/valueset-concept-comments].valueString = "Hersendood, Multi Orgaan Donatie"