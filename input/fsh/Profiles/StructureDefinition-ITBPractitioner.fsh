Profile: ITBPractitioner
Parent: Practitioner
Title: "ITB Practitioner"
Description: "Practitioner is.. TBD"


* id 1..1 MS
* id ^short = "Logical id of this artifact"

* meta.lastUpdated 1..1 MS

* contained 0..1 MS
* contained only ITBPractitionerRole
* contained ^short = "TBD"


* identifier 0..* MS
* identifier ^short = "Extern identifiering."

* identifier.type 0..1 MS
* identifier.type.coding.system 0..1 MS
* identifier.type.coding.code 0..1 MS
* identifier.system 0..1 MS
* identifier.value 0..1 MS


* active 1..1 MS
* active ^definition = "Indicates if this role is active and bookable at the HealthcareService"

* name 0..* MS
* name ^short = "A name associated with the individual. Krävs mellannamn? Finns en extension för detta."
* name.text 0..1 MS
* name.family 0..1 MS
* name.given 0..1 MS






