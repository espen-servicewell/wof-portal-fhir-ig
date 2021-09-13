Profile: ITBPractitionerRole
Parent: PractitionerRole
Title: "ITB PractitionerRole"
Description: "PractitionerRole is an actor in Patient Portal and can become a bookable entity"


* id 1..1 MS
* id ^short = "Logical id of this artifact"

* extension contains
ITBBinaryReference named BinaryReferenceExtension 0..*

* identifier 0..* MS
* identifier ^short = "Extern identifiering."

* active 1..1 MS
* active ^definition = "Indicates if this role is active and bookable at the HealthcareService"

* code 0..* MS
* code ^short = "Role that can be beformed - connected to ActivityDefinition.participant.role"
//* code from ITBRoleCodes

* period 0..1 MS
* period ^short = "Period under viken behandlare kan iträda roll"
* period.start 0..1 MS
* period.start ^short  = "Starttid"
* period.end 0..1 MS
* period.end ^short = "Sluttid"

* practitioner 1..1 MS
* practitioner.display 1..1 MS
* practitioner.display ^short = "Used in GUI for representing the practitioner"
* practitioner ^short = "Connects to EHRs that containes the practitioner where the appointment will be stored   --> example: DB01/fhir/Practitioner/123"


* organization 1..1 MS
* organization.display 1..1 MS
* organization.display ^short = "Used in backoffice GUI for representing the organization"
* organization ^short = "Connects to EHRs soureSystem organization --> example:  DB01/fhir/Organization/123"
* organization.type 0..1 
* organization.type ^short = "Describes what type of organization --> example: eco unit"

* healthcareService 1..1 MS
* healthcareService ^short = "The HealthcareService where this PractitionerRole is bookable"
* healthcareService.display 0..1
* healthcareService.display ^short = "Used in GUI please use this if possible"

* specialty 0..* MS
* specialty ^short = "Only used in GUI no logic attached"
* specialty from ITBSpecialityCodes (preferred)

* endpoint 1..1 MS
* endpoint ^short = "The FHIR endpoint where the practitioner and the organization exist"
* endpoint.display ^short = "Used in GUI please use this if possible"

* contained 0..1 MS
* contained only Binary
* contained ^short = "This should contain a picture of the practitioner"




