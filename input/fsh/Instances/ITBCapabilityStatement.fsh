Alias: $usage-context-type = http://terminology.hl7.org/CodeSystem/usage-context-type
Alias: $variant-state = http://terminology.hl7.org/CodeSystem/variant-state
Alias: $restful-security-service = http://terminology.hl7.org/CodeSystem/restful-security-service
Alias: $message-transport = http://terminology.hl7.org/CodeSystem/message-transport

Instance: ITBCapabilityStatement
InstanceOf: CapabilityStatement
Usage: #definition
* url = "http://portal.wof.purified.link/fhir/CapabilityStatement"
* version = "0.1"
* name = "ITB"
* title = "ITB capability statement"
* status = #draft
* experimental = true
* date = "2021-06-22"
* publisher = "Service Well"
* contact.name = "System Administrator"
* contact.telecom.system = #email
* contact.telecom.value = "kontakt@servicewell.se"
* description = "This is the FHIR capability statement for the ITB interface"
* useContext.code = $usage-context-type#focus
* useContext.valueCodeableConcept = $variant-state#positive
//* jurisdiction = 
* purpose = "ITB capability statement, published for contracting and operational support"
* copyright = "Copyright © Service Well AB"
* kind = #instance
* instantiates = "http://ihe.org/fhir/CapabilityStatement/pixm-client"
* software.name = "ITB"
* software.version = "0.0.0"
* software.releaseDate = "2021-09-01"
* implementation.description = "WOF"
* implementation.url = ""
* fhirVersion = #4.0.1
* format[+] = #json
* patchFormat[+] = #application/json-patch+json
* implementationGuide = "https://build.fhir.org/ig/barbrov/wof-portal-fhir-ig/"
* rest.mode = #server
* rest.documentation = "Main FHIR endpoint for ITB"
* rest.security.cors = true
* rest.security.service = $restful-security-service#SMART-on-FHIR
* rest.security.description = "See Smart on FHIR documentation"
* rest.resource[+].type = #ITBActivityDefinition
* rest.resource[=].supportedProfile = "http://portal.wof.purified.link/fhir/StructureDefinition/ITBActivityDefinition"
// * rest.resource[=].profile = ""
* rest.resource[=].documentation = "https://build.fhir.org/ig/servicewell/wof-portal-fhir-ig/StructureDefinition-ITBActivityDefinition.html"
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #vread
//* rest.resource[=].interaction[=].documentation = ""
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #history-instance
* rest.resource[=].interaction[+].code = #history-type
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].versioning = #versioned-update
* rest.resource[=].readHistory = true
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = true
* rest.resource[=].conditionalRead = #full-support
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
//* rest.resource[=].searchInclude = "Organization"
//* rest.resource[=].searchRevInclude = "Person"
//* rest.resource[=].searchParam[+].name = "identifier"
//* rest.resource[=].searchParam.definition = "http://hl7.org/fhir/SearchParameter/Patient-identifier"
//* rest.resource[=].searchParam.type = #token
//* rest.resource[=].searchParam.documentation = "Only supports search by institution MRN"
//* rest.resource[=].searchParam.name = "general-practitioner"

// TODO: Should the type be Appointment or ITBAppointment?
* rest.resource[+].type = #ITBAppointment
* rest.resource[=].profile = "http://portal.wof.purified.link/fhir/StructureDefinition/ITBAppointment"
//* rest.resource[=].supportedProfile = ""
* rest.resource[=].documentation = "URL for Documentation to be added"
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #vread
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #history-instance
* rest.resource[=].interaction[+].code = #history-type
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].searchParam[+].name = "actor"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for example for a HealtCareService referenced as actor."
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for patient referenced by the Appointment."

// 
* rest.resource[+].type = #ITBAppointmentResponse
* rest.resource[=].profile = "http://portal.wof.purified.link/fhir/StructureDefinition/ITBAppointmentResponse"
//* rest.resource[=].supportedProfile = ""
* rest.resource[=].documentation = "URL for Documentation to be added"
* rest.resource[=].interaction[+].code = #create

// 
* rest.resource[+].type = #ITBEndPoint
* rest.resource[=].profile = "http://portal.wof.purified.link/fhir/StructureDefinition/ITBEndpoint"
//* rest.resource[=].supportedProfile = ""
* rest.resource[=].documentation = "URL for Documentation to be added"
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #vread

// 
* rest.resource[+].type = #ITBHealthcareService
* rest.resource[=].profile = "http://portal.wof.purified.link/fhir/StructureDefinition/ITBHealthcareService"
//* rest.resource[=].supportedProfile = ""
* rest.resource[=].documentation = "URL for Documentation to be added"
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #vread
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #delete
* rest.resource[=].interaction[+].code = #history-instance
* rest.resource[=].interaction[+].code = #history-type
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].searchParam[+].name = "endpoint"
* rest.resource[=].searchParam.type = #reference
* rest.resource[=].searchParam.documentation = "Endpoint id must be of type guid"

// 
* rest.resource[+].type = #ITBOrganization
* rest.resource[=].profile = "http://portal.wof.purified.link/fhir/StructureDefinition/ITBOrganization"
//* rest.resource[=].supportedProfile = ""
* rest.resource[=].documentation = "URL for Documentation to be added"
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #vread

// 
* rest.resource[+].type = #ITBPatient
* rest.resource[=].profile = "http://portal.wof.purified.link/fhir/StructureDefinition/ITBPatient"
//* rest.resource[=].supportedProfile = ""
* rest.resource[=].documentation = "URL for Documentation to be added"
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #vread

// 
* rest.resource[+].type = #ITBPractitioner
* rest.resource[=].profile = "http://portal.wof.purified.link/fhir/StructureDefinition/ITBPractitioner"
//* rest.resource[=].supportedProfile = ""
* rest.resource[=].documentation = "URL for Documentation to be added"
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #vread

// 
* rest.resource[+].type = #ITBPractitionerRole
* rest.resource[=].profile = "http://portal.wof.purified.link/fhir/StructureDefinition/ITBPractitionerRole"
//* rest.resource[=].supportedProfile = ""
* rest.resource[=].documentation = "https://build.fhir.org/ig/servicewell/wof-portal-fhir-ig/StructureDefinition-ITBPractitionerRole.html"
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #vread
* rest.resource[=].searchParam[+].name = "service"
* rest.resource[=].searchParam.type = #reference
* rest.resource[=].searchParam.documentation = "Search for a referenced HealthCareService"

// 
* rest.resource[=].type = #ITBSchedule
* rest.resource[=].profile = "http://portal.wof.purified.link/fhir/StructureDefinition/ITBSchedule"
//* rest.resource[=].supportedProfile = ""
* rest.resource[=].documentation = "https://build.fhir.org/ig/servicewell/wof-portal-fhir-ig/StructureDefinition-ITBSchedule.html"
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #vread
* rest.resource[=].searchParam[+].name = "actor"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for example for a HealtCareService or PractitionerRole referenced in actor."
* rest.resource[=].searchParam[+].name = "service-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Search for Schedules with specified service-type"
* rest.resource[=].searchParam[+].name = "_sort"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Specify search order for results"

// 
* rest.resource[+].type = #ITBSlot
* rest.resource[=].profile = "http://portal.wof.purified.link/fhir/StructureDefinition/ITBSlot"
//* rest.resource[=].supportedProfile = ""
* rest.resource[=].documentation = "https://build.fhir.org/ig/servicewell/wof-portal-fhir-ig/StructureDefinition-ITBSlot.html"
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #vread
* rest.resource[=].searchParam[+].name = "schedule"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search for Slots with reference to specified Schedule."
* rest.resource[=].searchParam[+].name = "service-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Search for Slots with specified service-type"
* rest.resource[=].searchParam[+].name = "start"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Specify search order for results"

//* rest.resource[+].type = #ValueSet
//* rest.resource[=].documentation = ""
//* rest.resource[=].interaction[+].code = #read
//* rest.resource[=].interaction[+].code = #vread
//* rest.resource[=].searchInclude = ""
//* rest.resource[=].searchRevInclude = ""
//* rest.resource[=].searchParam[+].name = "url"
//* rest.resource[=].searchParam.definition = "http://hl7.org/fhir/SearchParameter/Patient-identifier"
//* rest.resource[=].searchParam.type = #uri
//* rest.resource[=].searchParam.documentation = ""



//* rest.interaction[+].code = #transaction
//* rest.interaction[+].code = #history-system
//* rest.compartment = "http://hl7.org/fhir/CompartmentDefinition/patient"
//* messaging.endpoint.protocol = $message-transport#mllp
//* messaging.endpoint.address = "mllp:10.1.1.10:9234"
//* messaging.reliableCache = 30
//* messaging.documentation = "ADT A08 equivalent for external system notifications"
//* messaging.supportedMessage.mode = #receiver
//* messaging.supportedMessage.definition = "MessageDefinition/example"
//* document.mode = #consumer
//* document.documentation = "Basic rules for all documents in the EHR system"
//* document.profile = "http://fhir.hl7.org/base/Profilebc054d23-75e1-4dc6-aca5-838b6b1ac81d/_history/b5fdd9fc-b021-4ea1-911a-721a60663796"