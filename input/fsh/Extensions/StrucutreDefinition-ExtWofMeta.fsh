Extension: ExtWofMeta
Id: ExtWofMeta
Title: "WofMeta"
Description: ""

* extension contains
RowVersion named ExtRowVersion 0..1 MS and
Created named ExtCreated 0..1 MS and 
TimeToPersist named ExtTimeToPersist 0..1 MS and
AllowedActions named ExtAllowedActions 0..* MS

Extension: RowVersion
Id: RowVersion
Title: "RowVersion"
Description: "" 
Context: ExtWofMeta
* ^url = "row-version"
* value[x] only string

Extension: Created
Id: Created
Title: "Created"
Description: ""
Context: ExtWofMeta
* ^url = "created"
* valueDateTime 1..1 MS

Extension: TimeToPersist
Id: TimeToPersist
Title: "TimeToPersist"
Description: "Parameter to make it possible to clean unwanted resources when TimeToPersist is passed"
Context: ExtWofMeta
* ^url = "timetopersist"
* valueDateTime 0..1 MS
* valueDateTime ^short =  "TimeToPersist parameter to make it possible to clean unwanted resources when TimeToPersist is passed.  Null means 'Keep forever'"

Extension: AllowedActions
Id: AllowedActions
Title: "AllowedActions"
Description: ""
Context: ExtWofMeta
* ^url = "allowed-actions"
* value[x] 1..1
* valueCode from http://ki.purified.link/wof-portal/fhir/ValueSet/AllowedActionsVS