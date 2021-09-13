# ITB Implementation Guide

### Introduction

Welcome to the Implementation Guide for WOF-PORTAL and ITB

This guide describes all the included elements and how they can be used to build an Internet Time Booking application.

### Getting started

#### Steps to show available time slots

1. Get the **HealthCareService**s
* *Get configurations,connect*
2. Get the **ActivityDefinition**s
* *Get configurations,connect*
3. Get the **PractitionerRole**s for specified HealthCareService
* *Get configurations,connect*
4. Get the **Schedule**s for specified actor and service-type
* *Get configurations,connect*
5. Get the **Slot**s by service-type, start-time and duration 
* *Get configurations,connect*


### FHIR Endpoints

#### HealthCareService
*  GET {url}/HealthcareService

    **Example:**    
    
        GET http://localhost:5017/portal/fhir/PractitionerRole?service=HealthcareService/b81f2315-7476-45e8-9ae6-51f547e2d82e

#### ActivityDefinition
*  GET {url}/ActivityDefinition

   **Example:**

        GET http://localhost:5017/cof-portal/fhir/ActivityDefinition

#### 3. PractitionerRole
* GET {url}/PractitionerRole

    **Search params:**
    * *service* - a reference to a HealthCareService (HealthCareService/identifier)

    **Example:**

        GET http://localhost:5017/portal/fhir/PractitionerRole?service=HealthcareService/b81f2315-7476-45e8-9ae6-51f547e2d82e

#### Schedule 
* GET {url}/Schedule

    **Search params:**
    
    * *actor* - a reference to a HealthCareService
    * *service-type* - a code from csServiceTypes

    **Example:**

        GET http://localhost:5017/fc580e7c-7fd8-4acd-92e9-42cb052763d4/fhir/Schedule?actor=HealthcareService/b81f2315-7476-45e8-9ae6-51f547e2d82e&service-type=examination

#### Slot
* GET {}/Slot
    
    **Search params:**
    * *schedule* - an identifier
    * *service-type* - a code from [csServiceTypes](https://build.fhir.org/ig/servicewell/wof-portal-fhir-ig/CodeSystem-csServiceType.html)
    * *duration* - in minutes
    * *start* - a date

    **Example:**

        GET http://localhost:5017/fc580e7c-7fd8-4acd-92e9-42cb052763d4/fhir/Slot?schedule=a17f8424-9c11-4421-9523-b67631a67e7c&service-type=examination&duration=30,0&start=gt2021-09-13T00:00&start=lt2021-10-01T00:0


### API URL Convention

`https://url/{resourceType}/{id} ?{params}`

### Usage scenarios

### Servers

### Patient test data

### References