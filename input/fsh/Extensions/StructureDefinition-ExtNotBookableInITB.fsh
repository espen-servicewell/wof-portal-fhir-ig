Extension: NotBookableInITB
Id: NotBookableInITB
Title: "NotBookableInITB"
Description: ""
Context: ITBHealthcareService

* extension contains
HasExternalBookingSite named HasExternalBookingSite 0..1 MS ?! and
BookingInformation named BookingInformation 0..1 MS and
ExternalBookingUrl named ExternalBookingUrl 0..1 MS

* extension[HasExternalBookingSite] ^short = "Indicates if booking is done on an external bookingsite."
* extension[BookingInformation] ^short = "Informational text regarding how to book an appointment"
* extension[ExternalBookingUrl] ^short = "Url to the external booking site"

Extension: ExternalBookingUrl
Id: ExternalBookingUrl
Title: "externalBookingUrl"
Description: ""
Context: NotBookableInITB

* value[x] 0..1
* value[x] only url

Extension: HasExternalBookingSite
Id: HasExternalBookingSite
Title: "hasExternalBookingSite"
Description: ""
Context: NotBookableInITB

* value[x] 0..1
* value[x] only boolean

Extension: BookingInformation
Id: BookingInformation
Title: "bookingInformation"
Description: ""
Context: NotBookableInITB

* value[x] 0..1
* value[x] only string