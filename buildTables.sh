#!/bin/bash

sqlite3 ctf.db 'CREATE TABLE categories ( id INTEGER PRIMARY KEY, name TEXT );'
sqlite3 ctf.db 'CREATE TABLE tasks (id INTEGER PRIMARY KEY, name TEXT, desc TEXT, file TEXT, flag TEXT, score INT, category INT, FOREIGN KEY(category) REFERENCES categories(id));'
