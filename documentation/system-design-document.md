# System Design Document

### 0. Overview

The System Design Document describes the system requirements, operating environment, system and subsystem architecture, files and database design, input formats, output layouts, human-machine interfaces, detailed design, processing logic, and external interfaces.

### 1. INTRODUCTION

#### 1.1 Purpose and Scope

This Software Design Description (SDD) describes the detailed structure of the components of the Eats Easy system that connects clients and restaurants, and the precise implementation details required to satisfy the requirements as specificted in the Project Proposal Document (PPD). It is assumed that the reader has read the PPD, since this document also defines the implementation details of the desired behaviour given the requirements within it.

#### 1.2 Project Executive Summary

The Goal of the project is to design and develop an easy-to-use system that is possible to help people to find tasty food, near to his location and according to his tastes.<br>

The documentation, development and testing processes shall end before February 2019.<br>

Project milestones:

- High-level design
- Proposal and Design documentation
- Server (API) development
- Eaters and Staff User Interface (UI) development
- Alpha + Testing
- Beta + Testing
- API documentation
- Web page, production deployment etc.

Nearly all of technologies that are going to be used in the Project are new to a team. The learning curve may lead to a risk to stand with fully working starting setup on time. Another risk is the fact that all team members are partly "employed" in this project, which also may lead to another delays of deployment of milestones' versions.<br>

Project's mitigation/enhancement plan is to reduce the unnecessary parts of the Project to minimum and to concentrate on the main/core parts of the System up to the Testing phase.<br>

In the future, the System will be ready to next stage development up to the stage where it can be used by actual clients.

#### 1.2.1 System Overview

The Eats Easy is a system that helps its clients to find a place that offers a food he want fast and easy. It also allows to book a table, order a take-away or sit-inside without phisically being and/or interacting with restaurant staff.<br>
The system consists of a Remote Main Server (hosted at Heroku for this moment), the Eaters App and the Staff App.<br>

_It should provide a high-level system architecture diagram showing a subsystem breakout of the system, if applicable._<br>

_The high-level system architecture or subsystem diagrams should, if applicable, show interfaces to external systems._

#### 1.2.2 Design Constraints

The project does not have any constraints or conflicts with other system due to its standalone-ness and self-sufficiency.

#### 1.2.3 Future Contingencies

In next stages of development some independent services and APIs may be involved, such as network security service using SSL, payment services' APIs, map and advertising APIs and more. All these are irrelevant for current projectal stage, which desing is described in this document.

#### 1.3 Document Organization

This document describes the design of each part of the system, what it does, how it is connected etc. Also it provides a detailed "drill down" review of files and data design, as well as the Human Interface design and more.

#### 1.4 Points of Contact

The management, design, development, configuration, quality assurance and integration team is consists of these members:

- Ron Yanku ([Github](https://github.com/ronyanku))
- Felix Razikov ([Github](https://github.com/guzzur))

#### 1.5 Project References

- This document is based on the original System Design Document template ([Link](https://docs.google.com/document/d/1o749kKtnEzWJrZNkag9w3uHShTiQ9mEk6jeEGTmcTgY/edit?usp=sharing))
- Documentation repository ([Github](https://github.com/eats-easy/eats-easy-doc))
  - Project Proposal Document ([Link](eats-easy-proposal.pdf))
  - Flow Charts Document ([Link](eats-easy-flow-charts.pdf))
  - Application Program Interface (API) Description Document ([Link](application-program0interface.md))
- Main Server repository ([Github](https://github.com/eats-easy/eats-easy-spring))
- Eaters App repository ([Github](https://github.com/eats-easy/eats-easy-eaters))
- Staff App repository ([Github](https://github.com/eats-easy/eats-easy-staff))

#### 1.6 Glossary

- API - Application Program Interface
- Eaters - clients who use the system to find food
- Staff - clients who use the system to serve food

### 2. SYSTEM ARCHITECTURE

_In this section, describe the system and/or subsystem(s) architecture for the project. References to external entities should be minimal, as they will be described in detail in Section 6, External Interfaces._

#### 2.1 System Hardware Architecture

_In this section, describe the overall system hardware and organization. Include a list of hardware components (with a brief description of each item) and diagrams showing the connectivity between the components. If appropriate, use subsections to address each subsystem._

#### 2.2 System Software Architecture

_In this section, describe the overall system software and organization. Include a list of software modules (this could include functions, subroutines, or classes), computer languages, and programming computer-aided software engineering tools (with a brief description of the function of each item). Use structured organization diagrams/object-oriented diagrams that show the various segmentation levels down to the lowest level. All features on the diagrams should have reference numbers and names. Include a narrative that expands on and enhances the understanding of the functional breakdown. If appropriate, use subsections to address each module._<br>
_Note: The diagrams should map to the FRD data flow diagrams, providing the physical process and data flow related to the FRD logical process and data flow._

#### 2.3 Internal Communications Architecture

_In this section, describe the overall communications within the system; for example, LANs, buses, etc. Include the communications architecture(s) being implemented, such as X.25, Token Ring, etc. Provide a diagram depicting the communications path(s) between the system and subsystem modules. If appropriate, use subsections to address each architecture being employed._<br>

_Note: The diagrams should map to the FRD context diagrams._

### 3. FILE AND DATABASE DESIGN

_Interact with the Database Administrator (DBA) when preparing this section. The section should reveal the final design of all database management system (DBMS) files and the non-DBMS files associated with the system under development. Additional information may add as required for the particular project. Provide a comprehensive data dictionary showing data element name, type, length, source, validation rules, maintenance (create, read, update, delete (CRUD) capability), data stores, outputs, aliases, and description. Can be included as an appendix._

#### 3.1 Database Management System Files

_This section reveals the final design of the DBMS files and includes the following information, as appropriate (refer to the data dictionary):_

- _Refined logical model; provide normalized table layouts, entity relationship diagrams, and other logical design information_
- _A physical description of the DBMS schemas, sub-schemas, records, sets, tables, storage page sizes, etc._
- _Access methods (such as indexed, via set, sequential, random access, sorted pointer array, etc.)_
- _Estimate of the DBMS file size or volume of data within the file, and data pages, including overhead resulting from access methods and free space_
- _Definition of the update frequency of the database tables, views, files, areas, records, sets, and data pages; estimate the number of transactions if the database is an online transaction-based system_

#### 3.2 Non-Database Management System Files

_In this section, provide the detailed description of all non-DBMS files and include a narrative description of the usage of each file—including if the file is used for input, output, or both; if this file is a temporary file; an indication of which modules read and write the file, etc.; and file structures (refer to the data dictionary). As appropriate, the file structure information should:_

- _Identify record structures, record keys or indexes, and reference data elements within the records_
- _Define record length (fixed or maximum variable length) and blocking factors_
- _Define file access method—for example, index sequential, virtual sequential, random access, etc._
- _Estimate the file size or volume of data within the file, including overhead resulting from file access methods_
- _Define the update frequency of the file; if the file is part of an online transaction-based system, provide the estimated number of transactions per unit time, and the statistical mean, mode, and distribution of those transactions_

### 4. HUMAN-MACHINE INTERFACE

_This section provides the detailed design of the system and subsystem inputs and outputs relative to the user/operator. Any additional information may be added to this section and may be organized according to whatever structure best presents the operator input and output designs. Depending on the particular nature of the project, it may be appropriate to repeat these sections at both the subsystem and design module levels. Additional information may be added to the subsections if the suggested lists are inadequate to describe the project inputs and outputs._

#### 4.1 Inputs

_This section is a description of the input media used by the operator for providing information to the system; show a mapping to the high-level data flows described in Section 1.2.1, System Overview. For example, data entry screens, optical character readers, bar scanners, etc. If appropriate, the input record types, file structures, and database structures provided in Section 3, File and Database Design, may be referenced. Include data element definitions, or refer to the data dictionary._<br>

_Provide the layout of all input data screens or graphical user interfaces (GUIs) (for example, windows). Provide a graphic representation of each interface. Define all data elements associated with each screen or GUI, or reference the data dictionary._<br>

_This section should contain edit criteria for the data elements, including specific values, range of values, mandatory/optional, alphanumeric values, and length. Also address data entry controls to prevent edit bypassing._<br>

_Discuss the miscellaneous messages associated with operator inputs, including the following:_

- _Copies of form(s) if the input data are keyed or scanned for data entry from printed forms_
- _Description of any access restrictions or security considerations_
- _Each transaction name, code, and definition, if the system is a transaction-based processing system_

#### 4.2 Outputs

_This section describes of the system output design relative to the user/operator; show a mapping to the high-level data flows described in Section 1.2.1. System outputs include reports, data display screens and GUIs, query results, etc. The output files are described in Section 3 and may be referenced in this section. The following should be provided, if appropriate:_

- _Identification of codes and names for reports and data display screens_
- _Description of report and screen contents (provide a graphic representation of each layout and define all data elements associated with the layout or reference the data dictionary)_
- _Description of the purpose of the output, including identification of the primary users_
- _Report distribution requirements, if any (include frequency for periodic reports)_
- _Description of any access restrictions or security considerations_

### 5. DETAILED DESIGN

This section provides the information needed for a system development team to actually build and integrate the hardware components, code and integrate the software modules, and interconnect the hardware and software segments into a functional product. Additionally, this section addresses the detailed procedures for combining separate packages into a single system.

#### 5.1 Hardware Detailed Design

The system is not using any hardware owned by Eats Easy team. The Main Server and the Database is hosted at Heroku Applications Hosting Service and the Eaters and Staff Apps will run on the Android Smartphones and/or Tablets owned by clients.<br>

In order to succesfully run the Main Server, the application hosting service servers shall have these (or higher) abilities/details:

- Run Linux kernel v2.4 or its MS Windows equivalent
- Have JDK 11 installed
- Have the automatic "on push" build and deploy ability
- Have an authorized connection to the Github project's repositories
- Run Postgres Database Server V4.0
- Have a proper ports enabled for accepting HTTP requests

For a local development and/or testing, any computer with similar characteristics is required.<br>

In order to succesfully run the clients Apps, the Smartphone/Tablet shall have these (or higher) abilities/details:

- Have a proper internet connection (cellular or Wi-Fi)
- Run V4.0+ Android Operating System
- Have at least 1GB of RAM (Random Access Memory)
- Have a non-potato processor
- Have a screen resolution of 1280\*720 pixels or higher
- Have a functional touch and drag screen

#### 5.2 Software Detailed Design

_A software module is the lowest level of design granularity in the system. Depending on the software development approach, there may be one or more modules per system. This section should provide enough detailed information about logic and data necessary to completely write source code for all modules in the system (and/or integrate COTS software programs)._<br>
_If there are many modules or if the module documentation is extensive, place it in an appendix or reference a separate document. Add additional diagrams and information, if necessary, to describe each module, its functionality, and its hierarchy. Industry-standard module specification practices should be followed. Include the following information in the detailed module designs:_

- _A narrative description of each module, its function(s), the conditions under which it is used (called or scheduled for execution), its overall processing, logic, interfaces to other modules, interfaces to external systems, security requirements, etc.; explain any algorithms used by the module in detail_
- _For COTS packages, specify any call routines or bridging programs to integrate the package with the system and/or other COTS packages (for example, Dynamic Link Libraries)_
- _Data elements, record structures, and file structures associated with module input and output_
- _Graphical representation of the module processing, logic, flow of control, and algorithms, using an accepted diagramming approach (for example, structure charts, action diagrams, flowcharts, etc.)_
- _Data entry and data output graphics; define or reference associated data elements; if the project is large and complex or if the detailed module designs will be incorporated into a separate document, then it may be appropriate to repeat the screen information in this section_
- _Report layout_

#### 5.3 Internal Communications Detailed Design

_If the system includes more than one component there may be a requirement for internal communications to exchange information, provide commands, or support input/output functions. This section should provide enough detailed information about the communication requirements to correctly build and/or procure the communications components for the system. Include the following information in the detailed designs (as appropriate):_

- _The number of servers and clients to be included on each area network_
- _Specifications for bus timing requirements and bus control_
- _Format(s) for data being exchanged between components_
- _Graphical representation of the connectivity between components, showing the direction of data flow (if applicable), and approximate distances between components; information should provide enough detail to support the procurement of hardware to complete the installation at a given location_
- _LAN topology_

### 6. EXTERNAL INTERFACES

_External systems are any systems that are not within the scope of the system under development, regardless whether the other systems are managed by the State or another agency. In this section, describe the electronic interface(s) between this system and each of the other systems and/or subsystem(s), emphasizing the point of view of the system being developed._

#### 6.1 Interface Architecture

_In this section, describe the interface(s) between the system being developed and other systems; for example, batch transfers, queries, etc. Include the interface architecture(s) being implemented, such as wide area networks, gateways, etc. Provide a diagram depicting the communications path(s) between this system and each of the other systems, which should map to the context diagrams in Section 1.2.1. If appropriate, use subsections to address each interface being implemented._

#### 6.2 Interface Detailed Design

_For each system that provides information exchange with the system under development, there is a requirement for rules governing the interface. This section should provide enough detailed information about the interface requirements to correctly format, transmit, and/or receive data across the interface. Include the following information in the detailed design for each interface (as appropriate):_

- _The data format requirements; if there is a need to reformat data before they are transmitted or after incoming data is received, tools and/or methods for the reformat process should be defined_
- _Specifications for hand-shaking protocols between the two systems; include the content and format of the information to be included in the hand-shake messages, the timing for exchanging these messages, and the steps to be taken when errors are identified_
- _Format(s) for error reports exchanged between the systems; should address the disposition of error reports; for example, retained in a file, sent to a printer, flag/alarm sent to the operator, etc._
- _Graphical representation of the connectivity between systems, showing the direction of data flow_
- _Query and response descriptions_<br>

_If a formal Interface Control Document (ICD) exists for a given interface, the information can be copied, or the ICD can be referenced in this section._

### 7. SYSTEM INTEGRITY CONTROLS

_Sensitive systems use information for which the loss, misuse, modification of, or unauthorized access to that information could affect the conduct of State programs, or the privacy to which individuals are entitled._<br>

_Developers of sensitive State systems are required to develop specifications for the following minimum levels of control:_

- _Internal security to restrict access of critical data items to only those access types required by users_
- _Audit procedures to meet control, reporting, and retention period requirements for operational and management reports_
- _Application audit trails to dynamically audit retrieval access to designated critical data_
- _Standard Tables to be used or requested for validating data fields_
- _Verification processes for additions, deletions, or updates of critical data_

_Ability to identify all audit information by user identification, network terminal identification, date, time, and data accessed or changed._

# Ron

2. system software:

- Java Spring Boot based REST API server and microservices [backend]
  - Spring MVC (Spring&#39;s contender of JSF)
  - Tomcat Java Servlet
  - Maven Dependency Manager
  - JavaBeans functionality
  - Postgresql for our Relational Database
  - XML configuration
- Android app with React Native for the eater [frontend]
- Android app with React Native for the staff [frontend]

3. we use posgresql (through Heroku) for our DB

- ERD pic

- schema pic

The following tables can be changed by an eaters action:

Orders (C, U)

Payments (C,U)

tables (U)

Calls for waiter (C)

Order items (C)

Credit cards (C)

The following tables can be changed by a restaurant worker:

Orders (U)

Dishes (C)

Shifts (C)

Calls resolved (C)

Working (C)

4. human machine interface:

An eater can interact with the app using the following GUI:

1. 1)Restaurant search GUI – this is the starting eater screen, where he can search for a particular restaurant, either by using
   it's full name, or by searching for restaurants through a particular filter, for instance he could search for all restaurants
   with a Japanese cuisine.
2. 2)Restaurant info screen GUI – after choosing a restaurant the user is presented with a GUI that gives him information about the
   restaurant, including a menu and an option to reserve a table assuming there are available tables in real time.
3. 3. "while at restaurant" GUI – this is the GUI the eater sees after making a reservation. here he is presented with the following
      buttons: "place an order"; which leads to another GUI screen. "payment" which again leads to another GUI screen.
      And "call a waite" which registers a call in the DB and the restaurant workers GUI. In addition after placing an order,
      the items ordered are presented in this screen.
4. 4)Order placement GUI – the user sees this when he presses the "place an order" button, he gets a screen with the menu and can add
   items to his order and click "place order" when he is finished.
5. 5)Payment GUI – the user sees this when he presses the "pay" button, he is then prompted with a screen asking him for the
   relevant payment information.

A restaurant worker can interact with the app using the following GUI:

1. 1)Open orders screen – int his screen the workers can see the open orders and update their status. When the chef presses the
   "ready" button, the status of the order changes from "in preparation" to "ready". Then a waiter would deliver the order
   to the eater and press the "delivered" button, changing the order status to "delivered". After the eater pays for his meal,
   the order would disappear from this screen.
2. 2)Change menu GUI – here a worker (with the right permission) can add or remove dishes from the menu.
