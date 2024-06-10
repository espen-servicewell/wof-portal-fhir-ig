Profile: ITBEndpoint
Parent: Endpoint
Title: "ITB Endpoint"
Description: "ITB Endpoint is used to handle  .."

* ^version = "1.0.0"

* extension contains
ITBSourceSystemUserId named extSourceSystemUserId 0..1 MS and
ExtEndpointStatusMessage named StatusMessage 0..1 MS

* id 1..1 MS
* id ^short = "Logical id of this artifact"

* address 1..1 MS
* address ^short = "" 

// Skall denna verkligen vara repititiv, isf öka kardinalitet?
* status 1..1 MS
* status ^short = "active | suspended | error | off | entered-in-error | test"
// Skall det vara en egen kod för Endpoint.status?

* name 0..1 MS
* name ^short = "A name that this endpoint can be identified by"

* header 0..* MS
* header ^short = "" 

* connectionType 1..1 MS
* connectionType ^short = ""

* payloadMimeType 0..* MS
* payloadMimeType ^short = ""

* payloadType 1..* MS
* payloadType ^short = ""

* identifier 0..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "identifier"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = ""
* identifier ^slicing.ordered = false

* identifier contains
IdentifierPrefix 0..1 MS and
DbContextId 0..1 MS

* identifier[IdentifierPrefix].system = "namingsystem/primarykey-prefix"
* identifier[IdentifierPrefix].value

* identifier[DbContextId].system = "namingsystem/sourcesystem-identifier" 
* identifier[DBContextId].value
* identifier[DbContextId].type.coding.code = #sourcesystem-identifier
* identifier[DbContextId].type.coding.system = "http://opusonfhir.wof.purified.link/CodeSystem/csIdentifierType"


Extension: ExtEndpointStatusMessage
Id: ExtEndpointStatusMessage
Title: "ExtEndpointStatusMessage"
Description: ""
Context: ITBEndpoint
* value[x] 1..1 MS
* value[x] only string