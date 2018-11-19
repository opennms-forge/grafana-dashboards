CREATE VIEW node_ip_services AS (
  SELECT
    n.*,
    ip_if.id AS ip_if_id,
    ip_if.ipaddr,
    ip_if.iphostname,
    ip_if.ismanaged,
    ip_if.ipstatus,
    ip_if.iplastcapsdpoll,
    ip_if.issnmpprimary,
    ip_if.snmpinterfaceid,
    ip_if.netmask,
    svc.serviceid,
    svc.servicename,
    if_svc.id AS if_svc_id,
    if_svc.ifindex AS if_svc_ifindex,
    if_svc.status AS if_svc_status
  FROM
    node_categories n
  LEFT JOIN
    ipinterface ip_if
  ON
    ip_if.nodeid = n.nodeid
  LEFT JOIN
    ifservices if_svc
  ON
    ip_if.id = if_svc.ipinterfaceid
  LEFT JOIN
    service svc
  ON
    if_svc.serviceid = svc.serviceid
);