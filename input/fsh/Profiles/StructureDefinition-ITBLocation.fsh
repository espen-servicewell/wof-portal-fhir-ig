Profile: ITBLocation
Parent: Location
Title: "ITB Location"
Description: "ITBLocation is used to handle adress and position, for example used in ITBHealthCareService"


* id 1..1 MS
* id ^short = "Logical id of this artifact"

* address 1..1 MS
* address ^short = "TBD" 
* address.use 1..1 MS
* address.use ^short = "home | work | temp | old | billing - purpose of this address"
* address.text 1..1 MS
* address.text ^short = "Text representation of the address"
* address.city 1..1 MS
* address.city ^short = "Text representation of the address"

* position 1..1 MS
* position ^short = ""
* position.longitude 1..1 MS
* position.longitude ^short = ""
* position.latitude 1..1 MS
* position.latitude ^short = ""
