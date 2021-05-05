# UPS Stats

This board provides stats for monitoring UPS units.  It is designed around APC, and does use data that requires adding in some additional data collection as per https://opennms.discourse.group/t/monitor-apc-ups-units/1047.

## Details

Provides metrics on UPS status.
For example:

* Battery charge level
* Time Remaining
* Load
* Status of units
* Temperature
* In/out Voltage
* Battery pack health (if applicable)
...

## Installation

Modify SNMP collection to the additional OIDs listed at https://opennms.discourse.group/t/monitor-apc-ups-units/1047
The board can be found here: https://grafana.com/dashboards/5090/
