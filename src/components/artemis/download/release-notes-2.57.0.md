---
layout: default_md
title: Artemis 2.57.0 Release Notes
title-class: page-title-artemis
type: artemis
---
 - [A list of commits](commit-report-2.57.0).

 - Please see the ["Versions"](https://artemis.apache.org/components/artemis/documentation/latest/versions.html) chapter in the User Guide for upgrade instructions.

**Note:** As part of [establishing Apache Artemis](/news/artemis-tlp) as an independent project, the [Maven groupId has switched to _org.apache.artemis_](/artemis-tlp-groupid-migration).

**Note**: This release requires use of Java 17 or above.


## Bugs Fixed

* [ARTEMIS-6243](https://issues.apache.org/jira/browse/ARTEMIS-6243) - Missing Authentication in CORE Protocol Handler Allows Unauthorized Queue Creation
* [ARTEMIS-6244](https://issues.apache.org/jira/browse/ARTEMIS-6244) - Pre-Authentication Information Disclosure in CORE Protocol Topology Subscription
* [ARTEMIS-6245](https://issues.apache.org/jira/browse/ARTEMIS-6245) - Missing authentication on CORE protocol session reattachment
* [ARTEMIS-6246](https://issues.apache.org/jira/browse/ARTEMIS-6246) - Pre-Authentication Cluster Credential Exposure to Discovered Peers
* [ARTEMIS-6247](https://issues.apache.org/jira/browse/ARTEMIS-6247) - Message-based management parameter deserialization may lead to denial of service
* [ARTEMIS-6248](https://issues.apache.org/jira/browse/ARTEMIS-6248) - Pre-authentication Openwire protocol handling can result in queue deletion
* [ARTEMIS-6249](https://issues.apache.org/jira/browse/ARTEMIS-6249) - Limiting Wildcards (%) on selectors

## Tasks

* [ARTEMIS-6125](https://issues.apache.org/jira/browse/ARTEMIS-6125) - Convert examples to static connectors
* [ARTEMIS-6203](https://issues.apache.org/jira/browse/ARTEMIS-6203) - Make MQTT resiliency soak tests more robust