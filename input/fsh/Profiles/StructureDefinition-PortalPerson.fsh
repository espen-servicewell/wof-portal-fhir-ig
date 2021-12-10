Profile: PortalPerson
Parent: Person
Title: "Portal Person"
Description: "This resource can be used to handle for example related persons, patients and practitioners"


* extension contains
extCreated named ExtCreated 0..1 MS

* extension contains
extConsentToMarketing named ExtConsentToMarketing 0..1 MS

* id 0..1 MS
* meta.profile 0..1 MS
* meta.lastUpdated 0..1 MS

* identifier 0..* MS
* identifier ^short = "Extern identifierare. Svenskt personnumer men även andra identifierare"

* identifier.type.coding.system 0..1 MS
* identifier.type.coding.code 0..1 MS
* identifier.system 0..1 MS
* identifier.value 0..1 MS
* identifier.assigner 0..1 MS

* active 0..1 MS
// TODO - kan det vara olika system och koder för identifierar-type
* identifier.type 0..1 MS
* identifier.type.coding.system 0..1 MS
//* identifier.type.coding.system from OpusIdentifiers

* active 0..1
* active ^short = "Här finns möjligheter att signalera om en patient får boka eller inte."

* link 0..* MS
//* link ^short

* link.target 1..1 MS
//* link.target ^short

* link.target.type 1..1 MS
//* link.target.identifier.type.coding.system 0..1 MS
//* link.target.identifier.coding.code 0..1 MS
* link.target.identifier.system 0..1 MS
* link.target.identifier.value 0..1 MS
* link.target.identifier.assigner 0..1 MS
* link.target.identifier.assigner.reference 0..1 MS

* link.assurance 0..1 MS
* link.assurance ^short = "level1 | level2 | level3 | level4"

* name 0..* MS
* name ^short = "A name associated with the person"
* name.text 0..1 MS
* name.family 0..1 MS
* name.family ^short = "Efternamn"
* name.given 0..1 MS
* name.given ^short = "Förnamn"

* telecom 0..*
* telecom ^short = "List of contacts related to this specific healthcare service."
* telecom.system 0..1 MS
* telecom.value 0..1 MS
* telecom.use 0..1 MS

* birthDate 0..1 MS
* birthDate ^short = "Födelsedatum"

* managingOrganization only Reference(Organization)
* managingOrganization 0..1 MS 
* managingOrganization ^short = "Organization that is the custodian of the patient record. Ej viktig men kan bra i ett längre perspektiv."

* telecom 0..* MS
* telecom.system 0..1 MS
* telecom.system ^short = "phone | email"
* telecom.use 0..1 MS
* telecom.use ^short = "mobile | home"

