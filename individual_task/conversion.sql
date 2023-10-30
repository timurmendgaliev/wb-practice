select 
  platform,
  COUNT(DISTINCT action_id) as total_actions,
  COUNT(DISTINCT action_id) FILTER (WHERE profit > 0) AS successful_actions,
  (COUNT(DISTINCT action_id) FILTER (WHERE profit > 0)::NUMERIC / COUNT(DISTINCT action_id)) AS conversion
FROM user_actions
GROUP BY platform