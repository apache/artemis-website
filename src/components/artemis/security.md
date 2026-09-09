---
layout: default_md
title: Security Advisories - Artemis
title-class: page-title-artemis
type: artemis
---

Details of security problems fixed in released versions of Apache Artemis are detailed below.

See the main [Security Advisories](../../security-advisories) page for details for other components and general information such as reporting new security issues.

| CVE | Severity  | Description | Affected Versions    | Fixed In |
|-----|-----------|-------------|----------------------|----------|
| [CVE-2026-75880](../../security-advisories.data/CVE-2026-75880-announcement.txt) | Moderate  | Message selector wildcard handling could lead to denial of service | 1.0.0 through 2.56.0 | 2.57.0 |
| [CVE-2026-67593](../../security-advisories.data/CVE-2026-67593-announcement.txt) | Important | Pre-authentication Openwire protocol handling can result in queue deletion | 1.0.0 through 2.56.0 | 2.57.0 |
| [CVE-2026-57967](../../security-advisories.data/CVE-2026-57967-announcement.txt) | Important | Missing authentication on CORE protocol session reattachment | 1.0.0 through 2.56.0 | 2.57.0 |
| [CVE-2026-57822](../../security-advisories.data/CVE-2026-57822-announcement.txt) | Important | Message-based management parameter deserialization may lead to denial of service | 1.3.0 through 2.56.0 | 2.57.0 |
| [CVE-2026-49364](../../security-advisories.data/CVE-2026-49364-announcement.txt) | Important | Pre-Authentication Cluster Credential Exposure to Discovered Peers | 1.0.0 through 2.56.0 | 2.57.0 |
| [CVE-2026-49363](../../security-advisories.data/CVE-2026-49363-announcement.txt) | Moderate  | Pre-Authentication Information Disclosure in CORE Protocol Topology Subscription | 1.0.0 through 2.56.0 | 2.57.0 |
| [CVE-2026-49362](../../security-advisories.data/CVE-2026-49362-announcement.txt) | Important | Missing Authentication in CORE Protocol Handler Allows Unauthorized Queue Creation | 1.0.0 through 2.56.0 | 2.57.0 |
| [CVE-2026-40914](../../security-advisories.data/CVE-2026-40914-announcement.txt) | Low       | Address routing-type can be updated by STOMP protocol user without the createAddress permission | 2.0.0 through 2.53.0 | 2.54.0 |
| [CVE-2026-32642](../../security-advisories.data/CVE-2026-32642-announcement.txt) | Low       | Temporary address auto-created for OpenWire consumer without createAddress permission | 2.0.0 through 2.52.0 | 2.53.0 |
| [CVE-2026-27446](../../security-advisories.data/CVE-2026-27446-announcement.txt) | Critical  | Auth bypass for Core downstream federation | 2.11.0 through 2.51.0 | 2.52.0 |
| [CVE-2025-27391](../../security-advisories.data/CVE-2025-27391-announcement.txt) | Moderate  | Passwords leaking from broker properties in the debug log | 1.5.1 through 2.39.0 | 2.40.0 |
| [CVE-2025-27427](../../security-advisories.data/CVE-2025-27427-announcement.txt) | Low       | Address routing-type can be updated by user without the createAddress permission | 2.0.0 through 2.39.0 | 2.40.0 |
| [CVE-2023-50780](../../security-advisories.data/CVE-2023-50780-announcement.txt) | Moderate  | Authenticated users could perform RCE via Jolokia MBeans | before 2.29.0        | 2.29.0 |
| [CVE-2022-35278](../../security-advisories.data/CVE-2022-35278-announcement.txt) | Moderate  | HTML Injection in ActiveMQ Artemis Web Console | before 2.24.0        | 2.24.0 |
| [CVE-2022-23913](../../security-advisories.data/CVE-2022-23913-announcement.txt) | High      | Apache ActiveMQ Artemis DoS | before 2.20.0        | 2.20.0 / 2.19.1 |
| [CVE-2021-26117](../../security-advisories.data/CVE-2021-26117-announcement.txt) | High      | LDAP-Authentication does not verify passwords on servers with anonymous bind | before 2.16.0        | 2.16.0 |
| [CVE-2021-26118](../../security-advisories.data/CVE-2021-26118-announcement.txt) | High      | Flaw in ActiveMQ Artemis OpenWire support | 2.15.0               | 2.16.0 |
| [CVE-2020-13932](../../security-advisories.data/CVE-2020-13932-announcement.txt) | Medium    | Remote XSS in Web console Diagram Plugin | 2.5.0 through 2.13.0 | 2.14.0 |
| [CVE-2017-12174](../../security-advisories.data/CVE-2017-12174-announcement.txt) | High      | Memory exhaustion via UDP and JGroups discovery | 1.0.0 through 2.3.0  | 1.5.6 / 2.4.0 |
| [CVE-2016-4978](../../security-advisories.data/CVE-2016-4978-announcement.txt) | Important | Deserialization of untrusted input vulnerability | 1.0.0 through 1.3.0  | 1.4.0 |
