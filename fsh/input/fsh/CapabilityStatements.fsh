// CapabilityStatements used in MedMij R4 Core

Instance: medmij-core-ASAScore-Retrieve
InstanceOf: CapabilityStatement
Usage: #definition
* insert DefaultNarrativeInstance
* name = "MedMij Core ASAScore Retrieve"
* status = #draft
* date = "2026-04-09"
* insert PublisherAndContactInstance
* description = "This CapabilityStatement describes the minimal requirements for a client to fulfill the 'Retrieve ASA score' transaction within MedMij R4 Core."
* purpose = "This CapabilityStatement is informative in nature and does not represent the minimum or maximum set of capabilities the client or server should support. The aim is to design the CapabilityStatement as complete as possible, however for the exact set of capabilities the implementation guide should be consulted."
* insert CopyrightInstance
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json
* rest
  * mode = #client
  * documentation = "Minimal requirements for a client to fulfill the 'Retrieve ASA score' transaction (system role: MMC-ASR-beta.2)."
  * resource[+]
    * type = #Observation
    * supportedProfile = "http://medmij.nl/fhir/StructureDefinition/medmij-core-ASAScore"
    * interaction
      * code = #search-type
    * searchParam
      * name = "code"
      * type = #token
  * resource[+]
    * type = #Patient
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server includes this (secondary) resource in the Bundle, the client does not need to execute a `read`. However, since a server may choose to not include it in the Bundle, support of the `read` interaction is mandatory for a client."
  * resource[+]
    * type = #PractitionerRole
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server includes this (secondary) resource in the Bundle, the client does not need to execute a `read`. However, since a server may choose to not include it in the Bundle, support of the `read` interaction is mandatory for a client."
  * resource[+]
    * type = #Practitioner
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-Practitioner"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server includes this (secondary) resource in the Bundle, the client does not need to execute a `read`. However, since a server may choose to not include it in the Bundle, support of the `read` interaction is mandatory for a client."
  * resource[+]
    * type = #Organization
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthcareProvider-Organization"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server includes this (secondary) resource in the Bundle, the client does not need to execute a `read`. However, since a server may choose to not include it in the Bundle, support of the `read` interaction is mandatory for a client."
  * resource[+]
    * type = #Location
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthcareProvider"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server includes this (secondary) resource in the Bundle, the client does not need to execute a `read`. However, since a server may choose to not include it in the Bundle, support of the `read` interaction is mandatory for a client."
  * interaction
    * code = #search-system

Instance: medmij-core-ASAScore-Serve
InstanceOf: CapabilityStatement
Usage: #definition
* insert DefaultNarrativeInstance
* name = "MedMij Core ASAScore Serve"
* status = #draft
* date = "2026-04-09"
* insert PublisherAndContactInstance
* description = "This CapabilityStatement describes the minimal requirements for a server to fulfill the 'Serve ASA score' transaction within MedMij R4 Core."
* purpose = "This CapabilityStatement is informative in nature and does not represent the minimum or maximum set of capabilities the client or server should support. The aim is to design the CapabilityStatement as complete as possible, however for the exact set of capabilities the implementation guide should be consulted."
* insert CopyrightInstance
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json
* rest
  * mode = #server
  * documentation = "Minimal requirements for a server to fulfill the 'Serve ASA score' transaction (system role: MMC-ASB-beta.2)."
  * resource[+]
    * type = #Observation
    * supportedProfile = "http://medmij.nl/fhir/StructureDefinition/medmij-core-ASAScore"
    * interaction
      * code = #search-type
    * searchParam
      * name = "code"
      * type = #token
  * resource[+]
    * type = #Patient
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server always includes this (secondary) resource in the Bundle, support of the `read` interaction is optional."
  * resource[+]
    * type = #PractitionerRole
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server always includes this (secondary) resource in the Bundle, support of the `read` interaction is optional."
  * resource[+]
    * type = #Practitioner
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-Practitioner"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server always includes this (secondary) resource in the Bundle, support of the `read` interaction is optional."
  * resource[+]
    * type = #Organization
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthcareProvider-Organization"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server always includes this (secondary) resource in the Bundle, support of the `read` interaction is optional."
  * resource[+]
    * type = #Location
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthcareProvider"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server always includes this (secondary) resource in the Bundle, support of the `read` interaction is optional."
  * interaction
    * code = #search-system

Instance: medmij-core-Encounter-Retrieve
InstanceOf: CapabilityStatement
Usage: #definition
* insert DefaultNarrativeInstance
* name = "MedMij Core Encounter Retrieve"
* status = #draft
* date = "2026-04-09"
* insert PublisherAndContactInstance
* description = "This CapabilityStatement describes the minimal requirements for a client to fulfill the 'Retrieve Encounter' transaction within MedMij R4 Core."
* purpose = "This CapabilityStatement is informative in nature and does not represent the minimum or maximum set of capabilities the client or server should support. The aim is to design the CapabilityStatement as complete as possible, however for the exact set of capabilities the implementation guide should be consulted."
* insert CopyrightInstance
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json
* rest
  * mode = #client
  * documentation = "Minimal requirements for a client to fulfill the 'Retrieve Encounter' transaction (system role: MMC-ENR-zib2020/R4-beta.2)."
  * resource[+]
    * type = #Encounter
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-Encounter"
    * interaction
      * code = #search-type
  * resource[+]
    * type = #Patient
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server includes this (secondary) resource in the Bundle, the client does not need to execute a `read`. However, since a server may choose to not include it in the Bundle, support of the `read` interaction is mandatory for a client."
  * resource[+]
    * type = #PractitionerRole
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server includes this (secondary) resource in the Bundle, the client does not need to execute a `read`. However, since a server may choose to not include it in the Bundle, support of the `read` interaction is mandatory for a client."
  * resource[+]
    * type = #Practitioner
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-Practitioner"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server includes this (secondary) resource in the Bundle, the client does not need to execute a `read`. However, since a server may choose to not include it in the Bundle, support of the `read` interaction is mandatory for a client."
  * resource[+]
    * type = #Organization
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthcareProvider-Organization"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server includes this (secondary) resource in the Bundle, the client does not need to execute a `read`. However, since a server may choose to not include it in the Bundle, support of the `read` interaction is mandatory for a client."
  * resource[+]
    * type = #Location
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthcareProvider"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server includes this (secondary) resource in the Bundle, the client does not need to execute a `read`. However, since a server may choose to not include it in the Bundle, support of the `read` interaction is mandatory for a client."
  * resource[+]
    * type = #Condition
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-Problem"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server includes this (secondary) resource in the Bundle, the client does not need to execute a `read`. However, since a server may choose to not include it in the Bundle, support of the `read` interaction is mandatory for a client."
  * resource[+]
    * type = #Procedure
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-Procedure-event"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server includes this (secondary) resource in the Bundle, the client does not need to execute a `read`. However, since a server may choose to not include it in the Bundle, support of the `read` interaction is mandatory for a client."
  * interaction
    * code = #search-system

Instance: medmij-core-Encounter-Serve
InstanceOf: CapabilityStatement
Usage: #definition
* insert DefaultNarrativeInstance
* name = "MedMij Core Encounter Serve"
* status = #draft
* date = "2026-04-09"
* insert PublisherAndContactInstance
* description = "This CapabilityStatement describes the minimal requirements for a server to fulfill the 'Serve Encounter' transaction within MedMij R4 Core."
* purpose = "This CapabilityStatement is informative in nature and does not represent the minimum or maximum set of capabilities the client or server should support. The aim is to design the CapabilityStatement as complete as possible, however for the exact set of capabilities the implementation guide should be consulted."
* insert CopyrightInstance
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json
* rest
  * mode = #server
  * documentation = "Minimal requirements for a server to fulfill the 'Serve Encounter' transaction (system role: MMC-ENB-zib2020/R4-beta.2)."
  * resource[+]
    * type = #Encounter
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-Encounter"
    * interaction
      * code = #search-type
  * resource[+]
    * type = #Patient
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server always includes this (secondary) resource in the Bundle, support of the `read` interaction is optional."
  * resource[+]
    * type = #PractitionerRole
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server always includes this (secondary) resource in the Bundle, support of the `read` interaction is optional."
  * resource[+]
    * type = #Practitioner
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-Practitioner"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server always includes this (secondary) resource in the Bundle, support of the `read` interaction is optional."
  * resource[+]
    * type = #Organization
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthcareProvider-Organization"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server always includes this (secondary) resource in the Bundle, support of the `read` interaction is optional."
  * resource[+]
    * type = #Location
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthcareProvider"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server always includes this (secondary) resource in the Bundle, support of the `read` interaction is optional."
  * resource[+]
    * type = #Condition
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-Problem"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server always includes this (secondary) resource in the Bundle, support of the `read` interaction is optional."
  * resource[+]
    * type = #Procedure
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-Procedure-event"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server always includes this (secondary) resource in the Bundle, support of the `read` interaction is optional."
  * interaction
    * code = #search-system

Instance: medmij-core-Patient-Retrieve
InstanceOf: CapabilityStatement
Usage: #definition
* insert DefaultNarrativeInstance
* name = "MedMij Core Patient Retrieve"
* status = #draft
* date = "2026-04-09"
* insert PublisherAndContactInstance
* description = "This CapabilityStatement describes the minimal requirements for a client to fulfill the 'Retrieve Patient' transaction within MedMij R4 Core."
* purpose = "This CapabilityStatement is informative in nature and does not represent the minimum or maximum set of capabilities the client or server should support. The aim is to design the CapabilityStatement as complete as possible, however for the exact set of capabilities the implementation guide should be consulted."
* insert CopyrightInstance
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json
* rest
  * mode = #client
  * documentation = "Minimal requirements for a client to fulfill the 'Retrieve Patient' transaction (system role: MMC-PTR-zib2020/R4-beta.2)."
  * resource[+]
    * type = #Patient
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient"
    * interaction
      * code = #search-type
  * resource[+]
    * type = #PractitionerRole
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server includes this (secondary) resource in the Bundle, the client does not need to execute a `read`. However, since a server may choose to not include it in the Bundle, support of the `read` interaction is mandatory for a client."
  * resource[+]
    * type = #Practitioner
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-Practitioner"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server includes this (secondary) resource in the Bundle, the client does not need to execute a `read`. However, since a server may choose to not include it in the Bundle, support of the `read` interaction is mandatory for a client."
  * resource[+]
    * type = #Organization
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthcareProvider-Organization"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server includes this (secondary) resource in the Bundle, the client does not need to execute a `read`. However, since a server may choose to not include it in the Bundle, support of the `read` interaction is mandatory for a client."
  * resource[+]
    * type = #Location
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthcareProvider"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server includes this (secondary) resource in the Bundle, the client does not need to execute a `read`. However, since a server may choose to not include it in the Bundle, support of the `read` interaction is mandatory for a client."
  * resource[+]
    * type = #RelatedPerson
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-ContactPerson"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server includes this (secondary) resource in the Bundle, the client does not need to execute a `read`. However, since a server may choose to not include it in the Bundle, support of the `read` interaction is mandatory for a client."
  * interaction
    * code = #search-system

Instance: medmij-core-Patient-Serve
InstanceOf: CapabilityStatement
Usage: #definition
* insert DefaultNarrativeInstance
* name = "MedMij Core Patient Serve"
* status = #draft
* date = "2026-04-09"
* insert PublisherAndContactInstance
* description = "This CapabilityStatement describes the minimal requirements for a server to fulfill the 'Serve Patient' transaction within MedMij R4 Core."
* purpose = "This CapabilityStatement is informative in nature and does not represent the minimum or maximum set of capabilities the client or server should support. The aim is to design the CapabilityStatement as complete as possible, however for the exact set of capabilities the implementation guide should be consulted."
* insert CopyrightInstance
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json
* rest
  * mode = #server
  * documentation = "Minimal requirements for a server to fulfill the 'Serve Patient' transaction (system role: MMC-PTB-zib2020/R4-beta.2)."
  * resource[+]
    * type = #Patient
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient"
    * interaction
      * code = #search-type
  * resource[+]
    * type = #PractitionerRole
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server always includes this (secondary) resource in the Bundle, support of the `read` interaction is optional."
  * resource[+]
    * type = #Practitioner
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-Practitioner"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server always includes this (secondary) resource in the Bundle, support of the `read` interaction is optional."
  * resource[+]
    * type = #Organization
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthcareProvider-Organization"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server always includes this (secondary) resource in the Bundle, support of the `read` interaction is optional."
  * resource[+]
    * type = #Location
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthcareProvider"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server always includes this (secondary) resource in the Bundle, support of the `read` interaction is optional."
  * resource[+]
    * type = #RelatedPerson
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-ContactPerson"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server always includes this (secondary) resource in the Bundle, support of the `read` interaction is optional."
  * interaction
    * code = #search-system

Instance: medmij-core-Payer-Retrieve
InstanceOf: CapabilityStatement
Usage: #definition
* insert DefaultNarrativeInstance
* name = "MedMij Core Payer Retrieve"
* status = #draft
* date = "2026-04-09"
* insert PublisherAndContactInstance
* description = "This CapabilityStatement describes the minimal requirements for a client to fulfill the 'Retrieve Payer' transaction within MedMij R4 Core."
* purpose = "This CapabilityStatement is informative in nature and does not represent the minimum or maximum set of capabilities the client or server should support. The aim is to design the CapabilityStatement as complete as possible, however for the exact set of capabilities the implementation guide should be consulted."
* insert CopyrightInstance
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json
* rest
  * mode = #client
  * documentation = "Minimal requirements for a client to fulfill the 'Retrieve Payer' transaction (system role: MMC-PAR-zib2020/R4-beta.2)."
  * resource[+]
    * type = #Coverage
    * supportedProfile[0] = "http://nictiz.nl/fhir/StructureDefinition/nl-core-Payer.PayerPerson"
    * supportedProfile[1] = "http://nictiz.nl/fhir/StructureDefinition/nl-core-Payer.InsuranceCompany"
    * interaction
      * code = #search-type
  * resource[+]
    * type = #Patient
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server includes this (secondary) resource in the Bundle, the client does not need to execute a `read`. However, since a server may choose to not include it in the Bundle, support of the `read` interaction is mandatory for a client."
  * resource[+]
    * type = #Organization
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-Payer-Organization"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server includes this (secondary) resource in the Bundle, the client does not need to execute a `read`. However, since a server may choose to not include it in the Bundle, support of the `read` interaction is mandatory for a client."
  * resource[+]
    * type = #RelatedPerson
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-ContactPerson"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server includes this (secondary) resource in the Bundle, the client does not need to execute a `read`. However, since a server may choose to not include it in the Bundle, support of the `read` interaction is mandatory for a client."
  * interaction
    * code = #search-system

Instance: medmij-core-Payer-Serve
InstanceOf: CapabilityStatement
Usage: #definition
* insert DefaultNarrativeInstance
* name = "MedMij Core Payer Serve"
* status = #draft
* date = "2026-04-09"
* insert PublisherAndContactInstance
* description = "This CapabilityStatement describes the minimal requirements for a server to fulfill the 'Serve Payer' transaction within MedMij R4 Core."
* purpose = "This CapabilityStatement is informative in nature and does not represent the minimum or maximum set of capabilities the client or server should support. The aim is to design the CapabilityStatement as complete as possible, however for the exact set of capabilities the implementation guide should be consulted."
* insert CopyrightInstance
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json
* rest
  * mode = #server
  * documentation = "Minimal requirements for a server to fulfill the 'Serve Payer' transaction (system role: MMC-PAB-zib2020/R4-beta.2)."
  * resource[+]
    * type = #Coverage
    * supportedProfile[0] = "http://nictiz.nl/fhir/StructureDefinition/nl-core-Payer.PayerPerson"
    * supportedProfile[1] = "http://nictiz.nl/fhir/StructureDefinition/nl-core-Payer.InsuranceCompany"
    * interaction
      * code = #search-type
  * resource[+]
    * type = #Patient
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server always includes this (secondary) resource in the Bundle, support of the `read` interaction is optional."
  * resource[+]
    * type = #Organization
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-Payer-Organization"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server always includes this (secondary) resource in the Bundle, support of the `read` interaction is optional."
  * resource[+]
    * type = #RelatedPerson
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-ContactPerson"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server always includes this (secondary) resource in the Bundle, support of the `read` interaction is optional."
  * interaction
    * code = #search-system

Instance: medmij-core-TreatmentObjective-Retrieve
InstanceOf: CapabilityStatement
Usage: #definition
* insert DefaultNarrativeInstance
* name = "MedMij Core TreatmentObjective Retrieve"
* status = #draft
* date = "2026-04-09"
* insert PublisherAndContactInstance
* description = "This CapabilityStatement describes the minimal requirements for a client to fulfill the 'Retrieve Treatment objective' transaction within MedMij R4 Core."
* purpose = "This CapabilityStatement is informative in nature and does not represent the minimum or maximum set of capabilities the client or server should support. The aim is to design the CapabilityStatement as complete as possible, however for the exact set of capabilities the implementation guide should be consulted."
* insert CopyrightInstance
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json
* rest
  * mode = #client
  * documentation = "Minimal requirements for a client to fulfill the 'Retrieve Treatment objective' transaction (system role: MMC-TOR-zib2020/R4-beta.2)."
  * resource[+]
    * type = #Goal
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-TreatmentObjective"
    * interaction
      * code = #search-type
  * resource[+]
    * type = #DeviceUseStatement
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-MedicalDevice"
    * documentation = "This is a secondary resource that needs to be resolvable by explicitly including it in the Bundle, as it is not possible for the client to retrieve the corresponding DeviceUseStatement from the Goal via a `read` (since the DeviceUseStatement references the Goal)."
  * resource[+]
    * type = #Device
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-MedicalDevice.Product"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server includes this (secondary) resource in the Bundle, the client does not need to execute a `read`. However, since a server may choose to not include it in the Bundle, support of the `read` interaction is mandatory for a client."
  * resource[+]
    * type = #Patient
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server includes this (secondary) resource in the Bundle, the client does not need to execute a `read`. However, since a server may choose to not include it in the Bundle, support of the `read` interaction is mandatory for a client."
  * resource[+]
    * type = #Condition
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-Problem"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server includes this (secondary) resource in the Bundle, the client does not need to execute a `read`. However, since a server may choose to not include it in the Bundle, support of the `read` interaction is mandatory for a client."
  * interaction
    * code = #search-system

Instance: medmij-core-TreatmentObjective-Serve
InstanceOf: CapabilityStatement
Usage: #definition
* insert DefaultNarrativeInstance
* name = "MedMij Core TreatmentObjective Serve"
* status = #draft
* date = "2026-04-09"
* insert PublisherAndContactInstance
* description = "This CapabilityStatement describes the minimal requirements for a server to fulfill the 'Serve Treatment objective' transaction within MedMij R4 Core."
* purpose = "This CapabilityStatement is informative in nature and does not represent the minimum or maximum set of capabilities the client or server should support. The aim is to design the CapabilityStatement as complete as possible, however for the exact set of capabilities the implementation guide should be consulted."
* insert CopyrightInstance
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json
* rest
  * mode = #server
  * documentation = "Minimal requirements for a server to fulfill the 'Serve Treatment objective' transaction (system role: MMC-TOB-zib2020/R4-beta.2)."
  * resource[+]
    * type = #Goal
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-TreatmentObjective"
    * interaction
      * code = #search-type
  * resource[+]
    * type = #DeviceUseStatement
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-MedicalDevice"
    * documentation = "This is a secondary resource that needs to be resolvable by explicitly including it in the Bundle, as it is not possible for the client to retrieve the corresponding DeviceUseStatement from the Goal via a `read` (since the DeviceUseStatement references the Goal)."
  * resource[+]
    * type = #Device
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-MedicalDevice.Product"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server always includes this (secondary) resource in the Bundle, support of the `read` interaction is optional."
  * resource[+]
    * type = #Patient
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server always includes this (secondary) resource in the Bundle, support of the `read` interaction is optional."
  * resource[+]
    * type = #Condition
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-Problem"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server always includes this (secondary) resource in the Bundle, support of the `read` interaction is optional."
  * interaction
    * code = #search-system