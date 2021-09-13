Alias: $endpoint-connection-type = http://terminology.hl7.org/CodeSystem/endpoint-connection-type
Alias: $resource-types = http://hl7.org/fhir/resource-types
Instance: OpusEndpointExample
InstanceOf: ITBEndpoint
Usage: #example

* meta.versionId = "1"
* meta.lastUpdated = "2021-03-13T14:33:11.391+00:00"
* identifier[0].system = "http://swcloud.fhir.link:8081/namingsystem/endpoint-identifier"
* identifier[=].value = "itbDev-colosseum-opus-sandvika"
* identifier[+].system = "http://swcloud.fhir.link:8081/namingsystem/primarykey-sufix"
* identifier[=].value = "-003"
* status = #active
* connectionType = $endpoint-connection-type#hl7-fhir-rest
* name = "FhirDataBaseEndPoint"
* payloadType[0] = $resource-types#Practitioner
* payloadType[+] = $resource-types#Patient
* payloadMimeType = #application/fhir+xml
* address = "http://swcloud.fhir.link:8081"
* header = "bearer-code itbDev-colosseum-opus-sandvika" 