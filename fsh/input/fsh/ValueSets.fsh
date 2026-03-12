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
  * ^designation[0].language = #nl-NL
  * ^designation[0].use = $SCT#900000000000013009 "Synonym"
  * ^designation[0].value = "Gezonde patiënt"
  * ^designation[1].language = #en-US
  * ^designation[1].use = $SCT#900000000000013009 "Synonym"
  * ^designation[1].value = "A normal healthy patient"
* $SCT#413496000 "ASA-score 2"
  * ^designation[0].language = #nl-NL
  * ^designation[0].use = $SCT#900000000000013009 "Synonym"
  * ^designation[0].value = "Milde systemische aandoening zonder belemmering"
  * ^designation[1].language = #en-US
  * ^designation[1].use = $SCT#900000000000013009 "Synonym"
  * ^designation[1].value = "A patient with mild systemic disease"
* $SCT#413497009 "ASA-score 3"
  * ^designation[0].language = #nl-NL
  * ^designation[0].use = $SCT#900000000000013009 "Synonym"
  * ^designation[0].value = "Ernstige systemische aandoening, beperking dagelijkse activiteit"
  * ^designation[1].language = #en-US
  * ^designation[1].use = $SCT#900000000000013009 "Synonym"
  * ^designation[1].value = "A patient with severe systemic disease"
* $SCT#413498004 "ASA-score 4"
  * ^designation[0].language = #nl-NL
  * ^designation[0].use = $SCT#900000000000013009 "Synonym"
  * ^designation[0].value = "Ernstige invaliderende systeemaandoening, constante levensbedreiging"
  * ^designation[1].language = #en-US
  * ^designation[1].use = $SCT#900000000000013009 "Synonym"
  * ^designation[1].value = "A patient with severe systemic disease that is a constant threat to life"
* $SCT#413499007 "ASA-score 5"
  * ^designation[0].language = #nl-NL
  * ^designation[0].use = $SCT#900000000000013009 "Synonym"
  * ^designation[0].value = "Stervende, overlijden < 24 uur zonder ingreep"
  * ^designation[1].language = #en-US
  * ^designation[1].use = $SCT#900000000000013009 "Synonym"
  * ^designation[1].value = "A moribund patient who is not expected to survive without the operation"
* $SCT#413500003 "ASA-score 6"
  * ^designation[0].language = #nl-NL
  * ^designation[0].use = $SCT#900000000000013009 "Synonym"
  * ^designation[0].value = "Hersendood, Multi Orgaan Donatie"
  * ^designation[1].language = #en-US
  * ^designation[1].use = $SCT#900000000000013009 "Synonym"
  * ^designation[1].value = "A declared brain-dead patient whose organs are being removed for donor purposes"