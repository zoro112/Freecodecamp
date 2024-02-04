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
    name character varying(30),
    diameter integer,
    wheight integer,
    age numeric(6,1) NOT NULL,
    sc_name text,
    is_known boolean
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
    name character varying(30),
    diameter integer,
    wheight integer,
    age numeric(6,1) NOT NULL,
    sc_name text,
    is_known boolean,
    planet_id integer NOT NULL
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
    name character varying(30),
    diameter integer,
    wheight integer,
    age numeric(6,1) NOT NULL,
    sc_name text,
    is_known boolean,
    star_id integer NOT NULL
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
    name character varying(30),
    diameter integer,
    wheight integer,
    age numeric(6,1) NOT NULL,
    sc_name text,
    is_known boolean,
    galaxy_id integer NOT NULL
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
-- Name: test; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.test (
    test_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL
);


ALTER TABLE public.test OWNER TO freecodecamp;

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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'test', 8, 9, 3.0, 'test', false);
INSERT INTO public.galaxy VALUES (2, 'test', 8, 9, 3.0, 'test1', false);
INSERT INTO public.galaxy VALUES (3, 'test', 8, 9, 3.0, 'test2', true);
INSERT INTO public.galaxy VALUES (4, 'test', 8, 9, 3.0, 'test3', false);
INSERT INTO public.galaxy VALUES (5, 'test', 8, 9, 3.0, 'test4', true);
INSERT INTO public.galaxy VALUES (6, 'test', 8, 9, 3.0, 'test5', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (76, 'test', 8, 9, 3.0, 'test77', false, 1);
INSERT INTO public.moon VALUES (77, 'test', 8, 9, 3.0, 'test89', false, 1);
INSERT INTO public.moon VALUES (78, 'test', 8, 9, 3.0, 'test9', true, 2);
INSERT INTO public.moon VALUES (79, 'test', 8, 9, 3.0, 'test13', false, 3);
INSERT INTO public.moon VALUES (80, 'test', 8, 9, 3.0, 'test14', true, 4);
INSERT INTO public.moon VALUES (81, 'test', 8, 9, 3.0, 'test135', false, 1);
INSERT INTO public.moon VALUES (82, 'test', 8, 9, 3.0, 'test', false, 1);
INSERT INTO public.moon VALUES (83, 'test', 8, 9, 3.0, 'test1', false, 1);
INSERT INTO public.moon VALUES (84, 'test', 8, 9, 3.0, 'test2', true, 2);
INSERT INTO public.moon VALUES (85, 'test', 8, 9, 3.0, 'test3', false, 3);
INSERT INTO public.moon VALUES (86, 'test', 8, 9, 3.0, 'test4', true, 4);
INSERT INTO public.moon VALUES (87, 'test', 8, 9, 3.0, 'test5', false, 1);
INSERT INTO public.moon VALUES (88, 'test', 8, 9, 3.0, 'test7', false, 1);
INSERT INTO public.moon VALUES (89, 'test', 8, 9, 3.0, 'test8', false, 1);
INSERT INTO public.moon VALUES (90, 'test', 8, 9, 3.0, 'test79', true, 2);
INSERT INTO public.moon VALUES (91, 'test', 8, 9, 3.0, 'test133', false, 3);
INSERT INTO public.moon VALUES (92, 'test', 8, 9, 3.0, 'test194', true, 4);
INSERT INTO public.moon VALUES (93, 'test', 8, 9, 3.0, 'test15', false, 1);
INSERT INTO public.moon VALUES (94, 'test', 8, 9, 3.0, 'test0', false, 1);
INSERT INTO public.moon VALUES (95, 'test', 8, 9, 3.0, 'test10', false, 1);
INSERT INTO public.moon VALUES (96, 'test', 8, 9, 3.0, 'test20', true, 2);
INSERT INTO public.moon VALUES (97, 'test', 8, 9, 3.0, 'test30', false, 3);
INSERT INTO public.moon VALUES (98, 'test', 8, 9, 3.0, 'test40', true, 4);
INSERT INTO public.moon VALUES (99, 'test', 8, 9, 3.0, 'test50', false, 1);
INSERT INTO public.moon VALUES (100, 'test', 8, 9, 3.0, 'test130', false, 3);
INSERT INTO public.moon VALUES (101, 'test', 8, 9, 3.0, 'test140', true, 4);
INSERT INTO public.moon VALUES (102, 'test', 8, 9, 3.0, 'test150', false, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'test', 8, 9, 3.0, 'test7', false, 1);
INSERT INTO public.planet VALUES (2, 'test', 8, 9, 3.0, 'test8', false, 1);
INSERT INTO public.planet VALUES (3, 'test', 8, 9, 3.0, 'test9', true, 2);
INSERT INTO public.planet VALUES (4, 'test', 8, 9, 3.0, 'test13', false, 3);
INSERT INTO public.planet VALUES (5, 'test', 8, 9, 3.0, 'test14', true, 4);
INSERT INTO public.planet VALUES (6, 'test', 8, 9, 3.0, 'test15', false, 1);
INSERT INTO public.planet VALUES (7, 'test', 8, 9, 3.0, 'test', false, 1);
INSERT INTO public.planet VALUES (8, 'test', 8, 9, 3.0, 'test1', false, 1);
INSERT INTO public.planet VALUES (9, 'test', 8, 9, 3.0, 'test2', true, 2);
INSERT INTO public.planet VALUES (10, 'test', 8, 9, 3.0, 'test3', false, 3);
INSERT INTO public.planet VALUES (11, 'test', 8, 9, 3.0, 'test4', true, 4);
INSERT INTO public.planet VALUES (12, 'test', 8, 9, 3.0, 'test5', false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'test', 8, 9, 3.0, 'test', false, 1);
INSERT INTO public.star VALUES (2, 'test', 8, 9, 3.0, 'test1', false, 1);
INSERT INTO public.star VALUES (3, 'test', 8, 9, 3.0, 'test2', true, 2);
INSERT INTO public.star VALUES (4, 'test', 8, 9, 3.0, 'test3', false, 3);
INSERT INTO public.star VALUES (5, 'test', 8, 9, 3.0, 'test4', true, 4);
INSERT INTO public.star VALUES (6, 'test', 8, 9, 3.0, 'test5', false, 1);


--
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.test VALUES (1, 'a', 2);
INSERT INTO public.test VALUES (2, 'ab', 2);
INSERT INTO public.test VALUES (3, 'ac', 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 102, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_sc_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_sc_name_key UNIQUE (sc_name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_sc_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_sc_name_key UNIQUE (sc_name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_sc_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_sc_name_key UNIQUE (sc_name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_sc_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_sc_name_key UNIQUE (sc_name);


--
-- Name: test test_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_name_key UNIQUE (name);


--
-- Name: test test_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (test_id);


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

