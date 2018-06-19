# Linux Node-Level Performance Data

This board is a replica of OpenNMS' node-level performance data KSC graph page.

## Details

* See all Linux node metrics in one dashboard
* Nodes get selected by using the nodeFilter: `nodeSysOID LIKE .1.3.6.1.4.1.8072.3.2.10' & serviceName like 'SNMP'`
* Memory statistics graph is configured to use the new memory definition. See here: https://askubuntu.com/questions/770108/what-do-the-changes-in-free-output-from-14-04-to-16-04-mean
* **Netsnmp 5.7.3** is required on client side because of `ssCpuNumCpus` metric for CPU load graph
* Uptime graph is set to 4 weeks range to get an idea if reboots happend

## Installation

The board can be found here: https://grafana.com/dashboards/4046
