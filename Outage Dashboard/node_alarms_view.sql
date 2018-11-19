CREATE VIEW node_alarms AS (
  SELECT
    n.nodeid,
    n.nodecreatetime,
    n.nodeparentid,
    n.nodetype,
    n.nodesysoid,
    n.nodesysname,
    n.nodesysdescription,
    n.nodesyslocation,
    n.nodesyscontact,
    n.nodelabel,
    n.nodelabelsource,
    n.nodenetbiosname,
    n.nodedomainname,
    n.operatingsystem,
    n.lastcapsdpoll,
    n.foreignsource,
    n.foreignid,
    n.location,
    a.alarmid,
    a.eventuei,
    a.ipaddr,
    a.reductionkey,
    a.alarmtype,
    a.counter,
    a.severity,
    a.lasteventid,
    a.firsteventtime,
    a.lasteventtime,
    a.firstautomationtime,
    a.lastautomationtime,
    a.description,
    a.logmsg,
    a.operinstruct,
    a.tticketid,
    a.tticketstate,
    a.suppresseduntil,
    a.suppresseduser,
    a.suppressedtime,
    a.alarmackuser,
    a.alarmacktime,
    a.managedobjectinstance,
    a.managedobjecttype,
    a.applicationdn,
    a.ossprimarykey,
    a.x733alarmtype,
    a.qosalarmstate,
    a.clearkey,
    a.ifindex,
    a.stickymemo,
    a.systemid,
    (a.alarmacktime NOTNULL) AS acknowledged,
    COALESCE(s_cat.categoryname, 'no category') AS categoryname,
    s_cat.categorydescription,
    s.servicename,
    nas.max_alarm_severity,
    nas.max_alarm_severity_unack,
    nas.alarm_count_unack,
    nas.alarm_count
  FROM
    node n
  JOIN
    alarms a
  ON
    n.nodeid = a.nodeid
  JOIN
    node_alarm_status nas
  ON
    a.nodeid = nas.nodeid
  LEFT JOIN
    service s
  ON
    a.serviceid = s.serviceid
  LEFT JOIN
    category_node cat
  ON
    n.nodeid = cat.nodeid
  LEFT JOIN
    categories s_cat
  ON
    cat.categoryid = s_cat.categoryid
);