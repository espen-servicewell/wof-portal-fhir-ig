Alias: $sct = http://snomed.info/sct

Instance: ITBPractitionerRoleExample
InstanceOf: PractitionerRole
Usage: #example
* contained = dceda771-ab94-43da-b2a1-de3941bd76f7
* extension.url = "http://portal.wof.purified.link/fhir/StructureDefinition/extBinaryReference"
* extension.valueReference = Reference(dceda771-ab94-43da-b2a1-de3941bd76f7)
* active = true
* period.start = "2021-01-01T10:23:00+01:00"
* practitioner = Reference(Practitioner/1234567) "Tandläkar Nils Nilsson"
* organization = Reference(Organization/1234567) "Nils Nilsson AB"
* code = $sct#106289002
* code.text = "tandläkare"
* specialty = $sct#106289002
* specialty.text = "tandläkare"
* healthcareService = Reference(HealthcareService/1234567) "My Healthcare servicecenter"
* endpoint = Reference(http://fhir.link/jdjdjdj) "OpusDatabas"

Instance: dceda771-ab94-43da-b2a1-de3941bd76f7
InstanceOf: Binary
Usage: #inline
* contentType = #image/bmp
* securityContext = Reference(6c5e67e6-1ee6-4e46-bd6f-560c9ddfaa42)
* data = "dGVzdHRlc3Q="