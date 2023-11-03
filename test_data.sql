INSERT INTO users (user_id, username, password, user_state) VALUES 
(1, 'user1', '5e4eab96e8b9868ed28cc79c9ceec8b3', 1),
(2, 'user2', '53cc9e310bc5e01cb42fd0aeda81e27d', 0),
(3, 'user3', 'f11c9bb73e5a31c851a572a6356beb05', 1),
(4, 'user4', '89cda7d2f7b307603d19aed5b1b7746a', 0),
(5, 'user5', 'cefdd91d743d5a036d2d511017fef131', 1);

INSERT INTO sessions (session_id, session_state) VALUES 
(1, 1),
(2, 2),
(3, 0),
(4, 1),
(5, 2);

INSERT INTO user_session (session_id, user_id) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

INSERT INTO items (item_id, user_id, item_name, item_price, item_state) VALUES 
(1, 1, 'Item01', 11.1, 1),
(2, 1, 'Item02', 12.2, 0),
(3, 2, 'Item03', 13.3, 1),
(4, 2, 'Item04', 14.4, 0),
(5, 3, 'Item05', 15.5, 1),
(6, 3, 'Item06', 16.6, 0),
(7, 4, 'Item07', 17.7, 1),
(8, 4, 'Item08', 18.8, 0),
(9, 5, 'Item09', 19.9, 1),
(10, 5, 'Item10', 21.0, 0);

INSERT INTO cart (user_id, item_id, cart_id) VALUES 
(1, 7, 3958),
(2, 7, 9711),
(2, 2, 7926),
(3, 8, 7193),
(4, 6, 6195),
(5, 2, 2353),
(5, 3, 9934);

INSERT INTO orders (order_id, user_id, item_id, order_state) VALUES 
(5765, 1, 7, 2),
(9518, 2, 7, 1),
(4325, 2, 2, 1),
(6994, 3, 8, 0),
(4254, 4, 6, 2),
(3795, 5, 2, 2),
(8607, 5, 3, 2);

INSERT INTO complaints (complaint_id, user_id, order_id, session_id, complaint_state) VALUES 
(2260, 1, 5765, 1, 2),
(3309, 2, 4325, 2, 0),
(2131, 4, 4254, 4, 0),
(2147, 5, 8607, 5, 4);

INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES 
(8769, 1, 1, 'I''d like to return my purchase, please.'),
(9599, 1, 1, 'Thank you for your assistance.'),
(1081, 2, 2, 'I received the wrong item.'),
(5777, 2, 2, 'Hello, can you help me with my order?'),
(6884, 3, 3, 'I''d like to return my purchase, please.'),
(7384, 3, 3, 'Hello, can you help me with my order?'),
(2722, 3, 3, 'Hello, can you help me with my order?'),
(1256, 4, 4, 'I received the wrong item.'),
(3788, 5, 5, 'Thank you for your assistance.');

INSERT INTO favorite (user_id, item_id, favorite_id) VALUES 
(1, 7, 7718),
(2, 2, 7560),
(2, 8, 9767),
(3, 6, 9569),
(3, 9, 5634),
(4, 10, 1624),
(5, 1, 3424);



-- 1. 插入一条新记录到complaints表中
INSERT INTO complaints (user_id, order_id, session_id) 
VALUES (1, 1, 1); -- 假设有user_id, order_id, session_id的值为1

-- 2. 检索刚刚插入的记录
SELECT * FROM complaints 
WHERE complaint_id = LAST_INSERT_ID();
