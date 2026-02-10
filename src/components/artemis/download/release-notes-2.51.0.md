---
layout: default_md
title: Artemis 2.51.0 Release Notes
title-class: page-title-artemis
type: artemis
---
 - [A list of commits](commit-report-2.51.0).

 - Please see the ["Versions"](https://artemis.apache.org/components/artemis/documentation/latest/versions.html) chapter in the User Guide for upgrade instructions.

**Note**: This release requires use of Java 17 or above.


## Bugs Fixed

* [ARTEMIS-5851](https://issues.apache.org/jira/browse/ARTEMIS-5851) - When an XA transaction times out on the server side, subsequent client operations are silently auto-committed instead of being rejected
* [ARTEMIS-5854](https://issues.apache.org/jira/browse/ARTEMIS-5854) - Can't filter on some consumer attributes
* [ARTEMIS-5861](https://issues.apache.org/jira/browse/ARTEMIS-5861) - Netty acceptor not shutting down
* [ARTEMIS-5863](https://issues.apache.org/jira/browse/ARTEMIS-5863) - Configuration export as properties would throw NPE for invalid acceptor URIs
* [ARTEMIS-5874](https://issues.apache.org/jira/browse/ARTEMIS-5874) - Deadlock in STOMP protocol on DISCONNECT with receipt
* [ARTEMIS-5887](https://issues.apache.org/jira/browse/ARTEMIS-5887) - artemis-bom relocation pom is ineffective when importing
* [ARTEMIS-5890](https://issues.apache.org/jira/browse/ARTEMIS-5890) - Closing a connection while large message is being delivered could show exceptions in the log

## New Features

* [ARTEMIS-5852](https://issues.apache.org/jira/browse/ARTEMIS-5852) - Lock coordination for acceptors
* [ARTEMIS-5862](https://issues.apache.org/jira/browse/ARTEMIS-5862) - CLI command to export broker.properties

## Tasks

* [ARTEMIS-5850](https://issues.apache.org/jira/browse/ARTEMIS-5850) - Consolidate web console docs
* [ARTEMIS-5869](https://issues.apache.org/jira/browse/ARTEMIS-5869) - Clarify initial connection audit logging
* [ARTEMIS-5870](https://issues.apache.org/jira/browse/ARTEMIS-5870) - Update Qpid protonj2 test driver version to v1.1.0

## Dependency Upgrades

* [ARTEMIS-5839](https://issues.apache.org/jira/browse/ARTEMIS-5839) - Bump org.apache:apache from 35 to 37
* [ARTEMIS-5860](https://issues.apache.org/jira/browse/ARTEMIS-5860) - Update to qpid-jms 1.16.0
* [ARTEMIS-5872](https://issues.apache.org/jira/browse/ARTEMIS-5872) - Update artemis-console to 1.6.0
* [ARTEMIS-5879](https://issues.apache.org/jira/browse/ARTEMIS-5879) - Bump org.postgresql:postgresql from 42.7.8 to 42.7.9
* [ARTEMIS-5880](https://issues.apache.org/jira/browse/ARTEMIS-5880) - Bump selenium.version from 4.39.0 to 4.40.0
* [ARTEMIS-5881](https://issues.apache.org/jira/browse/ARTEMIS-5881) - Bump org.codehaus.mojo:javacc-maven-plugin from 3.1.1 to 3.2.0
* [ARTEMIS-5882](https://issues.apache.org/jira/browse/ARTEMIS-5882) - Bump com.fasterxml.jackson:jackson-bom from 2.20.1 to 2.21.0
* [ARTEMIS-5883](https://issues.apache.org/jira/browse/ARTEMIS-5883) - Bump org.apache.groovy:groovy-all from 5.0.3 to 5.0.4
* [ARTEMIS-5884](https://issues.apache.org/jira/browse/ARTEMIS-5884) - Bump org.jboss.marshalling:jboss-marshalling-river from 2.2.3.Final to 2.3.0
* [ARTEMIS-5885](https://issues.apache.org/jira/browse/ARTEMIS-5885) - Bump commons-codec:commons-codec from 1.20.0 to 1.21.0
* [ARTEMIS-5886](https://issues.apache.org/jira/browse/ARTEMIS-5886) - Bump jetty.version from 12.1.5 to 12.1.6