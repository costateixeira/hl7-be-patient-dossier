Profile:        BeVaccination
Parent:         Immunization
Id:             be-vaccination
Title:          "BeVaccination"
Description:    """ 
    Defines constraints and extensions on the immunization resource to represent an immunization event i.e. the administration of a vaccine."""

* status MS
* statusReason MS
* vaccineCode MS
* occurrenceDateTime MS
* occurrenceString MS
* recorded MS
* location MS
* lotNumber MS
* expirationDate MS
* site MS
* route MS
* protocolApplied MS
* reaction MS
* performer MS
* site MS
* route MS
* doseQuantity MS
* identifier 0..* MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* patient 1..1 MS
* patient only Reference(BePatient)
* performer.actor 1..1 
* performer.actor only Reference(BePractitioner or BeOrganization or BePractitionerRole)
* location 0..0
* ^jurisdiction.coding = urn:iso:std:iso:3166#BE

// changes 12-05
//* basedOn
//* instantiates..?
* identifier 0..*
* identifier ^short = "A unique business identifier for a vaccination entry"
* status ^short = "The status of this vaccination record entry"
* patient ^short = "The patient that this received vaccination entry refers to"
* vaccineCode ^short = "The vaccine code - a type of vaccine, typically identified by the diseas(s) it covers. For example MMR, HPV, Tetanus, DTPa"
* vaccineCode 1..1
* vaccineCode from be-vs-vaccine-code (required)
* protocolApplied.doseNumberString ^short = "Whether this is a first vaccination or a reinforcement" 
* protocolApplied.doseNumberString MS
* protocolApplied.doseNumberPositiveInt ^short = "The numeric/sequential number of the dose, when adequate" 
* protocolApplied.doseNumberPositiveInt MS
* recorded ^short = "The date/time when the vaccination event has been recorded"
* recorded 1..1
* extension contains BeVaccinationOriginalOrder named vaccination-originalorder 0..1
* extension contains BeAdministeredProduct named administeredProduct 0..1
* extension contains BeVaccinationLocation named vaccination-location 0..1
* extension contains BeVaccinationConfirmationStatus named vaccination-confirmationStatus 0..1
* extension contains BeExtRecorder named recorder 1..1
* route from be-vs-vaccination-administration-route 
* statusReason from be-vs-vaccination-status-reason (required)


* protocolApplied.targetDisease MS
* protocolApplied.targetDisease from be-vs-vaccine-target-disease (example)

// Add extension: recordedString
// Add extension: type


// added 09-06
* reasonCode MS
* reasonCode ^short = "Why vaccination has occurred or not (code or text)"
* reasonReference MS
* reasonReference ^short = "Why vaccination has occurred or not (reference to a finding)"

// added constraint
* obeys be-rule-vaccination-1


Invariant:   be-rule-vaccination-1
Description: "If vaccineCode.code is other, then vaccinecode text must exist"
Expression:  "vaccineCode.coding.code = 'other'  implies vaccineCode.text.exists() "
Severity:    #error