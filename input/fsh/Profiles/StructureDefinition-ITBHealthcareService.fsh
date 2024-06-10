Profile: ITBHealthcareService
Parent: HealthcareService
Title: "ITB HealthcareService"
Description: "ITBHealthcareService..."

* ^version = "1.0.0"
* ^status = #active //WIP

* meta only WofMeta

* extension contains
ITBListReference named ExtListReference 0..1 MS and
NotBookableInITB named NotBookableInITB 0..1 MS and
PractitionerSegments named ExtPractitionerSegments 0..1 MS and
PlanningHorizonInWeeks named ExtPlanningHorizonInWeeks 0..1 MS and
AllowReschedulingFromDentalUnitLocation named ExtAllowReschedulingFromDentalUnitLocation 0..1 MS and
// TOOD - revert this
//ITBUrlPlaceholder named ExtUrlPlaceholder 1..1
ITBUrlPlaceholder named ExtUrlPlaceholder 0..1 MS

* extension[NotBookableInITB] ^short = "Indicates if booking is made outside this ITB"
// Which of these ways is preferred. Cannot add short desription to the first
//* ^contained[+] = List
//* ^contained[+] = Location

* contained 0..* MS
// Profil eller grundresurs här? 
// Det får bara vara en List, hur uttrycka det?
* contained only ITBLocation or ITBList
* contained ^short = "Reference to a List or Location"

* id 0..1 MS
* id ^short = "HealthCareService Id"

* name 0..1 MS
* name ^short = "Name visible in GUI"

* endpoint 0..* MS
* endpoint only Reference(Endpoint)
* endpoint ^short = "TBD"
* endpoint.display ^short = ""

* active 0..1 MS
* active ^short = ""


// Eller ska denna inte vara med eftersom contained?
* location 0..* MS
* location only Reference(ITBLocation)

* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "telecom"
* telecom ^slicing.rules = #open
* telecom ^slicing.description = ""
* telecom ^slicing.ordered = false

* telecom contains
Phone 0..1 MS and
Email 0..1 MS

* telecom 0..*
* telecom ^short = "List of contacts related to this specific healthcare service."
* telecom[Phone].system = #phone
* telecom[Phone].value 0..1 MS
* telecom[Email].system = #email
* telecom[Email].value 0..1 MS


* availableTime 0..* MS
* availableTime ^short = "Name or Display name"

* providedBy 0..1 MS
* providedBy only Reference(Organization)
* providedBy ^short = "Of type 'WofReference'. Organization is named 'CareProvider' in portal"

Extension: PlanningHorizonInWeeks
Id: PlanningHorizonInWeeks
Title: "PlanningHorizonInWeeks"
Description: ""
Context: ITBHealthcareService
* value[x] only integer

Extension: AllowReschedulingFromDentalUnitLocation
Id: AllowReschedulingFromDentalUnitLocation
Title: "AllowReschedulingFromDentalUnitLocation"
Description: ""
Context: ITBHealthcareService
* value[x] only boolean