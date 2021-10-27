Extension: PortalAttachment
Id: extAttachment
Title: "Attachment Extension"
Description: "Extension used to be able add attachments to a resource"


* url 1..1 MS

* extension contains OrganizationTheme 1..1 
* extension[OrganizationTheme].valueBase64Binary only base64Binary

* extension contains OrganizationTexts 1..1 
* extension[OrganizationTexts].valueBase64Binary only base64Binary

* extension contains OrganizationMeta 1..1
* extension[OrganizationMeta].valueBase64Binary only base64Binary

* extension contains EnvironmentCode 1..1 
* extension[EnvironmentCode].valueString only string
