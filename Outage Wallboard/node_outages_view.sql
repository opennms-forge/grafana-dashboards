CREATE VIEW node_outages AS (
  SELECT
    outages.outageid,
    outages.svclosteventid,
    outages.svcregainedeventid,
    outages.iflostservice,
    outages.ifregainedservice,
    outages.ifserviceid,
    e.eventuei AS svclosteventuei,
    e.eventsource,
    e.alarmid,
    e.eventseverity,
    (ifregainedservice NOTNULL) AS resolved,
    s.servicename,
    i.serviceid,
    ipif.ipaddr,
    COALESCE(outages.ifregainedservice - outages.iflostservice, now() - outages.iflostservice) AS duration,
    nos.max_outage_severity,
    nc.*
  FROM
    outages
  JOIN
    events e
  ON
    outages.svclosteventid = e.eventid
  JOIN
    ifservices i
  ON
    outages.ifserviceid = i.id
  JOIN
    service s
  ON
    i.serviceid = s.serviceid
  JOIN
    ipinterface ipif
  ON
    i.ipinterfaceid = ipif.id
  JOIN
    node_categories nc
  ON
    nc.nodeid = e.nodeid
  JOIN
    node_outage_status nos
  ON
    nc.nodeid = nos.nodeid
);