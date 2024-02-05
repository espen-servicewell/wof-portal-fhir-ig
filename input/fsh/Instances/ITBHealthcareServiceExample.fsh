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
* telecom.value = "+47123xxx8"
* telecom.use = #work
* telecom.system = #email
* telecom.value = "test@email.com"
* telecom.use = #work
* endpoint = Reference(Endpoint/fxxxxe7c-7fd8-4acd-xxxx-42cb052763d4) "itbDev-nationaltheatret"
* extension[NotBookableInITB].valueBoolean = true
* extension[NotBookableInITB].url = "http://ki.purified.link/wof-portal/fhir/StructureDefinition/NotBookableInITB"

Instance: adressId
InstanceOf: Location
Usage: #inline
* address.use = #work
* address.text = "Stortingsgata 3110"
* address.city = "Oslo"
* position.longitude = 10.7201
* position.latitude = 59.975

Instance: listId
InstanceOf: List
Usage: #inline
* entry[+].extension.url = "http://portal.wof.purified.link/fhir/StructureDefinition/extPriceDefinition"
* entry[=].extension.valueString = "2.000 SEK"
* entry[=].item = Reference(ActivityDefinition/5e54aeb0-xxxx-49ed-af21-xxxx6ce0c730) "Dårlig Ånde"
* entry[+].extension.url = "http://portal.wof.purified.link/fhir/StructureDefinition/extPriceDefinition"
* entry[=].extension.valueString = "850 NOK"
* entry[=].item = Reference(ActivityDefinition/bcfafc6d-xxxx-4985-97ea-xxxx75fe858f) "Tannlegeskrekk"
* entry[+].extension.url = "http://portal.wof.purified.link/fhir/StructureDefinition/extPriceDefinition"
* entry[=].extension.valueString = "5 dollahs"
* entry[=].item = Reference(ActivityDefinition/30491f7e-xxxx-4f48-a555-xxxx5828641) "Tannrens"
* status = #current
* mode = #working