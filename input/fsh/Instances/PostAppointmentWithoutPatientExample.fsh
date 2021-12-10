Alias: $csServiceType = http://portal.wof.purified.link/fhir/CodeSystem/csServiceType
Instance: PostAppointmentWithoutPatient
InstanceOf: ITBAppointment
Usage: #example
* status = #proposed
* serviceType = $csServiceType#servicetype1
* start = "2021-05-14T06:30:00+00:00"
* end = "2021-05-14T07:00:00+00:00"
* participant[+].actor = Reference(HealthcareService/{{healthCareServiceID}})
* participant[=].status = #accepted
* participant[+].actor = Reference(Patient/649)
* participant[=].status = #accepted
* participant[+].actor = Reference(PractitionerRole/{{practitionerRoleId}})
* participant[=].status = #accepted