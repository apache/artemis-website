---
layout: default_md
title: Artemis 2.56.0 Release Notes
title-class: page-title-artemis
type: artemis
---
 - [A list of commits](commit-report-2.56.0).

 - Please see the ["Versions"](https://artemis.apache.org/components/artemis/documentation/latest/versions.html) chapter in the User Guide for upgrade instructions.

**Note:** As part of [establishing Apache Artemis](/news/artemis-tlp) as an independent project, the [Maven groupId has switched to _org.apache.artemis_](/artemis-tlp-groupid-migration).

**Note**: This release requires use of Java 17 or above.


## Bugs Fixed

* [ARTEMIS-6008](https://issues.apache.org/jira/browse/ARTEMIS-6008) - Critical Analyzer should not kick in during Failover phase of the broker
* [ARTEMIS-6129](https://issues.apache.org/jira/browse/ARTEMIS-6129) - Broker can't deal with empty foreign JMS MapMessage
* [ARTEMIS-6146](https://issues.apache.org/jira/browse/ARTEMIS-6146) - LargeMessage Drop through Diver can cause issues on Mirroring
* [ARTEMIS-6159](https://issues.apache.org/jira/browse/ARTEMIS-6159) - A lock coordinator with an unreachable ZooKeeper hangs broker startup and shutdown indefinitely 
* [ARTEMIS-6162](https://issues.apache.org/jira/browse/ARTEMIS-6162) - Lock coordinators contend for the lock before the broker is activated
* [ARTEMIS-6172](https://issues.apache.org/jira/browse/ARTEMIS-6172) - HTTP tunneling server async packets starve request replies
* [ARTEMIS-6179](https://issues.apache.org/jira/browse/ARTEMIS-6179) - Deadlock in QueueImpl between management thread (removeMessage) and paging thread when JMX attribute Paused is scraped concurrently
* [ARTEMIS-6184](https://issues.apache.org/jira/browse/ARTEMIS-6184) - AMQP durable subscription unsub does not reutnr error results to the client
* [ARTEMIS-6189](https://issues.apache.org/jira/browse/ARTEMIS-6189) - QoS 1 &amp; 2 message handling is not resilient

## Improvements

* [ARTEMIS-6117](https://issues.apache.org/jira/browse/ARTEMIS-6117) - allow the journal file lock check period to be configured from current default 2s
* [ARTEMIS-6158](https://issues.apache.org/jira/browse/ARTEMIS-6158) - AbstractMapPersister for developers
* [ARTEMIS-6163](https://issues.apache.org/jira/browse/ARTEMIS-6163) - Add auto-start attribute and management start/stop operations for lock coordinators
* [ARTEMIS-6173](https://issues.apache.org/jira/browse/ARTEMIS-6173) - Update AGENTS.md
* [ARTEMIS-6201](https://issues.apache.org/jira/browse/ARTEMIS-6201) - Consumer.close on a FQQN should not delete the queue

## Tests

* [ARTEMIS-6156](https://issues.apache.org/jira/browse/ARTEMIS-6156) - Add compatibility/security tests
* [ARTEMIS-6178](https://issues.apache.org/jira/browse/ARTEMIS-6178) - Upgrade compatibility test/hornetq to 2.4.11 and add test for topology

## Tasks

* [ARTEMIS-6126](https://issues.apache.org/jira/browse/ARTEMIS-6126) - Resolve "system property basedir is configured twice" warnings
* [ARTEMIS-6127](https://issues.apache.org/jira/browse/ARTEMIS-6127) - Remove JDK8/IBM related code
* [ARTEMIS-6128](https://issues.apache.org/jira/browse/ARTEMIS-6128) - Fix typo for Adler32
* [ARTEMIS-6130](https://issues.apache.org/jira/browse/ARTEMIS-6130) - Clarify --consume -1 documentation for artemis check queue command
* [ARTEMIS-6141](https://issues.apache.org/jira/browse/ARTEMIS-6141) - LargeMessageInterruptTest.killProcess() relies on non-portable kill -SIGINT flag
* [ARTEMIS-6145](https://issues.apache.org/jira/browse/ARTEMIS-6145) - Remove unused activemq-stomp dependency from activemq5-unit-tests
* [ARTEMIS-6153](https://issues.apache.org/jira/browse/ARTEMIS-6153) - race in ClusterConnectionImpl causing SF queue loss
* [ARTEMIS-6155](https://issues.apache.org/jira/browse/ARTEMIS-6155) - Decrease github jobs timeout to 60m

## Dependency Upgrades

* [ARTEMIS-6134](https://issues.apache.org/jira/browse/ARTEMIS-6134) - Bump activemq5-version from 5.19.7 to 5.19.9
* [ARTEMIS-6135](https://issues.apache.org/jira/browse/ARTEMIS-6135) - Bump org.apache:apache from 38 to 39
* [ARTEMIS-6136](https://issues.apache.org/jira/browse/ARTEMIS-6136) - Bump org.junit:junit-bom from 6.1.0 to 6.1.3
* [ARTEMIS-6137](https://issues.apache.org/jira/browse/ARTEMIS-6137) - Bump org.postgresql:postgresql from 42.7.11 to 42.7.13
* [ARTEMIS-6138](https://issues.apache.org/jira/browse/ARTEMIS-6138) - Bump io.netty:netty-tcnative-boringssl-static from 2.0.79.Final to 2.0.81.Final
* [ARTEMIS-6148](https://issues.apache.org/jira/browse/ARTEMIS-6148) - Bump jline.version from 4.2.1 to 4.3.1
* [ARTEMIS-6149](https://issues.apache.org/jira/browse/ARTEMIS-6149) - Bump log4j.version from 2.26.0 to 2.26.1
* [ARTEMIS-6150](https://issues.apache.org/jira/browse/ARTEMIS-6150) - Bump org.apache.groovy:groovy-all from 5.0.6 to 5.1.0
* [ARTEMIS-6151](https://issues.apache.org/jira/browse/ARTEMIS-6151) - Bump jetty.version from 12.1.10 to 12.1.12
* [ARTEMIS-6152](https://issues.apache.org/jira/browse/ARTEMIS-6152) - Bump com.fasterxml.jackson:jackson-bom from 2.22.0 to 2.22.1
* [ARTEMIS-6167](https://issues.apache.org/jira/browse/ARTEMIS-6167) - Bump netty.version from 4.1.135.Final to 4.1.137.Final
* [ARTEMIS-6176](https://issues.apache.org/jira/browse/ARTEMIS-6176) - Update to proton-j 0.35.0
* [ARTEMIS-6177](https://issues.apache.org/jira/browse/ARTEMIS-6177) - Bump commons-codec:commons-codec from 1.22.0 to 1.22.1
* [ARTEMIS-6185](https://issues.apache.org/jira/browse/ARTEMIS-6185) - Bump Qpid JMS version from 1.16.0 to 1.17.0
* [ARTEMIS-6186](https://issues.apache.org/jira/browse/ARTEMIS-6186) - Bump com.google.cloud.tools:jib-maven-plugin from 3.5.1 to 3.5.2
* [ARTEMIS-6187](https://issues.apache.org/jira/browse/ARTEMIS-6187) - Bump bc-java-version from 1.84 to 1.85
* [ARTEMIS-6188](https://issues.apache.org/jira/browse/ARTEMIS-6188) - Bump selenium.version from 4.45.0 to 4.47.0
* [ARTEMIS-6192](https://issues.apache.org/jira/browse/ARTEMIS-6192) - Bump org.apache.qpid:protonj2-test-driver from 1.1.0 to 1.3.0
* [ARTEMIS-6193](https://issues.apache.org/jira/browse/ARTEMIS-6193) - Bump org.apache.felix:maven-bundle-plugin from 6.0.2 to 6.1.0
* [ARTEMIS-6194](https://issues.apache.org/jira/browse/ARTEMIS-6194) - Bump owasp.version from 12.2.2 to 13.0.0
* [ARTEMIS-6196](https://issues.apache.org/jira/browse/ARTEMIS-6196) - Bump org.snakeyaml:snakeyaml-engine from 3.0.1 to 3.1.1
* [ARTEMIS-6197](https://issues.apache.org/jira/browse/ARTEMIS-6197) - Bump org.jctools:jctools-core from 4.0.6 to 4.0.7
* [ARTEMIS-6200](https://issues.apache.org/jira/browse/ARTEMIS-6200) - Bump activemq5-version from 5.19.9 to 5.19.10