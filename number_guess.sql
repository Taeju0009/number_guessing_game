--
-- PostgreSQL database dump
--

DROP DATABASE IF EXISTS number_guess;
CREATE DATABASE number_guess;

\connect number_guess

--
-- Name: users; Type: TABLE
--

CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  username VARCHAR(22) UNIQUE NOT NULL
);

--
-- Name: games; Type: TABLE
--

CREATE TABLE games (
  game_id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(user_id),
  guesses INT NOT NULL
);
