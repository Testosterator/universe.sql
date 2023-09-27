--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    age integer,
    distance_from_earth numeric,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    age integer,
    distance_from_earth numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    age integer,
    distance_from_earth numeric,
    star_id integer,
    has_life boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255),
    temperature integer NOT NULL,
    galaxy_id integer,
    has_moon boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: x; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.x (
    x_id integer NOT NULL,
    y text NOT NULL,
    z integer,
    name character varying(255)
);


ALTER TABLE public.x OWNER TO freecodecamp;

--
-- Name: x_x_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.x_x_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.x_x_seq OWNER TO freecodecamp;

--
-- Name: x_x_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.x_x_seq OWNED BY public.x.x_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: x x_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.x ALTER COLUMN x_id SET DEFAULT nextval('public.x_x_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'GALAXY1', 1000000, 100000.58, true);
INSERT INTO public.galaxy VALUES (2, 'GALAXY2', 2839283, 2323.32, false);
INSERT INTO public.galaxy VALUES (3, 'GALAXY3', 1000000, 100000.58, true);
INSERT INTO public.galaxy VALUES (4, 'GALAXY4', 2839283, 2323.32, false);
INSERT INTO public.galaxy VALUES (5, 'Galaxy5', 10, 50505, true);
INSERT INTO public.galaxy VALUES (6, 'Galaxy6', 10, 50505, true);
INSERT INTO public.galaxy VALUES (7, 'Galaxy7', 10, 50505, true);
INSERT INTO public.galaxy VALUES (8, 'Galaxy8', 10, 50505, true);
INSERT INTO public.galaxy VALUES (9, 'Galaxy9', 10, 50505, true);
INSERT INTO public.galaxy VALUES (10, 'Galaxy10', 10, 50505, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'MOON1', 150, 6000, 1);
INSERT INTO public.moon VALUES (2, 'MOON2', 349304, 43448, 2);
INSERT INTO public.moon VALUES (3, 'MOON3', 150, 6000, 3);
INSERT INTO public.moon VALUES (4, 'MOON4', 669304, 448, 2);
INSERT INTO public.moon VALUES (5, 'MOON5', 343, 343948, 1);
INSERT INTO public.moon VALUES (6, 'MOON6', 343, 343948, 1);
INSERT INTO public.moon VALUES (7, 'MOON7', 343, 343948, 1);
INSERT INTO public.moon VALUES (8, 'MOON8', 343, 343948, 1);
INSERT INTO public.moon VALUES (9, 'MOON9', 343, 343948, 1);
INSERT INTO public.moon VALUES (10, 'MOON10', 343, 343948, 1);
INSERT INTO public.moon VALUES (11, 'MOON11', 343, 343948, 1);
INSERT INTO public.moon VALUES (12, 'MOON12', 343, 343948, 1);
INSERT INTO public.moon VALUES (13, 'MOON13', 343, 343948, 1);
INSERT INTO public.moon VALUES (14, 'MOON14', 343, 343948, 1);
INSERT INTO public.moon VALUES (15, 'MOON15', 343, 343948, 1);
INSERT INTO public.moon VALUES (16, 'MOON16', 343, 343948, 1);
INSERT INTO public.moon VALUES (17, 'MOON17', 343, 343948, 1);
INSERT INTO public.moon VALUES (18, 'MOON18', 343, 343948, 1);
INSERT INTO public.moon VALUES (19, 'MOON19', 343, 343948, 1);
INSERT INTO public.moon VALUES (20, 'MOON20', 343, 343948, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'PLANET1', 1000000, 100000.58, 1, true);
INSERT INTO public.planet VALUES (2, 'PLANET2', 2839283, 2323.32, 2, false);
INSERT INTO public.planet VALUES (3, 'PLANET3', 1000000, 100000.58, 3, true);
INSERT INTO public.planet VALUES (4, 'PLANET4', 2839283, 2323.32, 2, false);
INSERT INTO public.planet VALUES (5, 'PLANET5', 23233, 232323.232, 1, true);
INSERT INTO public.planet VALUES (6, 'PLANET6', 23233, 232323.232, 1, true);
INSERT INTO public.planet VALUES (7, 'PLANET7', 23233, 232323.232, 1, true);
INSERT INTO public.planet VALUES (8, 'PLANET8', 23233, 232323.232, 1, true);
INSERT INTO public.planet VALUES (9, 'PLANET9', 23233, 232323.232, 1, true);
INSERT INTO public.planet VALUES (10, 'PLANET10', 23233, 232323.232, 1, true);
INSERT INTO public.planet VALUES (11, 'PLANET11', 23233, 232323.232, 1, true);
INSERT INTO public.planet VALUES (12, 'PLANET12', 23233, 232323.232, 1, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'STAR1', 6000, 1, true);
INSERT INTO public.star VALUES (2, 'STAR2', 7000, 2, false);
INSERT INTO public.star VALUES (3, 'STAR3', 6000, 1, true);
INSERT INTO public.star VALUES (4, 'STAR4', 7000, 2, false);
INSERT INTO public.star VALUES (5, 'STAR5', 34343, 1, false);
INSERT INTO public.star VALUES (6, 'STAR6', 34343, 1, false);


--
-- Data for Name: x; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.x VALUES (1, 'BB', 12, NULL);
INSERT INTO public.x VALUES (3, '34', 12, NULL);
INSERT INTO public.x VALUES (4, '35', 12, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: x_x_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.x_x_seq', 4, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star uniq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uniq UNIQUE (star_id);


--
-- Name: x x_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.x
    ADD CONSTRAINT x_pkey PRIMARY KEY (x_id);


--
-- Name: x x_y_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.x
    ADD CONSTRAINT x_y_key UNIQUE (y);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

