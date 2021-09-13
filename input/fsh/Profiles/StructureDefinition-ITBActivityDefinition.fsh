Profile: ITBActivityDefinition
Parent: ActivityDefinition
Title: "ITB ActivityDefinition"
Description: "ITBActivityDefinition is used to handle  .."


* extension contains
OpusBookingCategory named OpusBookingCategoryExtension 0..*

* extension contains
OpusCryptobookingText named OpusCryptobookingTextExtension 0..*

* id 1..1 MS
* id ^short = "Logical id of this artifact"

* date 1..1 MS
* date ^short = "Date last changed" 

* status 1..1 MS
* status ^short = "draft | active | retired | unknown"
//* status.code Publication Code 

* name 1..1 MS
* name ^short = "Name for this activity definition (computer friendly)"

* title 1..1 MS
* title ^short = "Title for this activity definition (human friendly)"

* subtitle 1..1 MS
* subtitle ^short = " Subordinate title of the activity definition"

* description 1..1 MS
* description ^short = " Natural language description of the activity definition"

* code 1..1 MS
* code ^short = "ServiceTypeCode"
* code.coding.system = "http://portal.wof.purified.link/fhir/CodeSystem/csServiceType"


* code.coding from ITBServiceType

* timingDuration 1..1 MS
* timingDuration ^short = "Code for the Activity that is to be performed"

* participant 1..1 MS
* participant.role 1..1 MS
// ? * participant.role.code
* participant ^short = "The role that is requered to perform this activity"