# Blue Team: Summary of Operations

## Table of Contents
- [Network Topology](#network-topology)
- [Description of Targets](#description-of-targets)
- [Monitoring the Targets](#monitoring-of-targets)
- [Patterns of Traffic & Behavior](#patterns-of-traffic-&-behaviour)
- [Suggestions for Going Further](#suggestion-for-going-further)


### Network Topology

The following machines were identified on the network:
- ELK
  - **Operating System**: Ubuntu 18.04.4 LTS
  - **Purpose**: ELK Server
  - **IP Address**: 192.168.1.100
- server1 [Capstone]
  - **Operating System**: Ubuntu 18.04.1 LTS
  - **Purpose**: Testing Kibana Alerts
  - **IP Address**: 192.168.1.105
- target1
  - **Operating System**: Debian 8 (jessie)
  - **Purpose**: Target machine for attack
  - **IP Address**: 192.168.1.110
- Kali
  - **Operating System**: Kali Linux Rolling
  - **Purpose**: Attacking VM
  - **IP Address**: 192.168.1.90
- ML-RefVm-684427
  - **Operating System**: Windows 10 v1909 (Build 18363.900)
  - **Purpose**: Azure VM - HyperV host
  - **IP Address**: 10.0.0.33, 192.168.1.1 (NATSwitch)


### Description of Targets
The target of this attack was: `Target 1` 192.168.1.110

Target 1 is an Apache web server and has SSH enabled, so ports 80 and 22 are possible ports of entry for attackers. As such, the following alerts have been implemented:

### Monitoring the Targets

Traffic to these services should be carefully monitored. To this end, we have implemented the alerts below:

#### HTTP Request Size Monitor
HTTP Request Size Monitor is implemented as follows:
  - **Metric**: http.request.bytes
  - **Threshold**: 3500
  - **Vulnerability Mitigated**: TODO
  - **Reliability**: TODO: Does this alert generate lots of false positives/false negatives? Rate as low, medium, or high reliability.

#### Excessive HTTP Errors
Excessive HTTP Errors is implemented as follows:
  - **Metric**: http.response.status_code
  - **Threshold**: 400
  - **Vulnerability Mitigated**: TODO
  - **Reliability**: TODO: Does this alert generate lots of false positives/false negatives? Rate as low, medium, or high reliability.

#### CPU Usage Monitor
CPU Usage Monitor is implemented as follows:
  - **Metric**: system.process.cpu.total
  - **Threshold**: 0.5
  - **Vulnerability Mitigated**: TODO
  - **Reliability**: TODO: Does this alert generate lots of false positives/false negatives? Rate as low, medium, or high reliability.

### Suggestions for Going Further (Optional)
_TODO_: 
- Each alert above pertains to a specific vulnerability/exploit. Recall that alerts only detect malicious behavior, but do not stop it. For each vulnerability/exploit identified by the alerts above, suggest a patch. E.g., implementing a blocklist is an effective tactic against brute-force attacks. It is not necessary to explain _how_ to implement each patch.

The logs and alerts generated during the assessment suggest that this network is susceptible to several active threats, identified by the alerts above. In addition to watching for occurrences of such threats, the network should be hardened against them. The Blue Team suggests that IT implement the fixes below to protect the network:
- Vulnerability 1
  - **Patch**: TODO: E.g., _install `special-security-package` with `apt-get`_
  - **Why It Works**: TODO: E.g., _`special-security-package` scans the system for viruses every day_
- Vulnerability 2
  - **Patch**: TODO: E.g., _install `special-security-package` with `apt-get`_
  - **Why It Works**: TODO: E.g., _`special-security-package` scans the system for viruses every day_
- Vulnerability 3
  - **Patch**: TODO: E.g., _install `special-security-package` with `apt-get`_
  - **Why It Works**: TODO: E.g., _`special-security-package` scans the system for viruses every day_
