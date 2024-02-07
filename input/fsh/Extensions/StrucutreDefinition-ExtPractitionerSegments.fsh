Extension: PractitionerSegments
Id: PractitionerSegments
Title: "UsePractitionerSegments"
Description: ""
Context: ITBHealthcareService
* extension contains 

PractitionerSegmentsPlusDefaultsTo named ExtPractitionerSegmentsPlusDefaultsTo 0..1 MS and
UsePractitionerSegments named ExtUsePractitionerSegments 0..1 MS

Extension: PractitionerSegmentsPlusDefaultsTo
Id: PractitionerSegmentsPlusDefaultsTo
Title: "PractitionerSegmentsPlusDefaultsTo"
Description: ""
Context: PractitionerSegments
* value[x] 1..1 MS
* value[x] only integer

Extension: UsePractitionerSegments
Id: UsePractitionerSegments
Title: "UsePractitionerSegments"
Description: ""
Context: PractitionerSegments
* value[x] 1..1 MS
* value[x] only boolean