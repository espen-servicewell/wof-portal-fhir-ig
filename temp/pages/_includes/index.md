# ITB Implementation Guide

### Introduction

Welcome to the Implementation Guide for WOF-PORTAL and ITB

This guide describes all the included elements and how they can be used to build an Internet Time Booking application.

### Getting started



#### Steps to show available time slots


1. Get the **HealthCareService**s

1. Get the **ActivityDefinition**s

1. Get the **PractitionerRole**s for specified HealthCareService

1. Get the **Schedule**s for specified actor and service-type

1. Get the **Slot**s by service-type, start-time and duration 


#### Steps to edit and reschedule a booking

Pre-requisites: User has logged in

1. Get the **HealthCareService**s 

*This is a search operation that returns a Bundle of HealthCareServices. Both active and inactive are returned.

1. Get the **ActivityDefinition**s

1. Display the clinics

1. *Select clinic*

1. Get the **Appointment**s for the specified HealthCareService

1. Get the **PractitionerRole**s for the specified HealthCareService 

1. *What are the PractitionerRoles used for here?*

1. Get **Patient**  *What is the patient(s) used for here?*

1. *After the previous step information about the appointments in the selected clinic can be displayed*

1. *Select appointment to be rescheduled*

1. Get the **Schedule**s for specified actor and PractitionerRole

1. Get the **HealthCareService**s 

1. Get the **Appointment**s

1. Get **Slot** for specified **Schedule** and **Appointment** 

1. *Select a new date and time*

1. Put **Appointment**. 

1. Get the **HealthCareService**s 

1. Get the **Appointment**s for the specified HealthCareService

1. Get the **PractitionerRole**s for the specified HealthCareService 
1. Get **Patient**  *What is the patient(s) used for here?*




----
1. Get **Schedule** by Id

----





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