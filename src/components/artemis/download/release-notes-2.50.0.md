---
layout: default_md
title: Artemis 2.50.0 Release Notes
title-class: page-title-artemis
type: artemis
---
 - [A list of commits](commit-report-2.50.0).

 - Please see the ["Versions"](https://artemis.apache.org/components/artemis/documentation/latest/versions.html) chapter in the User Guide for upgrade instructions.

**Note:** As part of [establishing Apache Artemis](/news/artemis-tlp) as an independent project, the [Maven groupId has switched to _org.apache.artemis_](/artemis-tlp-groupid-migration).

**Note**: This release requires use of Java 17 or above.


## Bugs Fixed

* [ARTEMIS-1177](https://issues.apache.org/jira/browse/ARTEMIS-1177) - clientFailureCheckPeriod option does not do what Doc says it does
* [ARTEMIS-1759](https://issues.apache.org/jira/browse/ARTEMIS-1759) - ClassLoader leaks in Artemis Core Client and JMS Client
* [ARTEMIS-4197](https://issues.apache.org/jira/browse/ARTEMIS-4197) - AbstractJournalStorageManager address-settings not thread-safe
* [ARTEMIS-4911](https://issues.apache.org/jira/browse/ARTEMIS-4911) - Routed message count increases when message was rejected by filters
* [ARTEMIS-4929](https://issues.apache.org/jira/browse/ARTEMIS-4929) - Incorrect logging for anonymous user message acknowledgement events
* [ARTEMIS-5684](https://issues.apache.org/jira/browse/ARTEMIS-5684) - There is a difference of settings in address-settings, and in the result of the method "getAddressSettingsAsJSON(String)" in the web console
* [ARTEMIS-5685](https://issues.apache.org/jira/browse/ARTEMIS-5685) - Queue settings durable, last-value, and last-value-key don’t change in runtime in the web console
* [ARTEMIS-5686](https://issues.apache.org/jira/browse/ARTEMIS-5686) - There is an exception which occurs because of the setting "retroactive-message-count"
* [ARTEMIS-5733](https://issues.apache.org/jira/browse/ARTEMIS-5733) - Core bridge can lock on flow control
* [ARTEMIS-5735](https://issues.apache.org/jira/browse/ARTEMIS-5735) - Queue is stuck with orphaned consumer and no longer consumes messages
* [ARTEMIS-5739](https://issues.apache.org/jira/browse/ARTEMIS-5739) - Can't use $ for wildcard any-words
* [ARTEMIS-5741](https://issues.apache.org/jira/browse/ARTEMIS-5741) - webcomponent won't stop on shutdown/scaledown
* [ARTEMIS-5744](https://issues.apache.org/jira/browse/ARTEMIS-5744) - Don't modify AddressInfo during auto-create checks
* [ARTEMIS-5753](https://issues.apache.org/jira/browse/ARTEMIS-5753) - Paging has the possibility on losing messages during failback in older versions (before 2.33)
* [ARTEMIS-5770](https://issues.apache.org/jira/browse/ARTEMIS-5770) - Improve local address formatting
* [ARTEMIS-5773](https://issues.apache.org/jira/browse/ARTEMIS-5773) - Memory and storage leak in PostOfficeImpl and PagingManagerImpl
* [ARTEMIS-5775](https://issues.apache.org/jira/browse/ARTEMIS-5775) - NullResponseMessage_V2 incorrect release from pool
* [ARTEMIS-5783](https://issues.apache.org/jira/browse/ARTEMIS-5783) - MQTT5 Shared subscription does not receive subscription ID
* [ARTEMIS-5789](https://issues.apache.org/jira/browse/ARTEMIS-5789) - Artemis SQL SERVER Database Persistence bug 
* [ARTEMIS-5800](https://issues.apache.org/jira/browse/ARTEMIS-5800) - AMQP session leak on remoting connection disconnect
* [ARTEMIS-5806](https://issues.apache.org/jira/browse/ARTEMIS-5806) - Message loss due to XA session rollback after broker restart
* [ARTEMIS-5809](https://issues.apache.org/jira/browse/ARTEMIS-5809) - Account for escaped delimiters when parsing address paths
* [ARTEMIS-5815](https://issues.apache.org/jira/browse/ARTEMIS-5815) - QueueControl::countMessages is limiting the parsing on browsing.
* [ARTEMIS-5819](https://issues.apache.org/jira/browse/ARTEMIS-5819) - HttpIdleTimer sending GET rather than POST
* [ARTEMIS-5829](https://issues.apache.org/jira/browse/ARTEMIS-5829) - Postgres pg_largeobjects is not automatically cleaned
* [ARTEMIS-5847](https://issues.apache.org/jira/browse/ARTEMIS-5847) - Jolokia server detector broken
* [ARTEMIS-5849](https://issues.apache.org/jira/browse/ARTEMIS-5849) - Regression of ARTEMIS-5051

## New Features

* [ARTEMIS-5750](https://issues.apache.org/jira/browse/ARTEMIS-5750) - Add an address disk-full-policy configuration parameter that will define the message policy when the disk space limit is reached.
* [ARTEMIS-5756](https://issues.apache.org/jira/browse/ARTEMIS-5756) - Add Jakarta client Karaf feature with the corresponding OSGi bundle
* [ARTEMIS-5833](https://issues.apache.org/jira/browse/ARTEMIS-5833) - Support compression for HTTP responses

## Improvements

* [ARTEMIS-5092](https://issues.apache.org/jira/browse/ARTEMIS-5092) - Support security-setting management via JSON
* [ARTEMIS-5738](https://issues.apache.org/jira/browse/ARTEMIS-5738) - Improve LDAPLoginModule ssl support
* [ARTEMIS-5746](https://issues.apache.org/jira/browse/ARTEMIS-5746) - brokerProperties - allow configuration of the filter for directory urls
* [ARTEMIS-5751](https://issues.apache.org/jira/browse/ARTEMIS-5751) - Don't log stack-trace when MQTT 3.1.1 client isn't authorized to publish
* [ARTEMIS-5763](https://issues.apache.org/jira/browse/ARTEMIS-5763) - reload config on primary activation after lock acquisition
* [ARTEMIS-5778](https://issues.apache.org/jira/browse/ARTEMIS-5778) - Improve OCSP revocation checker support
* [ARTEMIS-5779](https://issues.apache.org/jira/browse/ARTEMIS-5779) - Add a new managment API method for retry from DLQ with a filter
* [ARTEMIS-5786](https://issues.apache.org/jira/browse/ARTEMIS-5786) - Unable to determine whether an address is blocked via mangement API
* [ARTEMIS-5795](https://issues.apache.org/jira/browse/ARTEMIS-5795) - Set security config using system properties
* [ARTEMIS-5801](https://issues.apache.org/jira/browse/ARTEMIS-5801) - Add a subscription name option to the Artemis durable consumer CLI 
* [ARTEMIS-5830](https://issues.apache.org/jira/browse/ARTEMIS-5830) - brokerProperties - allow configuration of jaas

## Tests

* [ARTEMIS-5221](https://issues.apache.org/jira/browse/ARTEMIS-5221) - STOMP test client formats heart-beats incorrectly
* [ARTEMIS-5808](https://issues.apache.org/jira/browse/ARTEMIS-5808) - CompatiblityTests: Make cases where serverClassLoader==null clearer
* [ARTEMIS-5811](https://issues.apache.org/jira/browse/ARTEMIS-5811) - Replace 2.18.0 for 2.44.0 on MultiVersionReplicaTest
* [ARTEMIS-5812](https://issues.apache.org/jira/browse/ARTEMIS-5812) - Enable other protocols on mirror/PagedSNFSoakTest
* [ARTEMIS-5813](https://issues.apache.org/jira/browse/ARTEMIS-5813) - standardize versioning on compatibility tests

## Tasks

* [ARTEMIS-5725](https://issues.apache.org/jira/browse/ARTEMIS-5725) - Parameterize project name in the docs
* [ARTEMIS-5752](https://issues.apache.org/jira/browse/ARTEMIS-5752) - Fix line endings
* [ARTEMIS-5762](https://issues.apache.org/jira/browse/ARTEMIS-5762) - Remove unused AddressSetting field dropMessagesWhenFull
* [ARTEMIS-5764](https://issues.apache.org/jira/browse/ARTEMIS-5764) - Remove a couple unused methods in ActiveMQServerImpl
* [ARTEMIS-5769](https://issues.apache.org/jira/browse/ARTEMIS-5769) - Standardize date-time strings for web console
* [ARTEMIS-5797](https://issues.apache.org/jira/browse/ARTEMIS-5797) - Add additional documentation for AMQP Federation
* [ARTEMIS-5807](https://issues.apache.org/jira/browse/ARTEMIS-5807) - docs changes around new Artemis TLP
* [ARTEMIS-5816](https://issues.apache.org/jira/browse/ARTEMIS-5816) - build changes around new Artemis TLP
* [ARTEMIS-5817](https://issues.apache.org/jira/browse/ARTEMIS-5817) - Improve management JavaDoc
* [ARTEMIS-5818](https://issues.apache.org/jira/browse/ARTEMIS-5818) - Source code updates around new Artemis TLP
* [ARTEMIS-5826](https://issues.apache.org/jira/browse/ARTEMIS-5826) - Improve filter documentation
* [ARTEMIS-5828](https://issues.apache.org/jira/browse/ARTEMIS-5828) - remove stale config for war plugin to avoid warnings
* [ARTEMIS-5832](https://issues.apache.org/jira/browse/ARTEMIS-5832) - Clarify docs for client thread pooling
* [ARTEMIS-5834](https://issues.apache.org/jira/browse/ARTEMIS-5834) - Additional debug log in ScaleDownHandler
* [ARTEMIS-5840](https://issues.apache.org/jira/browse/ARTEMIS-5840) - Upgrade Docker images to Java 25
* [ARTEMIS-5841](https://issues.apache.org/jira/browse/ARTEMIS-5841) - Clarify docs for global-max settings
* [ARTEMIS-5842](https://issues.apache.org/jira/browse/ARTEMIS-5842) - Don't run GHA on PR if only documentation is changed
* [ARTEMIS-5843](https://issues.apache.org/jira/browse/ARTEMIS-5843) - Update Docker stuff for new TLP
* [ARTEMIS-5846](https://issues.apache.org/jira/browse/ARTEMIS-5846) - Bump required Maven version to build to 3.9.0
* [ARTEMIS-5848](https://issues.apache.org/jira/browse/ARTEMIS-5848) - Update web console images

## Dependency Upgrades

* [ARTEMIS-5727](https://issues.apache.org/jira/browse/ARTEMIS-5727) - Bump johnzon.version to 1.2.22
* [ARTEMIS-5728](https://issues.apache.org/jira/browse/ARTEMIS-5728) - Bump selenium.version from 4.37.0 to 4.39.0
* [ARTEMIS-5729](https://issues.apache.org/jira/browse/ARTEMIS-5729) - Bump com.puppycrawl.tools:checkstyle from 12.1.0 to 12.3.0
* [ARTEMIS-5730](https://issues.apache.org/jira/browse/ARTEMIS-5730) - Bump org.apache.maven.plugin-tools:maven-plugin-annotations from 3.15.1 to 3.15.2
* [ARTEMIS-5731](https://issues.apache.org/jira/browse/ARTEMIS-5731) - Bump org.asciidoctor:asciidoctorj-pdf from 2.3.21 to 2.3.23
* [ARTEMIS-5732](https://issues.apache.org/jira/browse/ARTEMIS-5732) - Bump com.github.ben-manes.caffeine:caffeine from 3.2.2 to 3.2.3
* [ARTEMIS-5747](https://issues.apache.org/jira/browse/ARTEMIS-5747) - Bump com.fasterxml.jackson:jackson-bom from 2.20.0 to 2.20.1
* [ARTEMIS-5748](https://issues.apache.org/jira/browse/ARTEMIS-5748) - Bump commons-codec:commons-codec from 1.19.0 to 1.20.0
* [ARTEMIS-5749](https://issues.apache.org/jira/browse/ARTEMIS-5749) - Bump org.junit:junit-bom from 6.0.0 to 6.0.2
* [ARTEMIS-5754](https://issues.apache.org/jira/browse/ARTEMIS-5754) - Bump io.micrometer:micrometer-core from 1.15.5 to 1.16.2
* [ARTEMIS-5755](https://issues.apache.org/jira/browse/ARTEMIS-5755) - Bump commons-io:commons-io from 2.20.0 to 2.21.0
* [ARTEMIS-5757](https://issues.apache.org/jira/browse/ARTEMIS-5757) - Bump maven-bundle-plugin from 5.1.9 to 6.0.0
* [ARTEMIS-5758](https://issues.apache.org/jira/browse/ARTEMIS-5758) - Bump owasp.version from 12.1.8 to 12.2.0
* [ARTEMIS-5761](https://issues.apache.org/jira/browse/ARTEMIS-5761) - Bump jetty.version from 12.1.3 to 12.1.5
* [ARTEMIS-5765](https://issues.apache.org/jira/browse/ARTEMIS-5765) - Bump com.google.cloud.tools:jib-maven-plugin from 3.4.6 to 3.5.1
* [ARTEMIS-5766](https://issues.apache.org/jira/browse/ARTEMIS-5766) - Bump org.apache.commons:commons-lang3 from 3.19.0 to 3.20.0
* [ARTEMIS-5767](https://issues.apache.org/jira/browse/ARTEMIS-5767) - Bump org.apache.maven.plugins:maven-rar-plugin from 3.0.0 to 3.1.0
* [ARTEMIS-5784](https://issues.apache.org/jira/browse/ARTEMIS-5784) - Bump org.apache.commons:commons-configuration2 from 2.11.0 to 2.13.0
* [ARTEMIS-5785](https://issues.apache.org/jira/browse/ARTEMIS-5785) - Bump bc-java-version from 1.82 to 1.83
* [ARTEMIS-5802](https://issues.apache.org/jira/browse/ARTEMIS-5802) - Bump org.apache.groovy:groovy-all from 5.0.2 to 5.0.3
* [ARTEMIS-5803](https://issues.apache.org/jira/browse/ARTEMIS-5803) - Bump org.apache.commons:commons-text from 1.14.0 to 1.15.0
* [ARTEMIS-5804](https://issues.apache.org/jira/browse/ARTEMIS-5804) - Bump org.apache.commons:commons-pool2 from 2.12.1 to 2.13.0
* [ARTEMIS-5805](https://issues.apache.org/jira/browse/ARTEMIS-5805) - Bump mockito.version from 5.20.0 to 5.21.0
* [ARTEMIS-5814](https://issues.apache.org/jira/browse/ARTEMIS-5814) - Bump netty.version from 4.1.128.Final to 4.1.130.Final
* [ARTEMIS-5820](https://issues.apache.org/jira/browse/ARTEMIS-5820) - Bump org.apache.commons:commons-dbcp2 from 2.13.0 to 2.14.0
* [ARTEMIS-5821](https://issues.apache.org/jira/browse/ARTEMIS-5821) - Bump plugin.components.maven.version from 3.9.11 to 3.9.12
* [ARTEMIS-5822](https://issues.apache.org/jira/browse/ARTEMIS-5822) - Bump log4j.version from 2.25.2 to 2.25.3
* [ARTEMIS-5823](https://issues.apache.org/jira/browse/ARTEMIS-5823) - Bump testcontainers.version from 1.21.3 to 1.21.4
* [ARTEMIS-5835](https://issues.apache.org/jira/browse/ARTEMIS-5835) - Update to Artemis Console 1.5.0
* [ARTEMIS-5837](https://issues.apache.org/jira/browse/ARTEMIS-5837) - Bump org.codehaus.mojo:exec-maven-plugin from 3.6.2 to 3.6.3
