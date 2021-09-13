Profile: ITBList
Parent: List
Title: "ITB List"
Description: "ITBList is used to hold PriceDefinitions..."

// Ska denna profil i själva verket heta HealthcareServiceActivityDefinitionList?

* extension contains
ITBPriceDefinition named ExtPriceDefinition 0..* MS

* id 1..1 MS
* id ^short = "Logical id of this artifact"

* status 1..1 MS
* status ^short = "current | retired | entered-in-error"
* entry 1..* MS
* entry.item 1..1 MS
* entry.item only Reference(ActivityDefinition)
* entry.item.display 1..1 MS
* entry.item.display ^short = "Activity display name"