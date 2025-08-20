<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile HealthcareService
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:HealthcareService</sch:title>
    <sch:rule context="f:HealthcareService">
      <sch:assert test="count(f:extension[@url = 'http://portal.wof.purified.link/fhir/StructureDefinition/extListReference']) &lt;= 1">extension with URL = 'http://portal.wof.purified.link/fhir/StructureDefinition/extListReference': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://portal.wof.purified.link/fhir/StructureDefinition/NotBookableInITB']) &lt;= 1">extension with URL = 'http://portal.wof.purified.link/fhir/StructureDefinition/NotBookableInITB': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://portal.wof.purified.link/fhir/StructureDefinition/PractitionerSegments']) &lt;= 1">extension with URL = 'http://portal.wof.purified.link/fhir/StructureDefinition/PractitionerSegments': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://portal.wof.purified.link/fhir/StructureDefinition/PlanningHorizonInWeeks']) &lt;= 1">extension with URL = 'http://portal.wof.purified.link/fhir/StructureDefinition/PlanningHorizonInWeeks': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://portal.wof.purified.link/fhir/StructureDefinition/AllowReschedulingFromDentalUnitLocation']) &lt;= 1">extension with URL = 'http://portal.wof.purified.link/fhir/StructureDefinition/AllowReschedulingFromDentalUnitLocation': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://portal.wof.purified.link/fhir/StructureDefinition/extUrlPlaceholder']) &lt;= 1">extension with URL = 'http://portal.wof.purified.link/fhir/StructureDefinition/extUrlPlaceholder': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:HealthcareService/f:telecom</sch:title>
    <sch:rule context="f:HealthcareService/f:telecom">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:rank) &lt;= 1">rank: maximum cardinality of 'rank' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:rank) &lt;= 1">rank: maximum cardinality of 'rank' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:HealthcareService/f:endpoint</sch:title>
    <sch:rule context="f:HealthcareService/f:endpoint">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:reference) &lt;= 1">reference: maximum cardinality of 'reference' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 1">identifier: maximum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
