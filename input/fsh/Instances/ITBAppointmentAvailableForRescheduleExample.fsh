Alias: $csAvailableForCancellation = http://portal.wof.purified.link/fhir/CodeSystem/csAvailableForCancellation
Alias: $csAvailableForReschedule = http://portal.wof.purified.link/fhir/CodeSystem/csAvailableForReschedule
Alias: $csServiceType = http://portal.wof.purified.link/fhir/CodeSystem/csServiceType

Instance: ITBAppointmentAvailableForReschedule
InstanceOf: ITBAppointment
Usage: #example
* meta.tag[0] = $csAvailableForCancellation#false
* meta.tag[+] = $csAvailableForReschedule#true
* status = #booked
* serviceType = $csServiceType#examination
* start = "2021-05-07T08:00:00+00:00"
* end = "2021-05-07T08:30:00+00:00"
* minutesDuration = 30
* participant[0].actor = Reference(Patient/649) "Patient"
* participant[=].status = #accepted
* participant[+].actor = Reference(PractitionerRole/53248079-fd9b-4de5-8d22-d93068542def) "Tannpleier Sara Larsson"
* participant[=].status = #accepted
* participant[+].actor = Reference(HealthcareService/b81f2315-7476-45e8-9ae6-51f547e2d82e) "En sjov gutt clinic"
* participant[=].status = #accepted
* participant[+].actor = Reference(Device/4) "Device"
* participant[=].status = #accepted