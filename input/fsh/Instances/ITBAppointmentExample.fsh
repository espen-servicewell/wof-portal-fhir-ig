Alias: $csAvailableForCancellation = http://portal.wof.purified.link/fhir/CodeSystem/csAvailableForCancellation
Alias: $csAvailableForReschedule = http://portal.wof.purified.link/fhir/CodeSystem/csAvailableForReschedule
Alias: $csOpusIdentifier = http://opusdental.purified.link/fhir/CodeSystem/csOpusIdentifier
Alias: $csBookingCategory = http://opusdental.purified.link/fhir/CodeSystem/csBookingCategory
Alias: $csServiceType = http://portal.wof.purified.link/fhir/CodeSystem/csServiceType

Instance: ITBAppointment
InstanceOf: ITBAppointment
Usage: #example
* meta.tag[0] = $csAvailableForCancellation#false
* meta.tag[+] = $csAvailableForReschedule#false
* identifier.type = $csOpusIdentifier#bookingId
* identifier.system = "http://localhost:7001/http://localhost:7001/fc580e7c-7fd8-4acd-92e9-42cb052763d4/fhir/NamingSystem/nsbookingId"
* identifier.value = "14"
* status = #booked
* serviceType[0] = $csBookingCategory#bcbc1754-a399-48ba-8eec-10667f19a0d6
* serviceType[+] = $csServiceType#itb-not-defined "Booket besøk online"
* serviceType[=].text = "Booket besøk online"
* start = "2021-03-04T14:25:00+00:00"
* end = "2021-03-04T14:55:00+00:00"
* participant[0].actor = Reference(PractitionerRole/ecc708b6-95b2-4517-8644-e3b6c2180125) "Tannlege Torunn Lyngstad"
* participant[=].status = #accepted
* participant[+].actor = Reference(HealthcareService/b81f2315-7476-45e8-9ae6-51f547e2d82e) "Colosseum Tannlege Nationaltheatret"
* participant[=].status = #accepted
* participant[+].actor = Reference(Device/2) "Device"
* participant[=].status = #accepted
* participant[+].actor = Reference(Patient/649) "Patient"
* participant[=].status = #accepted