Alias: $csPractitionerQualification = http://opusdental.purified.link/fhir/CodeSystem/csPractitionerQualification
Alias: $csOpusIdentifier = http://opusdental.purified.link/fhir/CodeSystem/csOpusIdentifier

Instance: ITBPractitioner
InstanceOf: ITBPractitioner

Usage: #example
* meta.lastUpdated = "2021-02-03T10:02:00+01:00"
* contained = Inline-Instance-for-470-1
* identifier[0].system = "urn:oid:1.3.6.1.4.1.2428.90.1.5"
* identifier[=].value = "12121212345"
* identifier[+].type = $csOpusIdentifier#employeeId
* identifier[=].system = "itbDev-colosseum-opus-nationaltheatret"
* identifier[=].value = "470"
* identifier[+].type = $csOpusIdentifier#employeeNo
* identifier[=].system = "itbDev-colosseum-opus-nationaltheatret"
* identifier[=].value = "2"
* identifier[+].type = $csOpusIdentifier#employeeLicenseId
* identifier[=].system = "itbDev-colosseum-opus-nationaltheatret"
* identifier[=].value = "2046"
* active = true
* name.text = "Tannlege Kurt Karlsson"
* name.family = "Lyngtest"
* name.given = "Kenth"

Instance: Inline-Instance-for-470-1
InstanceOf: PractitionerRole
Usage: #inline
//* id = "470_559"
* active = false
//* practitioner = Reference() "Tannlege Kurt Karlsson"
* organization = Reference(Organization/559)
//* code = Opus#LnkEmployeeBusiness
* code.text = "WorksAt"
* specialty = $csPractitionerQualification#dentist
* specialty.text = "Dentist"
* endpoint = Reference(http://fhir.link/jdjdjdj) "OpusDatabas"