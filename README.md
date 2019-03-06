# Grafana Dashboards

## Overview

Since https://grafana.com/dashboards doesn't provide functions to maintain dashboard configurations,
this repository can be used to collect configurations or fix existing ones.

## Workflow

### Issue first

Please create an issue which describes the problem, the board you want to share or maybe an idea which board could be useful.

#### Providing a new board

* Create a pull request (PR) with you dashboard configuration.
* The dashboard should be stored in a folder with an understandable name.
* Please make sure you've used the dashboard [export function](http://docs.grafana.org/reference/export_import/) provided by Grafana.
* Please add a reference to your issue number in the PR comment.

#### Fixing an issue

* Create a PR with the changes you've made to fix the issue.
* Please reference to your issue.

### Merging

After your PR was reviewed by other community contributors, it can and will be merged.
Depending on the used metrics in your board, it will not always be possible to test the board in detail.

### Referencing to GH

It's very important that your dashboard description on https://grafana.com/dashboards contains a reference to this Github repository. So other users are able to find, improve or maintain it.

You can use the following term:
`This dashboard is maintained on [Github](https://github.com/opennms-forge/grafana-dashboards)`
