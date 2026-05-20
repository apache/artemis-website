---
layout: default_md
title: Artemis 2.54.0 Release Notes
title-class: page-title-artemis
type: artemis
---
 - [A list of commits](commit-report-2.54.0).

 - Please see the ["Versions"](https://artemis.apache.org/components/artemis/documentation/latest/versions.html) chapter in the User Guide for upgrade instructions.

**Note:** As part of [establishing Apache Artemis](/news/artemis-tlp) as an independent project, the [Maven groupId has switched to _org.apache.artemis_](/artemis-tlp-groupid-migration).

**Note**: This release requires use of Java 17 or above.


## Bugs Fixed

* [ARTEMIS-5069](https://issues.apache.org/jira/browse/ARTEMIS-5069) - Sends are still hitting the mirror target on temporary queues
* [ARTEMIS-5956](https://issues.apache.org/jira/browse/ARTEMIS-5956) - Temporary Addresses may leak when consumer is not yet closed
* [ARTEMIS-5971](https://issues.apache.org/jira/browse/ARTEMIS-5971) - Advisories Queues/Topics should not be paged
* [ARTEMIS-5973](https://issues.apache.org/jira/browse/ARTEMIS-5973) - Websocket compression acceptor URI option not handled on XML config load
* [ARTEMIS-5976](https://issues.apache.org/jira/browse/ARTEMIS-5976) - Resource Adapter does not pass clientID to session creation
* [ARTEMIS-5986](https://issues.apache.org/jira/browse/ARTEMIS-5986) - NPE when starting embedded broker without Hawtio
* [ARTEMIS-5987](https://issues.apache.org/jira/browse/ARTEMIS-5987) - singleConnection can be in a bad state
* [ARTEMIS-5997](https://issues.apache.org/jira/browse/ARTEMIS-5997) - SimpleAddressManager.getMatchingQueue not inspecting RoutingType
* [ARTEMIS-6011](https://issues.apache.org/jira/browse/ARTEMIS-6011) - Address fullness not being tracked properly for wildcards
* [ARTEMIS-6031](https://issues.apache.org/jira/browse/ARTEMIS-6031) - Handle credit starvation affecting Core bridge
* [ARTEMIS-6033](https://issues.apache.org/jira/browse/ARTEMIS-6033) - The CLI transfer command doesn't close the connection factory
* [ARTEMIS-6034](https://issues.apache.org/jira/browse/ARTEMIS-6034) - The CLI perf client command doesn't close the connection factory

## New Features

* [ARTEMIS-5200](https://issues.apache.org/jira/browse/ARTEMIS-5200) - OAuth Bearer Token Support
* [ARTEMIS-5599](https://issues.apache.org/jira/browse/ARTEMIS-5599) - Support key password in Netty SSL
* [ARTEMIS-6030](https://issues.apache.org/jira/browse/ARTEMIS-6030) - Expose Lock Coordinator status through CLI and Management

## Improvements

* [ARTEMIS-5949](https://issues.apache.org/jira/browse/ARTEMIS-5949) - Clarify manage permission in default broker.xml
* [ARTEMIS-5958](https://issues.apache.org/jira/browse/ARTEMIS-5958) - ArtemisRbacInvocationHandler removeIfNoPermssion is costly
* [ARTEMIS-5959](https://issues.apache.org/jira/browse/ARTEMIS-5959) - ExternalCertificateLoginModule add support for role assignment
* [ARTEMIS-5961](https://issues.apache.org/jira/browse/ARTEMIS-5961) - Add more proactive clean for the AMQP federation control link address
* [ARTEMIS-6009](https://issues.apache.org/jira/browse/ARTEMIS-6009) - Performance improvement when consuming large messages
* [ARTEMIS-6010](https://issues.apache.org/jira/browse/ARTEMIS-6010) - RBAC authorization speedup
* [ARTEMIS-6051](https://issues.apache.org/jira/browse/ARTEMIS-6051) - Use ~/.artemis_history for shell history by default on Linux

## Tests

* [ARTEMIS-5960](https://issues.apache.org/jira/browse/ARTEMIS-5960) - Speed up BridgeTransferTest

## Tasks

* [ARTEMIS-5957](https://issues.apache.org/jira/browse/ARTEMIS-5957) - Ensure consistent style for one-line conditionals, etc.
* [ARTEMIS-5974](https://issues.apache.org/jira/browse/ARTEMIS-5974) - Replace FactoryFinder with Java ServiceLoader
* [ARTEMIS-5993](https://issues.apache.org/jira/browse/ARTEMIS-5993) - Add license header to all Service Provider configuration files
* [ARTEMIS-5995](https://issues.apache.org/jira/browse/ARTEMIS-5995) - Remove activemq-broker dependency from integration tests
* [ARTEMIS-6013](https://issues.apache.org/jira/browse/ARTEMIS-6013) - Add unit tests for SecurityManagerUtil
* [ARTEMIS-6020](https://issues.apache.org/jira/browse/ARTEMIS-6020) - Add checkstyle for generic whitespace
* [ARTEMIS-6037](https://issues.apache.org/jira/browse/ARTEMIS-6037) - Refactor handling of cluster credentials
* [ARTEMIS-6058](https://issues.apache.org/jira/browse/ARTEMIS-6058) - Enforce Checkstyle for double spaces

## Dependency Upgrades

* [ARTEMIS-5964](https://issues.apache.org/jira/browse/ARTEMIS-5964) - Bump commons-logging:commons-logging from 1.3.5 to 1.3.6
* [ARTEMIS-5965](https://issues.apache.org/jira/browse/ARTEMIS-5965) - Bump io.micrometer:micrometer-core from 1.16.3 to 1.16.4
* [ARTEMIS-5966](https://issues.apache.org/jira/browse/ARTEMIS-5966) - Bump mockito.version from 5.22.0 to 5.23.0
* [ARTEMIS-5967](https://issues.apache.org/jira/browse/ARTEMIS-5967) - Bump plugin.components.maven.version from 3.9.12 to 3.9.14
* [ARTEMIS-5968](https://issues.apache.org/jira/browse/ARTEMIS-5968) - Bump org.jboss.arquillian:arquillian-bom from 1.10.0.Final to 1.10.1.Final
* [ARTEMIS-5969](https://issues.apache.org/jira/browse/ARTEMIS-5969) - Bump com.fasterxml.jackson:jackson-bom from 2.21.1 to 2.21.2
* [ARTEMIS-5970](https://issues.apache.org/jira/browse/ARTEMIS-5970) - Bump jline.version from 3.30.8 to 4.1.0
* [ARTEMIS-5978](https://issues.apache.org/jira/browse/ARTEMIS-5978) - Bump netty.version from 4.1.131.Final to 4.1.132.Final
* [ARTEMIS-5979](https://issues.apache.org/jira/browse/ARTEMIS-5979) - Bump log4j.version from 2.25.3 to 2.26.0
* [ARTEMIS-5980](https://issues.apache.org/jira/browse/ARTEMIS-5980) - Bump org.apache.groovy:groovy-all from 5.0.4 to 5.0.5
* [ARTEMIS-5981](https://issues.apache.org/jira/browse/ARTEMIS-5981) - Bump activemq5-version from 5.19.2 to 5.19.6
* [ARTEMIS-5988](https://issues.apache.org/jira/browse/ARTEMIS-5988) - Bump jetty.version from 12.1.7 to 12.1.9
* [ARTEMIS-5989](https://issues.apache.org/jira/browse/ARTEMIS-5989) - Bump org.apache.hadoop:hadoop-minikdc from 3.4.3 to 3.5.0
* [ARTEMIS-5990](https://issues.apache.org/jira/browse/ARTEMIS-5990) - Bump com.nimbusds:nimbus-jose-jwt from 10.8 to 10.9
* [ARTEMIS-6001](https://issues.apache.org/jira/browse/ARTEMIS-6001) - Bump org.apache.commons:commons-configuration2 from 2.13.0 to 2.14.0
* [ARTEMIS-6006](https://issues.apache.org/jira/browse/ARTEMIS-6006) - Bump io.micrometer:micrometer-core from 1.16.4 to 1.16.5
* [ARTEMIS-6012](https://issues.apache.org/jira/browse/ARTEMIS-6012) - Upgrade maven.version to 3.9.15 on artemis-maven-plugin
* [ARTEMIS-6014](https://issues.apache.org/jira/browse/ARTEMIS-6014) - Bump bc-java-version from 1.83 to 1.84
* [ARTEMIS-6015](https://issues.apache.org/jira/browse/ARTEMIS-6015) - Bump com.google.guava:guava from 33.5.0-jre to 33.6.0-jre
* [ARTEMIS-6016](https://issues.apache.org/jira/browse/ARTEMIS-6016) - Bump io.netty:netty-tcnative-boringssl-static from 2.0.75.Final to 2.0.77.Final
* [ARTEMIS-6035](https://issues.apache.org/jira/browse/ARTEMIS-6035) - Bump commons-io:commons-io from 2.21.0 to 2.22.0
* [ARTEMIS-6036](https://issues.apache.org/jira/browse/ARTEMIS-6036) - Bump commons-codec:commons-codec from 1.21.0 to 1.22.0
* [ARTEMIS-6038](https://issues.apache.org/jira/browse/ARTEMIS-6038) - Bump org.postgresql:postgresql from 42.7.10 to 42.7.11
* [ARTEMIS-6044](https://issues.apache.org/jira/browse/ARTEMIS-6044) - Bump karaf.version from 4.4.10 to 4.4.11
* [ARTEMIS-6045](https://issues.apache.org/jira/browse/ARTEMIS-6045) - Bump artemis-console-version from 1.7.0 to 1.8.0
* [ARTEMIS-6047](https://issues.apache.org/jira/browse/ARTEMIS-6047) - Bump com.github.ben-manes.caffeine:caffeine from 3.2.3 to 3.2.4
* [ARTEMIS-6048](https://issues.apache.org/jira/browse/ARTEMIS-6048) - Bump owasp.version from 12.2.1 to 12.2.2
* [ARTEMIS-6052](https://issues.apache.org/jira/browse/ARTEMIS-6052) - Bump org.apache.johnzon:johnzon-core from 1.2.22 to 1.3.0
* [ARTEMIS-6053](https://issues.apache.org/jira/browse/ARTEMIS-6053) - Bump org.apache:apache from 37 to 38
* [ARTEMIS-6059](https://issues.apache.org/jira/browse/ARTEMIS-6059) - Bump selenium.version from 4.43.0 to 4.44.0
* [ARTEMIS-6060](https://issues.apache.org/jira/browse/ARTEMIS-6060) - Bump slf4j.version from 2.0.17 to 2.0.18