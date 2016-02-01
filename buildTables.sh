#!/bin/bash

sqlite3 ctf.db 'CREATE TABLE categories ( id INTEGER PRIMARY KEY, name TEXT );'
sqlite3 ctf.db 'CREATE TABLE tasks (id INTEGER PRIMARY KEY, name TEXT, desc TEXT, file TEXT, flag TEXT, score INT, category INT, FOREIGN KEY(category) REFERENCES categories(id) ON DELETE CASCADE);'

sqlite3 ctf.db 'CREATE TABLE users (id INTEGER NOT NULL, username TEXT, "isAdmin" BOOLEAN, password TEXT, hidden INTEGER,PRIMARY KEY (id))';

sqlite3 ctf.db 'CREATE TABLE flags (task_id INTEGER, user_id INTEGER, score INTEGER, timestamp BIGINT, ip TEXT, PRIMARY KEY (task_id, user_id), FOREIGN KEY(task_id) REFERENCES tasks(id) ON DELETE CASCADE, FOREIGN KEY(user_id) REFERENCES users(id) ON DELETE CASCADE);'
