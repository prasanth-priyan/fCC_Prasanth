--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (39, 2018, 'Final', 157, 158, 4, 2);
INSERT INTO public.games VALUES (40, 2018, 'Third Place', 159, 160, 2, 0);
INSERT INTO public.games VALUES (41, 2018, 'Semi-Final', 158, 160, 2, 1);
INSERT INTO public.games VALUES (42, 2018, 'Semi-Final', 157, 159, 1, 0);
INSERT INTO public.games VALUES (43, 2018, 'Quarter-Final', 158, 166, 3, 2);
INSERT INTO public.games VALUES (44, 2018, 'Quarter-Final', 160, 168, 2, 0);
INSERT INTO public.games VALUES (45, 2018, 'Quarter-Final', 159, 170, 2, 1);
INSERT INTO public.games VALUES (46, 2018, 'Quarter-Final', 157, 172, 2, 0);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 160, 174, 2, 1);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 168, 176, 1, 0);
INSERT INTO public.games VALUES (49, 2018, 'Eighth-Final', 159, 178, 3, 2);
INSERT INTO public.games VALUES (50, 2018, 'Eighth-Final', 170, 180, 2, 0);
INSERT INTO public.games VALUES (51, 2018, 'Eighth-Final', 158, 182, 2, 1);
INSERT INTO public.games VALUES (52, 2018, 'Eighth-Final', 166, 184, 2, 1);
INSERT INTO public.games VALUES (53, 2018, 'Eighth-Final', 172, 186, 2, 1);
INSERT INTO public.games VALUES (54, 2018, 'Eighth-Final', 157, 188, 4, 3);
INSERT INTO public.games VALUES (55, 2014, 'Final', 189, 188, 1, 0);
INSERT INTO public.games VALUES (56, 2014, 'Third Place', 191, 170, 3, 0);
INSERT INTO public.games VALUES (57, 2014, 'Semi-Final', 188, 191, 1, 0);
INSERT INTO public.games VALUES (58, 2014, 'Semi-Final', 189, 170, 7, 1);
INSERT INTO public.games VALUES (59, 2014, 'Quarter-Final', 191, 198, 1, 0);
INSERT INTO public.games VALUES (60, 2014, 'Quarter-Final', 188, 159, 1, 0);
INSERT INTO public.games VALUES (61, 2014, 'Quarter-Final', 170, 174, 2, 1);
INSERT INTO public.games VALUES (62, 2014, 'Quarter-Final', 189, 157, 1, 0);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 170, 206, 2, 1);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 174, 172, 2, 0);
INSERT INTO public.games VALUES (65, 2014, 'Eighth-Final', 157, 210, 2, 0);
INSERT INTO public.games VALUES (66, 2014, 'Eighth-Final', 189, 212, 2, 1);
INSERT INTO public.games VALUES (67, 2014, 'Eighth-Final', 191, 180, 2, 1);
INSERT INTO public.games VALUES (68, 2014, 'Eighth-Final', 198, 216, 2, 1);
INSERT INTO public.games VALUES (69, 2014, 'Eighth-Final', 188, 176, 1, 0);
INSERT INTO public.games VALUES (70, 2014, 'Eighth-Final', 159, 220, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (157, 'France');
INSERT INTO public.teams VALUES (158, 'Croatia');
INSERT INTO public.teams VALUES (159, 'Belgium');
INSERT INTO public.teams VALUES (160, 'England');
INSERT INTO public.teams VALUES (166, 'Russia');
INSERT INTO public.teams VALUES (168, 'Sweden');
INSERT INTO public.teams VALUES (170, 'Brazil');
INSERT INTO public.teams VALUES (172, 'Uruguay');
INSERT INTO public.teams VALUES (174, 'Colombia');
INSERT INTO public.teams VALUES (176, 'Switzerland');
INSERT INTO public.teams VALUES (178, 'Japan');
INSERT INTO public.teams VALUES (180, 'Mexico');
INSERT INTO public.teams VALUES (182, 'Denmark');
INSERT INTO public.teams VALUES (184, 'Spain');
INSERT INTO public.teams VALUES (186, 'Portugal');
INSERT INTO public.teams VALUES (188, 'Argentina');
INSERT INTO public.teams VALUES (189, 'Germany');
INSERT INTO public.teams VALUES (191, 'Netherlands');
INSERT INTO public.teams VALUES (198, 'Costa Rica');
INSERT INTO public.teams VALUES (206, 'Chile');
INSERT INTO public.teams VALUES (210, 'Nigeria');
INSERT INTO public.teams VALUES (212, 'Algeria');
INSERT INTO public.teams VALUES (216, 'Greece');
INSERT INTO public.teams VALUES (220, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 70, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 220, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

