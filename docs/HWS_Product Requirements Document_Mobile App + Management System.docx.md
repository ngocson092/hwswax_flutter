![][image1]

**Hollywood Waxing Studio Mobile App \+**   
**Management System Requirements**

**Product Requirements Document (PRD)**

**6096 FRANCONIA ROAD SUITE C**

**ALEXANDRIA, VA 22310**

** [(703) 321-6165](tel:+17033216165)**

[**hwswax@gmail.com**](mailto:hwswax@gmail.com)

**Table of Contents**

**1**	Introduction	[4](#introduction)

**1.1**	Project Goal	[4](#project-goal)

**1.2**	Core Components	[4](#core-components)

**2**	User Types & Roles	[4](#user-types-&-roles)

**3**	Functional Requirements for the Client Mobile App	[5](#functional-requirements-for-the-client-mobile-app)

**3.1**	Account Creation and Login	[5](#account-creation-and-login)

**3.1.1**	Profile fields:	[5](#profile-fields:)

**3.2**	Service Browsing	[6](#service-browsing)

**3.2.1**	Example categories:	[6](#example-categories:)

**3.3**	Booking Appointments	[6](#booking-appointments)

**3.3.1**	Booking requirements:	[7](#booking-requirements:)

**3.4**	Rebooking / Quick Book	[7](#rebooking-/-quick-book)

**3.5**	Rescheduling and Cancellation	[7](#rescheduling-and-cancellation)

**3.5.1**	Business rules:	[7](#business-rules:)

**3.6**	Appointment History	[7](#appointment-history)

**3.7**	Notifications and Reminders	[7](#notifications-and-reminders)

**3.7.1**	Notification channels:	[8](#notification-channels:)

**3.7.2**	Notification preferences:	[8](#notification-preferences:)

**3.8**	Loyalty / Referral / Rewards	[8](#loyalty-/-referral-/-rewards)

**3.9**	Gift Certificates	[8](#gift-certificates)

**3.10**	Product Browsing	[8](#product-browsing)

**3.11**	Reviews and Feedback	[9](#reviews-and-feedback)

**3.12**	Contact and Support	[9](#contact-and-support)

**4**	Functional Requirements for Employee / Staff System	[9](#functional-requirements-for-employee-/-staff-system)

**4.1**	Staff Login	[9](#staff-login)

**4.2**	Staff Schedule View	[9](#staff-schedule-view)

**4.3**	Appointment Status Updates	[9](#appointment-status-updates)

**4.4**	Client Notes	[10](#client-notes)

**4.5**	Availability Management	[10](#availability-management)

**5**	6\. Functional Requirements — Manager / Admin Dashboard	[10](#6.-functional-requirements-—-manager-/-admin-dashboard)

**5.1**	Appointment Dashboard	[10](#appointment-dashboard)

**5.1.1**	Managers should be able to:	[10](#managers-should-be-able-to:)

**5.2**	Client Management / CRM	[11](#client-management-/-crm)

**5.2.1**	Suggested segments:	[11](#suggested-segments:)

**5.3**	Service Management	[11](#service-management)

**5.4**	Staff Management	[11](#staff-management)

**5.5**	Campaign and Promotion Management	[12](#campaign-and-promotion-management)

**5.5.1**	Promotion examples:	[12](#promotion-examples:)

**5.6**	Gift Certificate Management	[12](#gift-certificate-management)

**5.7**	Product Management	[12](#product-management)

**5.8**	Inventory Lite	[13](#inventory-lite)

**5.8.1**	Features	[13](#features)

**5.9**	Metrics / Reporting Dashboard	[13](#metrics-/-reporting-dashboard)

**5.9.1**	Dashboard requirements:	[14](#dashboard-requirements:)

**6**	Non-Functional Requirements	[14](#non-functional-requirements)

**6.1**	Usability	[14](#usability)

**6.2**	Mobile Responsiveness	[14](#mobile-responsiveness)

**6.3**	Performance	[14](#performance)

**6.4**	Security	[14](#security)

**6.5**	Reliability	[15](#reliability)

**6.6**	Scalability	[15](#scalability)

**7**	Integration Requirements	[15](#integration-requirements)

**7.1**	Key existing apps to evaluate:	[15](#key-existing-apps-to-evaluate:)

**7.2**	Important developer questions:	[15](#important-developer-questions:)

**8**	Business Rules to Define	[16](#business-rules-to-define)

**8.1**	Booking Rules	[16](#booking-rules)

**8.2**	Cancellation Rules	[16](#cancellation-rules)

**8.3**	Promotion Rules	[16](#promotion-rules)

**8.4**	Gift Certificate Rules	[16](#gift-certificate-rules)

**8.5**	Referral Rules	[16](#referral-rules)

**8.6**	Staff Rules	[16](#staff-rules)

**9**	Recommended MVP Scope	[17](#recommended-mvp-scope)

**9.1**	Client App MVP	[17](#client-app-mvp)

**9.2**	Admin MVP	[17](#admin-mvp)

**10**	Future Phase Features	[17](#future-phase-features)

**11**	UX / Design Requirements	[18](#ux-/-design-requirements)

Design priorities:	[18](#design-priorities:)

1. # **Introduction** {#introduction}

   1. ## **Project Goal** {#project-goal}

Create a mobile app and management system for **Hollywood Waxing Studio** that allows:

* Clients to easily book, cancel, reschedule, and manage appointments  
* Staff to manage schedules and client interactions  
* Managers/Admins to oversee appointments, services, promotions, campaigns, products, gift certificates, reporting, and business operations  
* The business to improve customer retention, operational efficiency, marketing visibility, and revenue growth

The system should be **simple, clean, easy to use, mobile-friendly, and non-complex**, while still supporting the core needs of a waxing studio.

2. ## **Core Components** {#core-components}

* Client Mobile App

* Employee / Manager Admin Dashboard

* Centralized Appointment Management System

* Marketing / Promotion Tools

* Reporting / Analytics Dashboard

* Product / Gift Certificate Management

* Notification / Messaging System

* Settings / Role-Based Access Controls

2. # **User Types & Roles** {#user-types-&-roles}

There are two user types: Client and HWS Staff. Within the HWS Staff are sub-roles who function within the space.

| Client | HWS Staff |
| :---- | :---- |
| ·       create an account ·       log in securely ·       browse services ·       book appointments ·       reschedule appointments ·       cancel appointments ·       view appointment history ·       receive reminders and promotions ·       manage profile and preferences ·       purchase or redeem gift certificates ·       view loyalty/referral information ·       leave Google reviews ·       contact studio ** ** | **Front Desk / Reception / Staff** view daily appointments manage appointment changes view client details check clients in/out add notes assist with booking view service/provider availability **Wax Specialist / Service Provider** view personal schedule view client notes relevant to service update appointment status mark appointment complete add post-service notes manage limited availability or time blocks **Manager / Admin** manage all appointments manage staff schedules manage services, pricing, and durations manage campaigns and promotions manage products and inventory manage gift certificates view metrics and reports manage content and notifications manage users, permissions, and settings **Super Admin / Owner** access all manager functions manage business-wide settings review KPI dashboards manage integrations configure permissions export business data |

3. # **Functional Requirements for the Client Mobile App** {#functional-requirements-for-the-client-mobile-app}

   1. ## **Account Creation and Login** {#account-creation-and-login}

The app must allow clients to:

* sign up with email and password

* sign up/log in with phone number if desired

* reset password

* stay signed in securely

* verify account via email or SMS

* update account details

  1. ### **Profile fields:** {#profile-fields:}

* first name

* last name

* phone number

* email

* birthday

* preferred contact method

* preferred provider

* preferred services

* notes/preferences if appropriate

* marketing opt-in preferences

  2. ## **Service Browsing** {#service-browsing}

Clients must be able to:

* browse all available services

* view service categories

* view pricing

* view estimated service duration

* view service descriptions

* view pre-care and post-care instructions

* view any restrictions or preparation notes

* view promotions attached to services if applicable

  1. ### **Example categories:** {#example-categories:}

* facial waxing

* body waxing

* brazilian / bikini

* brows

* men’s services

* packages or bundles

* add-on services

---

3. ## **Booking Appointments** {#booking-appointments}

Clients must be able to:

* select a service

* select a provider or choose no preference

* select date and time

* view available appointment slots in real time

* confirm booking

* receive confirmation immediately

* add appointment to calendar

* book multiple services in one visit if allowed

  1. ### **Booking requirements:** {#booking-requirements:}

* prevent double-booking

* respect staff schedules

* respect service duration and buffer times

* block unavailable times

* allow studio-configured booking rules

* optionally require deposit if business chooses

* show cancellation policy before confirmation

  4. ## **Rebooking / Quick Book** {#rebooking-/-quick-book}

Clients must be able to:

* rebook the same service quickly

* book again with the same provider

* see recommended rebooking windows

* book from appointment history

* use a “book again” shortcut

This should be a priority feature because repeat clients need speed and convenience.

5. ## **Rescheduling and Cancellation** {#rescheduling-and-cancellation}

Clients must be able to:

* reschedule appointments within policy limits

* cancel appointments within policy limits such as a cancellation fee

* view cancellation policy clearly

* receive cancellation or reschedule confirmation

  1. ### **Business rules:** {#business-rules:}

* admin should be able to configure how many hours in advance a cancellation is allowed

* system should flag late cancellations and no-shows

* cancellation reason may be optionally collected

  6. ## **Appointment History** {#appointment-history}

Clients must be able to:

* view past appointments

* view upcoming appointments

* see service name, provider, date, price, and status

* use past appointments to rebook

  7. ## **Notifications and Reminders** {#notifications-and-reminders}

Clients should receive:

* booking confirmations

* reminder notifications

* cancellation confirmations

* reschedule confirmations

* promotion notifications

* follow-up care reminders

* rebooking reminders based on service cycle

  1. ### **Notification channels:** {#notification-channels:}

* push notification

* email

* SMS if enabled

  2. ### **Notification preferences:** {#notification-preferences:}

* clients must be able to opt in/out by type where legally required

  8. ## **Loyalty / Referral / Rewards** {#loyalty-/-referral-/-rewards}

Clients should be able to:

* view referral offers

* share referral code or link

* track referral status

* view points or loyalty balance if implemented

* view earned rewards

* redeem eligible rewards

*Keep this simple and visible.*

9. ## **Gift Certificates** {#gift-certificates}

Clients should be able to:

* purchase digital gift certificates

* choose amount or service-based gift certificate

* send to self or another recipient

* enter a gift certificate code during booking or checkout

* view remaining balance if assigned to account

  10. ## **Product Browsing** {#product-browsing}

If retail products are offered, clients should be able to:

* browse products

* view prices

* view product descriptions

* see recommended products related to services

* purchase products if ecommerce is included

* reserve products for in-store pickup if ecommerce is limited

  11. ## **Reviews and Feedback** {#reviews-and-feedback}

Clients should be able to:

* leave service feedback

* leave a rating

* submit comments

* be prompted after completed appointments

* optionally be linked to leave a Google review

  12. ## **Contact and Support** {#contact-and-support}

Clients should be able to:

* call the studio

* message the studio

* view studio address and map

* view hours

* view FAQs

* submit general questions

4. # **Functional Requirements for Employee / Staff System** {#functional-requirements-for-employee-/-staff-system}

   1. ## **Staff Login** {#staff-login}

Staff must be able to:

* log in securely

* access only allowed features by role

  2. ## **Staff Schedule View** {#staff-schedule-view}

Staff must be able to:

* view their daily schedule

* view weekly schedule

* view appointment details

* view service durations

* see cancellations and changes in real time

  3. ## **Appointment Status Updates** {#appointment-status-updates}

Staff should be able to:

* mark appointment as confirmed

* mark client checked in

* mark appointment completed

* mark no-show

* mark cancelled if authorized

  4. ## **Client Notes** {#client-notes}

Authorized staff should be able to:

* view client history relevant to service

* view allergies/sensitivities if included and handled appropriately

* add service notes

* add follow-up notes

* mark internal notes as private

  5. ## **Availability Management** {#availability-management}

Providers should be able to:

* indicate availability

* request or set time off if permitted

* block time for breaks

* block time for meetings or other events

Managers should be able to override and manage final schedules.

---

5. # **6\. Functional Requirements — Manager / Admin Dashboard** {#6.-functional-requirements-—-manager-/-admin-dashboard}

   1. ## **Appointment Dashboard** {#appointment-dashboard}

The admin dashboard should include:

* daily calendar view

* weekly calendar view

* provider schedule view

* studio-wide appointment view

* search and filter by client, provider, service, date, status

* drag-and-drop scheduling if feasible

* waitlist visibility if included

  1. ### **Managers should be able to:** {#managers-should-be-able-to:}

* create bookings manually

* reschedule appointments

* cancel appointments

* assign providers

* block or unblock time

* override certain rules if permissions allow

  2. ## **Client Management / CRM** {#client-management-/-crm}

Managers should be able to:

* search client profiles

* view appointment history

* view spend history

* view notes

* view referral activity

* view gift certificate usage

* view package usage if offered

* tag clients into simple segments

  1. ### **Suggested segments:** {#suggested-segments:}

* new clients

* active clients

* inactive clients

* VIP/high spend clients

* referral clients

* birthday month clients

  3. ## **Service Management** {#service-management}

Managers should be able to:

* create services

* edit services

* archive services

* set service price

* set service duration

* set cleanup/buffer time

* assign service to providers

* group services by category

* add descriptions and care instructions

* mark services active/inactive

  4. ## **Staff Management** {#staff-management}

Managers should be able to:

* create staff accounts

* assign roles

* manage permissions

* assign services to staff

* manage working hours

* manage blocked time

* manage commission-related data if used

* activate or deactivate staff access

  5. ## **Campaign and Promotion Management** {#campaign-and-promotion-management}

Managers should be able to:

* create promotions

* set promotion name

* set start and end date

* define promo rules

* limit promo to certain services or categories

* assign promo codes

* cap usage if needed

* activate/deactivate promotion

* track usage and performance

  1. ### **Promotion examples:** {#promotion-examples:}

* $10 off service over $50

* refer a friend offer

* seasonal package

* birthday offer

* first-time client offer

  6. ## **Gift Certificate Management** {#gift-certificate-management}

Managers should be able to:

* create gift certificate programs

* generate codes

* assign balances

* track redemption

* reissue when appropriate

* view outstanding balances

* set expiration rules if applicable

  7. ## **Product Management** {#product-management}

Managers should be able to:

* create products

* add descriptions and pricing

* upload product images

* assign product categories

* manage inventory counts

* receive low-stock alerts

* mark products active/inactive

* track product sales if ecommerce exists

---

8. ## **Inventory Lite** {#inventory-lite}

The system should support a simple inventory module for:

* wax products

* retail products

* studio supplies

* aftercare products

  1. ### **Features** {#features}

* current stock counts

* low inventory alerts

* manual stock adjustments

* notes on reorder levels

* basic vendor field optional

* usage visibility by product if simple to implement

*This should remain light and not overly complex.*

9. ## **Metrics / Reporting Dashboard** {#metrics-/-reporting-dashboard}

Managers and owner should be able to view metrics such as:

* total appointments

* completed appointments

* cancelled appointments

* no-shows

* revenue by day/week/month

* revenue by service

* revenue by provider

* new vs returning clients

* rebooking rate

* referral performance

* promotion performance

* gift certificate sales and redemptions

* client retention trends

* average ticket value

* busiest days/times

  1. ### **Dashboard requirements:** {#dashboard-requirements:}

* easy-to-read visual summaries

* filter by date range

* export reports

* role-based visibility

6. # **Non-Functional Requirements** {#non-functional-requirements}

   1. ## **Usability** {#usability}

The system must:

* be simple and intuitive

* require minimal training

* use clean and professional design

* align with Hollywood Waxing Studio brand

* be easy to navigate for both clients and staff 

* minimize clicks for common tasks

  2. ## **Mobile Responsiveness** {#mobile-responsiveness}

* client experience must work well on iPhone and Android

* admin dashboard should work on desktop and tablet at minimum

* mobile responsiveness for manager functions is preferred

  3. ## **Performance** {#performance}

The system should:

* load quickly

* return appointment availability in near real time

* update booking status reliably

* support concurrent users without major lag

  4. ## **Security** {#security}

The system must:

* use secure authentication

* encrypt sensitive data in transit

* store passwords securely

* enforce role-based access

* log admin actions where appropriate

* protect client personal information

* comply with applicable privacy and payment security requirements

  5. ## **Reliability** {#reliability}

The system should:

* minimize downtime

* handle booking conflicts gracefully

* retain audit history where useful

* provide backup/recovery plan for business continuity

  6. ## **Scalability** {#scalability}

The solution should allow for:

* more staff users in the future

* additional services

* additional promotions

* future ecommerce expansion

* possible future multi-location support, even if not implemented now

7. # **Integration Requirements** {#integration-requirements}

The goal is to minimize dependency on other other systems. However, the items belows should be evaluated as these are the current state of the systems used to manage the business.

1. ## **Key existing apps to evaluate:** {#key-existing-apps-to-evaluate:}

* existing website: [**www.hwswax.com**](http://www.hwswax.com/)

* current booking platform: **MangoMint**

* payment processor

* email platform

* SMS provider

* push notification service

* Google Analytics / conversion tracking

* Google Business Profile related workflow if possible

* gift card/payment system

* ecommerce or POS if relevant

  2. ## **Important developer questions:** {#important-developer-questions:}

* Can data from past systems be migrated to the new app?

* Will payments stay in existing system or move into the new app?

8. # **Business Rules to Define** {#business-rules-to-define}

Below are business requirements to maintain a successful user workflow: 

1. ## **Booking Rules** {#booking-rules}

* how far in advance appointments can be booked

* same-day booking rules

* whether walk-in slots exist

* service-specific time buffers

* provider assignment rules

  2. ## **Cancellation Rules** {#cancellation-rules}

* minimum hours before cancellation

* no-show policy

* late cancellation fee rules

* whether deposits are kept

  3. ## **Promotion Rules** {#promotion-rules}

* stackable or non-stackable promotions

* one-time use or repeat use

* expiration rules

* applicable services/providers

  4. ## **Gift Certificate Rules** {#gift-certificate-rules}

* amount-based or service-based

* expiration policy

* partial redemption allowed or not

* transferable or account-bound

  5. ## **Referral Rules** {#referral-rules}

* when referral reward is triggered

* who qualifies as a new client

* how reward is redeemed

  6. ## **Staff Rules** {#staff-rules}

* which roles can edit bookings

* which roles can view metrics

* which roles can create promotions

* who can issue refunds or adjust gift certificates

9. # **Recommended MVP Scope** {#recommended-mvp-scope}

To keep the first version realistic, I recommend the MVP include:

1. ## **Client App MVP** {#client-app-mvp}

* account creation/login

* browse services

* book appointment

* reschedule/cancel

* appointment history

* notifications/reminders

* book again

* profile management

* contact studio

* gift certificate redemption

* promo display

  2. ## **Admin MVP** {#admin-mvp}

* calendar/dashboard

* appointment management

* client lookup

* service management

* staff management

* promotion management

* gift certificate management

* basic reporting

* inventory lite

* role-based permissions

10. # **Future Phase Features** {#future-phase-features}

These can be phase 2 or later:

* loyalty points system

* in-app chat

* ecommerce for products

* waitlist automation

* memberships/subscriptions

* AI-powered marketing recommendations

* advanced CRM segmentation

* automated review routing

* multi-location support

* commission/payroll integrations

* deeper SEO/content publishing tools

11. # **UX / Design Requirements** {#ux-/-design-requirements}

The app and dashboard should reflect the brand:

* clean

* feminine but professional

* welcoming

* trustworthy

* polished

* minimal clutter

* high-end but approachable

  ### **Design priorities:** {#design-priorities:}

* fast booking

* easy readability

* smooth navigation

* elegant service presentation

* visible promotions without feeling gimmicky

[image1]: <data:image/png;base64,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>