Profile: ITBAppointment
Parent: Appointment
Title: "ITB Appointment"
Description: "ITBAppointment is used to handle  .."

* id ^short = "Logical id of this artifact"
* id ^definition = "The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes."

// Hur ska denna meta.tag.system beskrivas?
* meta.tag 0..* MS
* meta.tag ^short = "Kod för tillgänglighet"
* meta.tag.system ^short = "http://portal.wof.purified.link/fhir/CodeSystem/csAvailableForCancellation OR http://portal.wof.purified.link/fhir/CodeSystem/csAvailableForReschedule"

* status 1..1 MS
* status ^short = "proposed | pending | booked | arrived | fulfilled | cancelled | noshow | entered-in-error | checked-in | waitlist"
* status ^definition = "The overall status of the Appointment. Each of the participants has their own participation status which indicates their involvement in the process, however this status indicates the shared status. -> Vid första anrop vid bokning är denna exempelvis proposed."

* serviceType 1..*
* serviceType ^short = "Typ av behandling som skall bokas."
* serviceType from ITBServiceType

* start 0..1 MS
* start ^short = "Starttid"

* end 0..1 MS
* end ^short = "Sluttid"

* minutesDuration 0..1 MS
* minutesDuration ^short = "Varaktighet i minuter"

* slot 0..*
* slot ^short = "The slots that this appointment is filling"
* slot ^definition = "I ITBn mot OPUS hanterar vi inte denna referens då vi endast använder start och end för att beskriva tidsintervallet. Det kan dock vara aktuellt att använda slot-referensen vid hantering av t.ex. Pride osv."

* comment 0..1
* comment ^short = "Möjlighet att fylla på med relevant fritext vid bokning."

* participant.actor 0..1 MS
* participant.actor only Reference(Patient or PractitionerRole or HealthcareService or Device)
* participant.actor ^definition = "Referens till PractitionerRole, kanske även HealthcareService  (Även Patient, Device)"
* participant.status 1..1 MS
* participant.status ^short = "accepted | declined | tentative | needs-action"
* participant.status ^definition = "Participation status of the actor."