Instance: ITBHealthcareService
InstanceOf: ITBHealthcareService
Usage: #example
* contained[0] = adressId
* contained[1] = listId
* extension[0].url = "http://portal.wof.purified.link/fhir/StructureDefinition/extListReference"
* extension[0].valueReference = Reference(listId)
* extension[1].url = "http://portal.wof.purified.link/fhir/StructureDefinition/extUrlPlaceholder"
* extension[1].valueString = "http://portal.wof"
* extension[2].url = "http://ki.purified.link/wof-portal/fhir/StructureDefinition/NotBookableInITB"
* extension[2].extension[0].url = "http://ki.purified.link/wof-portal/fhir/StructureDefinition/IsNotBookableInITB"
* extension[2].extension[0].valueBoolean = true
* extension[2].extension[1].url = "http://ki.purified.link/wof-portal/fhir/StructureDefinition/ExternalBookingUrl"
* extension[2].extension[1].valueUrl = "https://minside.colosseum.no/bestilltime"
* extension[2].extension[2].url = "http://ki.purified.link/wof-portal/fhir/StructureDefinition/BookingInformation"
* extension[2].extension[2].valueString = "Här kan man boka"
* extension[3].url = "http://portal.wof.purified.link/fhir/StructureDefinition/extPractitionerSegments"
* extension[3].extension[0].url = "use"
* extension[3].extension[0].valueBoolean = true
* extension[3].extension[1].url = "plusDefaultsTo"
* extension[3].extension[1].valueInteger = 3
* extension[4].url = "http://portal.wof.purified.link/fhir/StructureDefinition/extPlanningHorizonInWeeks"
* extension[4].valueInteger = 10
* extension[5].url = "http://portal.wof.purified.link/fhir/StructureDefinition/extAllowReschedulingFromDentalUnit"
* extension[5].valueBoolean = true
* identifier.value = "Colosseum Tannlege Nationaltheatret"
* active = true
* location = Reference(adressId)
* name = "colosseum-nationaltheatret"
* telecom.system = #phone
* telecom.value = "+4712345678"
* telecom.use = #work
* telecom.system = #email
* telecom.value = "test@testmail.com"
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