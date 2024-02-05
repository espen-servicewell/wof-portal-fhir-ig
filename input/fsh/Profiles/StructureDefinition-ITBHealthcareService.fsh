Profile: ITBHealthcareService
Parent: HealthcareService
Title: "ITB HealthcareService"
Description: "ITBHealthcareService..."

* ^version = "0.1.1"


* extension contains
ITBListReference named ExtListReference 0..1 MS

// Which of these ways is preferred. Cannot add short desription to the first
//* ^contained[+] = List
//* ^contained[+] = Location

* contained 0..* MS
// Profil eller grundresurs här? 
// Det får bara vara en List, hur uttrycka det?
* contained only ITBLocation or ITBList
* contained ^short = "Reference to a List or Location"

* extension contains
// TOOD - revert this
//ITBUrlPlaceholder named ExtUrlPlaceholder 1..1
ITBUrlPlaceholder named ExtUrlPlaceholder 0..1

* id 0..1 MS
* id ^short = "HealthCareService Id"

// identifier is also used for Display Name?
* identifier 0..1 MS
* identifier ^short = "Display Name"

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

* telecom ^short = "List of contacts related to this specific healthcare service."
* telecom[Phone].system = #phone
* telecom[Email].system = #email

* telecom.value 0..1 MS

* availableTime 0..* MS
* availableTime ^short = "Name or Display name"

* extension contains NotBookableInITB named NotBookableInITB 0..1 MS

* extension[NotBookableInITB] ^short = "Indicates if booking is made outside this ITB"