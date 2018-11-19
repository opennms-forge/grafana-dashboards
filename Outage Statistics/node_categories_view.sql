CREATE VIEW node_categories AS (
  SELECT
    n.*,
    COALESCE(s_cat.categoryname, 'no category') AS categoryname
  FROM
    node n
  LEFT JOIN
    category_node cn
  ON
    n.nodeid = cn.nodeid
  LEFT JOIN
    categories s_cat
  ON
    cn.categoryid = s_cat.categoryid
);