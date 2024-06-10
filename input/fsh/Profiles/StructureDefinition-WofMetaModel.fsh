Profile: WofMeta
Parent: Meta
Id: WofMeta
Description: "Special MetaProfile for Wof to hold meta data about the resource (internal use only)"

* ^version = "1.0.0"

* source MS
* tag ^slicing.discriminator.type = #pattern
* tag ^slicing.discriminator.path = "system"
* tag ^slicing.rules = #open
* tag ^slicing.description = "Slice based on the tag system pattern"

* tag contains tennantId 1..1 MS 
* tag[tennantId] ^definition = "Add the tenantid from your licens"
* tag[tennantId] ^label = "tennantid"
* tag[tennantId] ^short = "tennantid"
* tag[tennantId].system from http://ki.purified.link/wof-mobileform/fhir/ValueSet/MobileFormTenantsVs
* tag[tennantId].code 1..1 MS 

* profile
* source
* version
* lastUpdated

* extension contains ExtWofMeta named WofMetaModel 0..1 MS