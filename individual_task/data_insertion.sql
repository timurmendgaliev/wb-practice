INSERT INTO user_actions (user_id,
                          session_id,
                          action_id,
                          action_date,
                          element,
                          profit,
                          platform)
SELECT 
       (RANDOM() * 100 + 1)::INT as user_id,
       (RANDOM() * 100 + 1)::INT as session_id,
       (RANDOM() * 100 + 1)::INT as action_id,
       NOW() - (RANDOM() * INTERVAL '30 days') as action_date,
       (ARRAY['Добавить в корзину', 'Купить сейчас'])[FLOOR(RANDOM() * 2 + 1)] as element,
       (CASE WHEN RANDOM() < 0.5 THEN 0 ELSE (RANDOM() * 1000)::INT END) as profit,
       (ARRAY['Android', 'iOS', 'PC'])[FLOOR(RANDOM() * 3 + 1)] as platform
FROM generate_series(1, 1000)       
       