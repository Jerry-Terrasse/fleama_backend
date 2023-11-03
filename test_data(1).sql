INSERT INTO user_session (session_id, user_id) VALUES (1, 3);
INSERT INTO user_session (session_id, user_id) VALUES (1, 4);
INSERT INTO user_session (session_id, user_id) VALUES (2, 10000);
INSERT INTO user_session (session_id, user_id) VALUES (2, 2);
INSERT INTO user_session (session_id, user_id) VALUES (3, 3);
INSERT INTO user_session (session_id, user_id) VALUES (3, 5);
INSERT INTO user_session (session_id, user_id) VALUES (4, 3);
INSERT INTO user_session (session_id, user_id) VALUES (4, 4);
INSERT INTO user_session (session_id, user_id) VALUES (4, 1);
INSERT INTO user_session (session_id, user_id) VALUES (5, 4);
INSERT INTO user_session (session_id, user_id) VALUES (5, 2);
INSERT INTO user_session (session_id, user_id) VALUES (5, 5);
INSERT INTO user_session (session_id, user_id) VALUES (5, 1);
INSERT INTO user_session (session_id, user_id) VALUES (6, 5);
INSERT INTO user_session (session_id, user_id) VALUES (6, 1);
INSERT INTO user_session (session_id, user_id) VALUES (6, 2);
INSERT INTO user_session (session_id, user_id) VALUES (6, 10000);
INSERT INTO user_session (session_id, user_id) VALUES (6, 4);
INSERT INTO user_session (session_id, user_id) VALUES (7, 5);
INSERT INTO user_session (session_id, user_id) VALUES (7, 4);
INSERT INTO user_session (session_id, user_id) VALUES (7, 2);
INSERT INTO user_session (session_id, user_id) VALUES (7, 1);
INSERT INTO user_session (session_id, user_id) VALUES (7, 10000);
INSERT INTO user_session (session_id, user_id) VALUES (8, 5);
INSERT INTO user_session (session_id, user_id) VALUES (8, 4);
INSERT INTO user_session (session_id, user_id) VALUES (8, 2);
INSERT INTO user_session (session_id, user_id) VALUES (8, 3);
INSERT INTO user_session (session_id, user_id) VALUES (8, 1);
INSERT INTO user_session (session_id, user_id) VALUES (9, 10000);
INSERT INTO user_session (session_id, user_id) VALUES (9, 1);
INSERT INTO user_session (session_id, user_id) VALUES (9, 4);
INSERT INTO user_session (session_id, user_id) VALUES (9, 3);
INSERT INTO user_session (session_id, user_id) VALUES (9, 5);
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (1, 3, 1, 'Hello from user 3 in session 1!');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (2, 4, 1, 'Hello from user 4 in session 1!');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (3, 10000, 2, 'Hello from user 10000 in session 2!');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (4, 2, 2, 'Hello from user 2 in session 2!');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (5, 3, 3, 'Hello from user 3 in session 3!');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (6, 5, 3, 'Hello from user 5 in session 3!');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (7, 3, 4, 'User 3 in session 4 says: This is message 7.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (8, 3, 4, 'User 3 in session 4 says: This is message 8.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (9, 4, 4, 'User 4 in session 4 says: This is message 9.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (10, 4, 4, 'User 4 in session 4 says: This is message 10.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (11, 1, 4, 'User 1 in session 4 says: This is message 11.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (12, 1, 4, 'User 1 in session 4 says: This is message 12.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (13, 4, 5, 'User 4 in session 5 says: This is message 13.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (14, 4, 5, 'User 4 in session 5 says: This is message 14.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (15, 2, 5, 'User 2 in session 5 says: This is message 15.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (16, 2, 5, 'User 2 in session 5 says: This is message 16.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (17, 5, 5, 'User 5 in session 5 says: This is message 17.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (18, 5, 5, 'User 5 in session 5 says: This is message 18.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (19, 1, 5, 'User 1 in session 5 says: This is message 19.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (20, 1, 5, 'User 1 in session 5 says: This is message 20.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (21, 5, 6, 'User 5 in session 6 says: This is message 21.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (22, 5, 6, 'User 5 in session 6 says: This is message 22.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (23, 1, 6, 'User 1 in session 6 says: This is message 23.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (24, 1, 6, 'User 1 in session 6 says: This is message 24.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (25, 2, 6, 'User 2 in session 6 says: This is message 25.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (26, 2, 6, 'User 2 in session 6 says: This is message 26.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (27, 10000, 6, 'User 10000 in session 6 says: This is message 27.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (28, 10000, 6, 'User 10000 in session 6 says: This is message 28.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (29, 4, 6, 'User 4 in session 6 says: This is message 29.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (30, 4, 6, 'User 4 in session 6 says: This is message 30.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (31, 5, 7, 'User 5 in session 7 says: This is message 31.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (32, 5, 7, 'User 5 in session 7 says: This is message 32.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (33, 4, 7, 'User 4 in session 7 says: This is message 33.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (34, 4, 7, 'User 4 in session 7 says: This is message 34.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (35, 2, 7, 'User 2 in session 7 says: This is message 35.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (36, 2, 7, 'User 2 in session 7 says: This is message 36.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (37, 1, 7, 'User 1 in session 7 says: This is message 37.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (38, 1, 7, 'User 1 in session 7 says: This is message 38.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (39, 10000, 7, 'User 10000 in session 7 says: This is message 39.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (40, 10000, 7, 'User 10000 in session 7 says: This is message 40.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (41, 5, 8, 'User 5 in session 8 says: This is message 41.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (42, 5, 8, 'User 5 in session 8 says: This is message 42.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (43, 4, 8, 'User 4 in session 8 says: This is message 43.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (44, 4, 8, 'User 4 in session 8 says: This is message 44.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (45, 2, 8, 'User 2 in session 8 says: This is message 45.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (46, 2, 8, 'User 2 in session 8 says: This is message 46.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (47, 3, 8, 'User 3 in session 8 says: This is message 47.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (48, 3, 8, 'User 3 in session 8 says: This is message 48.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (49, 1, 8, 'User 1 in session 8 says: This is message 49.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (50, 1, 8, 'User 1 in session 8 says: This is message 50.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (51, 10000, 9, 'User 10000 in session 9 says: This is message 51.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (52, 10000, 9, 'User 10000 in session 9 says: This is message 52.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (53, 1, 9, 'User 1 in session 9 says: This is message 53.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (54, 1, 9, 'User 1 in session 9 says: This is message 54.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (55, 4, 9, 'User 4 in session 9 says: This is message 55.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (56, 4, 9, 'User 4 in session 9 says: This is message 56.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (57, 3, 9, 'User 3 in session 9 says: This is message 57.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (58, 3, 9, 'User 3 in session 9 says: This is message 58.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (59, 5, 9, 'User 5 in session 9 says: This is message 59.');
INSERT INTO messages (message_id, user_id, session_id, message_content) VALUES (60, 5, 9, 'User 5 in session 9 says: This is message 60.');
