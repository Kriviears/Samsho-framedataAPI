CREATE TABLE characters (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    name TEXT NOT NULL,
    thumbnail TEXT,
    banner TEXT
);

CREATE TABLE moves (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    command TEXT NOT NULL,
    media TEXT,
    startUp INTEGER,
    onBlock INTEGER,
    onHit INTEGER,
    attribute TEXT,
    recovery INTEGER,
    damage INTEGER,
    cancel boolean,
    super_cancel boolean,
    properties TEXT,
    special boolean
);

CREATE TABLE users(
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  user_name TEXT NOT NULL UNIQUE,
  password TEXT NOT NULL
);

CREATE TABLE notes (
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  content TEXT
);

CREATE TABLE info (
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  content TEXT NOT NULL
);