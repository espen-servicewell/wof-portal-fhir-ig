Instance: ITBHealthcareService
InstanceOf: ITBHealthcareService
Usage: #example
* contained[0] = adressId
* contained[1] = listId
* extension[0].url = "http://portal.wof.purified.link/fhir/StructureDefinition/extListReference"
* extension[0].valueReference = Reference(listId)
* extension[1].url = "http://portal.wof.purified.link/fhir/StructureDefinition/extUrlPlaceholder"
* extension[1].valueString = "http://portal.wof"
* identifier.value = "Colosseum Tannlege Nationaltheatret"
* active = true
* location = Reference(adressId)
* name = "colosseum-nationaltheatret"
* telecom.system = #phone
* telecom.value = "+4712345678"
* telecom.use = #work
* endpoint = Reference(Endpoint/fc580e7c-7fd8-4acd-92e9-42cb052763d4) "itbDev-colosseum-opus-nationaltheatret"

Instance: adressId
InstanceOf: Location
Usage: #inline
* address.use = #work
* address.text = "Stortingsgata 30"
* address.city = "Oslo"
* position.longitude = 10.729501
* position.latitude = 59.91475

Instance: listId
InstanceOf: List
Usage: #inline
* entry[+].extension.url = "http://portal.wof.purified.link/fhir/StructureDefinition/extPriceDefinition"
* entry[=].extension.valueString = "2.000 SEK"
* entry[=].item = Reference(ActivityDefinition/5e54aeb0-339d-49ed-af21-386f6ce0c730) "Dårlig Ånde"
* entry[+].extension.url = "http://portal.wof.purified.link/fhir/StructureDefinition/extPriceDefinition"
* entry[=].extension.valueString = "850 NOK"
* entry[=].item = Reference(ActivityDefinition/bcfafc6d-98df-4985-97ea-5ddd75fe858f) "Tannlegeskrekk"
* entry[+].extension.url = "http://portal.wof.purified.link/fhir/StructureDefinition/extPriceDefinition"
* entry[=].extension.valueString = "5 dollahs"
* entry[=].item = Reference(ActivityDefinition/30491f7e-786e-4f48-a555-982ee5828641) "Tannrens"
* status = #current
* mode = #working