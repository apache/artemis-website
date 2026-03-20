---
layout: default_md
title: Artemis 2.53.0 Release Notes
title-class: page-title-artemis
type: artemis
---
 - [A list of commits](commit-report-2.53.0).

 - Please see the ["Versions"](https://artemis.apache.org/components/artemis/documentation/latest/versions.html) chapter in the User Guide for upgrade instructions.

**Note:** As part of [establishing Apache Artemis](/news/artemis-tlp) as an independent project, the [Maven groupId has switched to _org.apache.artemis_](/artemis-tlp-groupid-migration).

**Note**: This release requires use of Java 17 or above.


## Bugs Fixed

* [ARTEMIS-5798](https://issues.apache.org/jira/browse/ARTEMIS-5798) - MQTT QoS2 unauthorized publish ignored on retry
* [ARTEMIS-5871](https://issues.apache.org/jira/browse/ARTEMIS-5871) - reload of broker properties config should be restricted to confined to re-loadable components
* [ARTEMIS-5873](https://issues.apache.org/jira/browse/ARTEMIS-5873) - Potential infinite loop on shutdown
* [ARTEMIS-5892](https://issues.apache.org/jira/browse/ARTEMIS-5892) - exportProperties is exposing queueConfigurations (deprecated) instead of queueConfigs
* [ARTEMIS-5894](https://issues.apache.org/jira/browse/ARTEMIS-5894) - The web console shows menu items for unauthorized operations
* [ARTEMIS-5906](https://issues.apache.org/jira/browse/ARTEMIS-5906) - Some console smoke tests fail on Firefox
* [ARTEMIS-5908](https://issues.apache.org/jira/browse/ARTEMIS-5908) - AMQP Federation and bridge connection configuration reload incomplete
* [ARTEMIS-5911](https://issues.apache.org/jira/browse/ARTEMIS-5911) - AMQP Federation configuration triggers empty Core federation entries
* [ARTEMIS-5915](https://issues.apache.org/jira/browse/ARTEMIS-5915) - Bridge messages are not routed to the queue if id-cache-size=0 on the broker
* [ARTEMIS-5916](https://issues.apache.org/jira/browse/ARTEMIS-5916) - Throwing ActiveMQException in ActiveMQSessionContext does not keep root cause
* [ARTEMIS-5941](https://issues.apache.org/jira/browse/ARTEMIS-5941) - AMQP Federation of Wildcard subscriptions can fail if assertions enabled
* [ARTEMIS-5947](https://issues.apache.org/jira/browse/ARTEMIS-5947) - ActiveMQServers.newActiveMQServer(String, MBeanServer, SecurityManager) hardcodes enablePersistence=true, ignoring XML configuration
* [ARTEMIS-5955](https://issues.apache.org/jira/browse/ARTEMIS-5955) - Using properties on CLI Shell will mute the output

## Improvements

* [ARTEMIS-5376](https://issues.apache.org/jira/browse/ARTEMIS-5376) - Include all messages in queue management operations
* [ARTEMIS-5607](https://issues.apache.org/jira/browse/ARTEMIS-5607) - Support disabling JMX notifications
* [ARTEMIS-5782](https://issues.apache.org/jira/browse/ARTEMIS-5782) - Allow searching on servercontrol to use multiple filters
* [ARTEMIS-5889](https://issues.apache.org/jira/browse/ARTEMIS-5889) - support connectionRouter config reload
* [ARTEMIS-5893](https://issues.apache.org/jira/browse/ARTEMIS-5893) - Optimize ManagementService
* [ARTEMIS-5902](https://issues.apache.org/jira/browse/ARTEMIS-5902) - Optimize authentication cache key creation
* [ARTEMIS-5914](https://issues.apache.org/jira/browse/ARTEMIS-5914) - AMQP Remote federation receiver links optimization
* [ARTEMIS-5925](https://issues.apache.org/jira/browse/ARTEMIS-5925) - Support Star Mirror Configuration on Lock Coordinator
* [ARTEMIS-5938](https://issues.apache.org/jira/browse/ARTEMIS-5938) - Reorganize doc chapter orders
* [ARTEMIS-5945](https://issues.apache.org/jira/browse/ARTEMIS-5945) - Remove deprecated intr NFS mount option
* [ARTEMIS-5951](https://issues.apache.org/jira/browse/ARTEMIS-5951) - Proper handle Ctrl-C  / Interrupt on ./artemis shell
* [ARTEMIS-5952](https://issues.apache.org/jira/browse/ARTEMIS-5952) - Improve colors on CLI Shell
* [ARTEMIS-5953](https://issues.apache.org/jira/browse/ARTEMIS-5953) - Allow AMQP federation to nest address bindings under a Wildcard address on remote peers
* [ARTEMIS-5954](https://issues.apache.org/jira/browse/ARTEMIS-5954) - Shell HIstory

## Tasks

* [ARTEMIS-5904](https://issues.apache.org/jira/browse/ARTEMIS-5904) - Add Podman support for container image releases

## Dependency Upgrades

* [ARTEMIS-5896](https://issues.apache.org/jira/browse/ARTEMIS-5896) - Bump ErrorProne to 2.48.0 &amp; limit to JDK25+
* [ARTEMIS-5897](https://issues.apache.org/jira/browse/ARTEMIS-5897) - Bump io.netty:netty-tcnative-boringssl-static from 2.0.74.Final to 2.0.75.Final
* [ARTEMIS-5898](https://issues.apache.org/jira/browse/ARTEMIS-5898) - Bump netty.version from 4.1.130.Final to 4.1.131.Final
* [ARTEMIS-5899](https://issues.apache.org/jira/browse/ARTEMIS-5899) - Bump io.micrometer:micrometer-core from 1.16.2 to 1.16.3
* [ARTEMIS-5909](https://issues.apache.org/jira/browse/ARTEMIS-5909) - Security settings matches do not respect wildcard configuration for mops prefix
* [ARTEMIS-5913](https://issues.apache.org/jira/browse/ARTEMIS-5913) - Bump JCTools from 4.0.5 to 4.0.6
* [ARTEMIS-5917](https://issues.apache.org/jira/browse/ARTEMIS-5917) - Bump org.junit:junit-bom from 6.0.2 to 6.0.3
* [ARTEMIS-5918](https://issues.apache.org/jira/browse/ARTEMIS-5918) - Bump karaf.version from 4.4.8 to 4.4.10
* [ARTEMIS-5919](https://issues.apache.org/jira/browse/ARTEMIS-5919) - Bump activemq5-version from 5.19.1 to 5.19.2
* [ARTEMIS-5920](https://issues.apache.org/jira/browse/ARTEMIS-5920) - Bump selenium.version from 4.40.0 to 4.41.0
* [ARTEMIS-5921](https://issues.apache.org/jira/browse/ARTEMIS-5921) - Bump com.fasterxml.jackson:jackson-bom from 2.21.0 to 2.21.1
* [ARTEMIS-5922](https://issues.apache.org/jira/browse/ARTEMIS-5922) - Bump org.apache.hadoop:hadoop-minikdc from 3.4.2 to 3.4.3
* [ARTEMIS-5926](https://issues.apache.org/jira/browse/ARTEMIS-5926) - Bump mockito.version from 5.21.0 to 5.22.0
* [ARTEMIS-5927](https://issues.apache.org/jira/browse/ARTEMIS-5927) - Bump org.apache.felix:maven-bundle-plugin from 6.0.0 to 6.0.2
* [ARTEMIS-5929](https://issues.apache.org/jira/browse/ARTEMIS-5929) - Bump jline.version to  3.30.8
* [ARTEMIS-5940](https://issues.apache.org/jira/browse/ARTEMIS-5940) - Update to jetty 12.1.7
* [ARTEMIS-5946](https://issues.apache.org/jira/browse/ARTEMIS-5946) - Update to Artemis Console 1.7.0
* [ARTEMIS-5950](https://issues.apache.org/jira/browse/ARTEMIS-5950) - Bump zookeeper.version from 3.9.4 to 3.9.5