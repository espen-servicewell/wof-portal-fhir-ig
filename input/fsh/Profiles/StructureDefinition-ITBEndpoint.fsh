Profile: ITBEndpoint
Parent: Endpoint
Title: "ITB Endpoint"
Description: "ITB Endpoint is used to handle  .."

* extension 
contains ITBSourceSystemUserId named extSourceSystemUserId 0..1 MS

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
//* connectionType.coding.system = http://terminology.hl7.org/CodeSystem/endpoint-connection-type
//* connectionType.coding.display = "hl7-fhir-rest"

* payloadMimeType 0..* MS
* payloadMimeType ^short = ""

* payloadType 1..* MS
* payloadType ^short = ""

// Behöver dessa hanteras här
//* identifierPrefix
//* dbContextId