Profile: ITBPatient
//Parent: no-basis-Patient
Parent: Patient
Title: "ITB Patient"
Description: ""

* id 0..1 MS
* meta.profile 0..1 MS

* identifier 0..* MS
* identifier ^short = "Extern identifierare. Svenskt personnumer men även andra identifierare"

* identifier.type.coding.system 0..1 MS
* identifier.type.coding.code 0..1 MS
* identifier.system 0..1 MS
* identifier.value 0..1 MS

* active 0..1 MS
// TODO - kan det vara olika system och koder för identifierar-type
* identifier.type 0..1 MS
* identifier.type.coding.system 0..1 MS
* identifier.type.coding.system from OpusIdentifiers

* active 0..1
* active ^short = "Här finns möjligheter att signalera om en patient får boka eller inte."

* name 0..* MS
* name ^short = "A name associated with the individual. Krävs mellannamn? Finns en extension för detta."
* name.text 0..1 MS
* name.family 0..1 MS
* name.given 0..1 MS


* telecom 0..*
* telecom ^short = "List of contacts related to this specific healthcare service."
* telecom.system 0..1 MS
* telecom.value 0..1 MS
* telecom.use 0..1 MS

* birthDate 0..1 MS

* generalPractitioner only Reference(PractitionerRole)
* generalPractitioner 0..* MS 
* generalPractitioner ^short = "Referens till PractitionerRole känns rimligt om man vill använda denna. PractitionerRole innehåller mycket information och referenser till andra resurser."

* managingOrganization only Reference(Organization)
* managingOrganization 0..1 MS 
* managingOrganization ^short = "Organization that is the custodian of the patient record. Ej viktig men kan bra i ett längre perspektiv."

* name.given 0..1
* name.given ^short = "Förnamn"

* name.family 0..1 
* name.family ^short = "Efternamn"

* telecom 0..* MS
* telecom.system 0..1 MS
* telecom.system ^short = "phone | email"
* telecom.use 0..1 MS
* telecom.use ^short = "mobile | home"

* birthDate 0..1 MS
* birthDate ^short = "Födelsedatum"




* generalPractitioner 0..*
* generalPractitioner ^short = "Referens till PractitionerRole känns rimligt om man vill använda denna. PractitionerRole innehåller mycket information och referenser till andra resurser."

* managingOrganization 0..1
* managingOrganization ^short = "Organization that is the custodian of the patient record. Ej viktig men kan bra i ett längre perspektiv."

