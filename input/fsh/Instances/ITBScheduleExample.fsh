Alias: $csServiceType = http://portal.wof.purified.link/fhir/CodeSystem/csServiceType
Instance: ITBScheduleExample
InstanceOf: ITBSchedule
Usage: #example
* serviceType = $csServiceType#blek-kampanje
* actor[0] = Reference(HealthcareService/939970ef-5e09-4597-977c-d6ae56ac81c5) "My clinic"
* actor[+] = Reference(itbDev-colosseum-opus-sandvika/fhir/Practitioner/505) "Tannpleier Anna Andersson"
* actor[+] = Reference(itbDev-colosseum-opus-sandvika/fhir/Organization/578)
* actor[+] = Reference(PractitionerRole/6194e8d0-2873-4569-915f-0ae8e4047854) "Tannpleier Anna Andersson"
* planningHorizon.start = "2021-04-13T22:00:00+00:00"
* planningHorizon.end = "2021-05-18T22:00:00+00:00"