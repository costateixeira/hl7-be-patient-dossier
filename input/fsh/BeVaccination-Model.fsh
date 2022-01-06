
Logical: BeModelVaccination

* identifier 0..1 Identifier "The business identifier(s) for the vaccination entry" "The business identifier(s) for the vaccination entry - This is an optional attribute, used for example to track an entry throughout its lifecycle, or across vaults."
* status 1..1 http://hl7.org/fhir/StructureDefinition/code "The status of this vaccination record entry" "The status of the vaccination record entry - whether it is active, entered in error, etc."
* statusReason 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "The reason for the status e.g. 'not completed because...'" "Supporting reason for status information."
* statusReason from https://www.hl7belgium.org/fhir/ValueSet/be-vs-vaccination-status-reason (required)
* statusReason ^binding.description = "Belgium codes to describe reasons considered for status of vaccination actions, e.g. reasons for not administering vaccine"
* patient 1..1 Reference(Patient) "The patient that received vaccination." "The patient that has received the vaccination."
* vaccineCode 1..1 CodeableConcept "The vaccine code, typically identified by the diseas(s) it covers. For example MMR, HPV, Tetanus, DTPa" "The vaccine code - a type of vaccine, typically identified by the disease(s) it covers. For example MMR, HPV, Tetanus, DTPa. This should be a coded value."
* vaccinationDate[x] 0..1 dateTime or string "The date and time when the vaccination has been administered" "The date and/or time when the vaccine administration has been administered or presumed to be administered"
* vaccinationRequest 0..1 Reference "The patient-specific order or recommendation for the vaccination" "The patient-specific order or recommendation for the vaccination, for example a prescription or a request for vaccination for a patient by a physician, for example for optional vaccines."
* protocol 0..1 Reference "The vaccination plan or protocol (not patient-specific) that this vaccination is fulfilling" "The vaccination plan or protocol (not patient-specific) that this vaccination is fulfilling. For example 'Basisvaccinatieschema'"
* type 1..1 code "The type of vaccination action - for example first dose or reinforcement." "The type of vaccination action - for example first dose or reinforcement."
* sequenceNumber 0..1 string "The sequence number of an immunization - whether it is the first dose, or second dose..." "The sequence number of an immunization when part of a protocol - if it is the first dose, or second dose..."
* reporter 1..1 Reference(Practitioner) "The professional that recorded the administration of the vaccine" "The professional that recorded the administration of the vaccine."
* recorded 1..1 dateTime "The date and time when the administration of the vaccine was recorded" "The date and time when the administration of the vaccine was recorded - typically used when the vaccine event is recorded a posteriori."
* performer 1..1 Reference(Practitioner) "The professional that administered the medication" "The professional that administered the medication. Use code \"unknown\" if not known."
* route 0..1 CodeableConcept "The route of administration." "The route of administration for the vaccine. This can be free text (not desired) or a code"
* doseQuantity 0..1 BackboneElement "The number or quantity of product(s) that was administered - e.g. 1/2 dose" "The number or quantity of product(s) that was administered - e.g. 1/2 dose, etc."
* administeredProduct 0..1 BackboneElement "The details of the product that was administered." "The details of the product that was administered"
* administeredProduct.product 1..1 Reference "The actual product that was administered. This should be a produc code or a reference to an actual Medication resource" "The actual product that was administered. This can be just text (not desired), or a code (e.g. 1696392 = Neisvac C Dos 0,5ml) or a reference to an actual Medication product (e.g. http://server/Medication/1696392)"
* administeredProduct.product ^comment = "In the case where the product is not known, use code \"unknown\""
* administeredProduct.lotNumber 0..1 string "The lot number" "The lot number"
* administeredProduct.expirationDate 0..1 date "The expiration date of the product." "The expiration date of the product."
* location 0..1 Reference "The location where the immunization is performed." "The location where the immunization administration was performed. This can be a text (e.g. 'at the physician's office' or a code e.g. '00078' meaning 'patient's home' or a resource (Location) if one exists e.g. 'Location/kind-en-gezin-092375' which could be defining 'Kind en Gezin Gent Koepoortkaai' "
* note 0..1 http://hl7.org/fhir/StructureDefinition/Attachment "Additional notes for the vaccination." "Additional notes for the vaccination"


