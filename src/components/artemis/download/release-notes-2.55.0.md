---
layout: default_md
title: Artemis 2.55.0 Release Notes
title-class: page-title-artemis
type: artemis
---
 - [A list of commits](commit-report-2.55.0).

 - Please see the ["Versions"](https://artemis.apache.org/components/artemis/documentation/latest/versions.html) chapter in the User Guide for upgrade instructions.

**Note:** As part of [establishing Apache Artemis](/news/artemis-tlp) as an independent project, the [Maven groupId has switched to _org.apache.artemis_](/artemis-tlp-groupid-migration).

**Note**: This release requires use of Java 17 or above.


## Bugs Fixed

* [ARTEMIS-6056](https://issues.apache.org/jira/browse/ARTEMIS-6056) - Proper exception if wildcard address is used on producers
* [ARTEMIS-6076](https://issues.apache.org/jira/browse/ARTEMIS-6076) - Auto-delete incorrectly removes addresses with messages when no direct bindings exist
* [ARTEMIS-6084](https://issues.apache.org/jira/browse/ARTEMIS-6084) - Windows: Web console fails to start in Artemis 2.54.0 with InvalidPathException (/C:/.../console.war/WEB-INF)
* [ARTEMIS-6085](https://issues.apache.org/jira/browse/ARTEMIS-6085) - NullPointerException calling MQTTSessionState.getSession()
* [ARTEMIS-6094](https://issues.apache.org/jira/browse/ARTEMIS-6094) - Allow a security role to be composed by a set of other security roles (yaml properties)
* [ARTEMIS-6110](https://issues.apache.org/jira/browse/ARTEMIS-6110) - json broker properties doesn't load arrays properly
* [ARTEMIS-6119](https://issues.apache.org/jira/browse/ARTEMIS-6119) - Stomp subscriber cannot receive compressed messages

## New Features

* [ARTEMIS-6063](https://issues.apache.org/jira/browse/ARTEMIS-6063) - Improve OIDC Login Module: configurable mandatory claims and role mapping

## Improvements

* [ARTEMIS-4692](https://issues.apache.org/jira/browse/ARTEMIS-4692) - Allow export of specific queues
* [ARTEMIS-6049](https://issues.apache.org/jira/browse/ARTEMIS-6049) - Mask cluster-password specified via create command
* [ARTEMIS-6057](https://issues.apache.org/jira/browse/ARTEMIS-6057) - support literal matches for FQQN security settings, even if they contain wildcards
* [ARTEMIS-6065](https://issues.apache.org/jira/browse/ARTEMIS-6065) - Make SSL handshake timeout configurable on acceptors
* [ARTEMIS-6067](https://issues.apache.org/jira/browse/ARTEMIS-6067) - Avoid reflection on Downstream core federation. Using Direct instantiation instead.
* [ARTEMIS-6082](https://issues.apache.org/jira/browse/ARTEMIS-6082) - Optimize retryMessage
* [ARTEMIS-6099](https://issues.apache.org/jira/browse/ARTEMIS-6099) - Add log message when configuration reload is complete

## Tests

* [ARTEMIS-6115](https://issues.apache.org/jira/browse/ARTEMIS-6115) - Add JMH test for SecurityManagerUtil.authorize

## Tasks

* [ARTEMIS-6066](https://issues.apache.org/jira/browse/ARTEMIS-6066) - Deadlock with FederatedQueueConsumerImpl
* [ARTEMIS-6073](https://issues.apache.org/jira/browse/ARTEMIS-6073) - Add SECURITY.md
* [ARTEMIS-6077](https://issues.apache.org/jira/browse/ARTEMIS-6077) - Document threat model
* [ARTEMIS-6092](https://issues.apache.org/jira/browse/ARTEMIS-6092) - Add AGENTS.md guidelines for AI assistants
* [ARTEMIS-6101](https://issues.apache.org/jira/browse/ARTEMIS-6101) - Add cluster credentials to server2 of clustered-grouping example

## Dependency Upgrades

* [ARTEMIS-6071](https://issues.apache.org/jira/browse/ARTEMIS-6071) - Bump org.junit:junit-bom from 6.0.3 to 6.1.0
* [ARTEMIS-6072](https://issues.apache.org/jira/browse/ARTEMIS-6072) - Bump plugin.components.maven.version from 3.9.15 to 3.9.16
* [ARTEMIS-6078](https://issues.apache.org/jira/browse/ARTEMIS-6078) - Bump org.jboss.arquillian:arquillian-bom from 1.10.1.Final to 1.10.2.Final
* [ARTEMIS-6079](https://issues.apache.org/jira/browse/ARTEMIS-6079) - Bump netty.version from 4.1.132.Final to 4.1.135.Final
* [ARTEMIS-6083](https://issues.apache.org/jira/browse/ARTEMIS-6083) - Bump org.apache.commons:commons-configuration2 from 2.14.0 to 2.15.1
* [ARTEMIS-6086](https://issues.apache.org/jira/browse/ARTEMIS-6086) - Bump mockserver.version from 6.0.0 to 7.2.0
* [ARTEMIS-6087](https://issues.apache.org/jira/browse/ARTEMIS-6087) - Bump jline.version from 4.1.2 to 4.2.1
* [ARTEMIS-6088](https://issues.apache.org/jira/browse/ARTEMIS-6088) - Bump com.nimbusds:nimbus-jose-jwt from 10.9 to 10.9.1
* [ARTEMIS-6089](https://issues.apache.org/jira/browse/ARTEMIS-6089) - Bump activemq5-version from 5.19.6 to 5.19.7
* [ARTEMIS-6097](https://issues.apache.org/jira/browse/ARTEMIS-6097) - Bump jetty.version from 12.1.9 to 12.1.10
* [ARTEMIS-6098](https://issues.apache.org/jira/browse/ARTEMIS-6098) - Bump com.fasterxml.jackson:jackson-bom from 2.21.3 to 2.22.0
* [ARTEMIS-6100](https://issues.apache.org/jira/browse/ARTEMIS-6100) - Bump io.netty:netty-tcnative-boringssl-static from 2.0.77.Final to 2.0.78.Final
* [ARTEMIS-6112](https://issues.apache.org/jira/browse/ARTEMIS-6112) - Bump io.micrometer:micrometer-core from 1.16.5 to 1.17.0
* [ARTEMIS-6113](https://issues.apache.org/jira/browse/ARTEMIS-6113) - Bump version.org.jacoco from 0.8.14 to 0.8.15
* [ARTEMIS-6114](https://issues.apache.org/jira/browse/ARTEMIS-6114) - Bump org.snakeyaml:snakeyaml-engine from 2.10 to 3.0.1
* [ARTEMIS-6120](https://issues.apache.org/jira/browse/ARTEMIS-6120) - Bump com.google.errorprone:error_prone_core from 2.49.0 to 2.50.0
* [ARTEMIS-6121](https://issues.apache.org/jira/browse/ARTEMIS-6121) - Bump byteman.version from 4.0.26 to 4.0.27
* [ARTEMIS-6122](https://issues.apache.org/jira/browse/ARTEMIS-6122) - Bump selenium.version from 4.44.0 to 4.45.0
* [ARTEMIS-6124](https://issues.apache.org/jira/browse/ARTEMIS-6124) - Bump commons-logging:commons-logging from 1.3.6 to 1.4.0