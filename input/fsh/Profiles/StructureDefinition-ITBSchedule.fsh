Profile: ITBSchedule
Parent: Schedule
Title: "ITB Schedule"
Description: ""

* id 0..1 MS

* identifier 0..* MS
* identifier ^short = "Extern identifiering vid behov."

* serviceType 0..* MS
* serviceType ^short = "Typ av behandling."

* actor 1..* MS
* actor ^short = "Referens till PractitionerRole samt HealthcareServiceId"
* actor.reference 0..1 MS
* actor.display 0..1 MS

* planningHorizon 0..1 MS
* planningHorizon ^short = "Tidsintervall. Detta kan sättas efter behov, just nu använder vi 5veckors scheman i ITB."

* planningHorizon.start 0..1 MS
* planningHorizon.end 0..1 MS


