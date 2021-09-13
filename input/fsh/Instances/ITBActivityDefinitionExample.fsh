Alias: $csServiceType = http://portal.wof.purified.link/fhir/CodeSystem/csServiceType
Alias: $sct = http://snomed.info/sct

Instance: ITBActivityDefinition
InstanceOf: ITBActivityDefinition
Usage: #example
* extension[0].url = "http://portal.wof.purified.link/fhir/StructureDefinition/extOpusCryptobookingText"
* extension[=].valueString = "XYÅZÅÄA"
* extension[+].url = "http://portal.wof.purified.link/fhir/StructureDefinition/extOpusBookingCategory"
* extension[=].valueString = "3"
* name = "TdlUS60"
* title = "Undersökning tandläkare"
* subtitle = "Här får du dina tänder undersökta av en utbildad tandläkare"
* status = #active
* date = "2021-09-06"
* description = "Desc"
* kind = #Appointment
* code = $csServiceType#123 "Bra Service"
* code.text = "Desc"
* timingDuration.value = 60
* timingDuration.unit = "min"
* participant.type = #practitioner
* participant.role = $sct#106289002 "dentist"
* participant.role.text = "Tandläkare"