Alias: $no-basis-Patient = http://hl7.no/fhir/StructureDefinition/no-basis-Patient
Alias: $csOpusIdentifier = http://opusdental.purified.link/fhir/CodeSystem/csOpusIdentifier

Instance: PatientExample
InstanceOf: ITBPatient
Usage: #example
* identifier[0].system = "urn:oid:2.16.578.1.12.4.1.4.1"
* identifier[=].value = "110384-98330"
* identifier[+].type = $csOpusIdentifier#patientId
* identifier[=].system = "itbDev-colosseum-opus-nationaltheatret/fhir/NamingSystem/nspatientId"
* identifier[=].value = "649"
* name.text = "Johansen Øyvind Petter"
* name.family = "Johansen"
* name.given = "Øyvind Petter"
* telecom[0].system = #email
* telecom[=].value = "test@fhir.link"
* telecom[=].use = #home
* telecom[+].system = #phone
* telecom[=].value = "0708664086"
* telecom[=].use = #mobile
* birthDate = "1984-03-11"