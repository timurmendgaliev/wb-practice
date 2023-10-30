select 
  platform,
  COUNT(DISTINCT id) as total_actions,
  COUNT(DISTINCT id) FILTER (WHERE profit > 0) AS successful_actions,
  (COUNT(DISTINCT id) FILTER (WHERE profit > 0)::NUMERIC / COUNT(DISTINCT id)) AS conversion
FROM user_actions
GROUP BY platform