Instance: stock-hco-site
InstanceOf: BeVaccination 
Usage: #example 
Description: "Use of stock location with hco number and site"
Title:   "Use of stock location with hco number and site"
* contained[+] = site
* contained[+] = org-regional-child-care-agency
* extension[recorder].valueReference = Reference(org-regional-child-care-agency)
* extension[vaccination-stock-location].valueReference = Reference(site) 
* status = #completed
* patient.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin"
* patient.identifier.value = "20020142173"
* recorded = "2020-04-06"
* occurrenceDateTime = "2020-04-06"
* doseQuantity.value = 1
* performer[0].actor.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi-professional"
* performer[0].actor.identifier.value = "10829059"
* vaccineCode.coding[0].system = "http://snomed.info/sct"
* vaccineCode.coding[0].code = #871761004
//* protocolApplied.doseNumberPositiveInt = 1
//* protocolApplied.seriesDosesPositiveInt = 3
////* extension[vaccination-originalorder].valueReference = Reference(aymeric-rota)
//* extension[vaccination-confirmationStatus].valueCode = #confirmed

Instance: site
InstanceOf: Location
Usage: #inline
* identifier[+].system = "http://te-bepalen-door-wvg-voor-site-bron"
* identifier[=].value = "7797"
* partOf.identifier.system = "http://te-bepalen-door-wvg-voor-hco-bron"
* partOf.identifier.value = "141100902"