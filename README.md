PURPOSE

The purpose of the Orca project is to demonstrate a DDD/CQRS/ES reference architecture with an Orchestration Engine sitting on top. The end goal of this project is to create a design language around the union of Business and Technical Architecture. This language will hopefully create a design specification language that can be used to create any technical implementation desired to meet the design specification. The goal is to remain in the Problem Space as much as possible and automate the Solution Space using any number of open-sourced solutions.

STRUCTURE (Top Down)

 1). Business Process Metrics & Analytics - maps to the business' key business performance metrics
 2). Orchestration - the orchestration of work across multiple business processes. Process Monitoring, Escalation Management, Fault Handling, and Workflow Coordination all takes place in this layer. Orchestration takes place across contextual boundaries.
 3). Workflows - process workflows are carried out in this layer (process rules and decisions). Workflows take place within a contextual boundary.
 4). Business Logic - resource behavior and capabilities within a specific aggregate. Responsible for the consistency of the aggregate.
 
ARCHITECTURAL NEEDS

The following architectural elements are referenced to support the structure and purpose of this project.

 1). Message Broker - messages (commands and events) will be utilized for communication across the system. A queue-based message broker is required to handle this concern.
 2). Microservice Framework - a framework for building out microservices and handling cross-cutting concerns of all services is referenced.
 3). API Gateway
 4). Event Store - the Event Sourcing pattern requires a persistence layer that can effectively persist events per aggregate instance.
 5). Business Rules Engine
 6). Workflow Engine
 7). Orchestration Engine
 8). Analytics Platform - real-time analytics / descriptive analytics / predictive analytics
