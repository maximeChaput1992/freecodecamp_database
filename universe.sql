--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    number_of_planet integer,
    descrition text,
    has_life boolean,
    test integer DEFAULT 3 NOT NULL,
    name character varying(30)
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
-- Name: lasttable; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.lasttable (
    table_id integer NOT NULL,
    column2 integer NOT NULL,
    name character varying(30) NOT NULL,
    lasttable_id integer NOT NULL
);


ALTER TABLE public.lasttable OWNER TO freecodecamp;

--
-- Name: lasttable_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.lasttable_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lasttable_table_id_seq OWNER TO freecodecamp;

--
-- Name: lasttable_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.lasttable_table_id_seq OWNED BY public.lasttable.table_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    planet_id integer,
    diametre integer,
    life boolean NOT NULL,
    light text
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
    star_id integer NOT NULL,
    planet_distance numeric(5,2),
    has_life boolean NOT NULL,
    number_of_moon integer
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
    galaxy_id integer NOT NULL,
    has_life boolean NOT NULL,
    description text
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: lasttable table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lasttable ALTER COLUMN table_id SET DEFAULT nextval('public.lasttable_table_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.galaxy VALUES (5, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.galaxy VALUES (6, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.galaxy VALUES (7, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.galaxy VALUES (8, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.galaxy VALUES (9, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.galaxy VALUES (10, NULL, NULL, NULL, 3, NULL);


--
-- Data for Name: lasttable; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.lasttable VALUES (1, 2, 'ALLO', 1);
INSERT INTO public.lasttable VALUES (3, 3, 'ALLO', 2);
INSERT INTO public.lasttable VALUES (4, 4, 'ALLO', 4);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, '1', 2, NULL, true, NULL);
INSERT INTO public.moon VALUES (2, '2', 2, NULL, true, NULL);
INSERT INTO public.moon VALUES (3, '3', 2, NULL, true, NULL);
INSERT INTO public.moon VALUES (4, '4', 2, NULL, true, NULL);
INSERT INTO public.moon VALUES (5, '5', 2, NULL, true, NULL);
INSERT INTO public.moon VALUES (6, '6', 2, NULL, true, NULL);
INSERT INTO public.moon VALUES (7, '7', 2, NULL, true, NULL);
INSERT INTO public.moon VALUES (8, '8', 2, NULL, true, NULL);
INSERT INTO public.moon VALUES (9, '9', 2, NULL, true, NULL);
INSERT INTO public.moon VALUES (10, '10', 2, NULL, true, NULL);
INSERT INTO public.moon VALUES (11, '11', 2, NULL, true, NULL);
INSERT INTO public.moon VALUES (12, '12', 2, NULL, true, NULL);
INSERT INTO public.moon VALUES (13, '13', 2, NULL, true, NULL);
INSERT INTO public.moon VALUES (14, '14', 2, NULL, true, NULL);
INSERT INTO public.moon VALUES (15, '15', 2, NULL, true, NULL);
INSERT INTO public.moon VALUES (16, '16', 2, NULL, true, NULL);
INSERT INTO public.moon VALUES (17, '17', 2, NULL, true, NULL);
INSERT INTO public.moon VALUES (18, '18', 2, NULL, true, NULL);
INSERT INTO public.moon VALUES (19, '19', 2, NULL, true, NULL);
INSERT INTO public.moon VALUES (20, '20', 2, NULL, true, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'planet1', 2, NULL, true, NULL);
INSERT INTO public.planet VALUES (4, 'planet3', 3, NULL, true, NULL);
INSERT INTO public.planet VALUES (5, 'planet4', 6, NULL, true, NULL);
INSERT INTO public.planet VALUES (6, 'planet5', 8, NULL, true, NULL);
INSERT INTO public.planet VALUES (9, 'planet8', 9, NULL, true, NULL);
INSERT INTO public.planet VALUES (10, 'planet', 10, NULL, true, NULL);
INSERT INTO public.planet VALUES (11, 'plan4t', 11, NULL, true, NULL);
INSERT INTO public.planet VALUES (13, 'planet12', 12, NULL, true, NULL);
INSERT INTO public.planet VALUES (14, 'planet13', 13, NULL, true, NULL);
INSERT INTO public.planet VALUES (15, 'planet14', 14, NULL, true, NULL);
INSERT INTO public.planet VALUES (16, 'planet15', 15, NULL, true, NULL);
INSERT INTO public.planet VALUES (17, 'planet16', 16, NULL, true, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'etoile1', 1, true, 'blabla');
INSERT INTO public.star VALUES (3, 'etoile2', 1, true, 'blabla');
INSERT INTO public.star VALUES (6, 'etoilE3', 5, true, 'blabla');
INSERT INTO public.star VALUES (7, 'etoilE4', 5, true, 'blabla');
INSERT INTO public.star VALUES (8, 'etoilE5', 5, true, 'blabla');
INSERT INTO public.star VALUES (9, 'etoilE6', 5, true, 'blabla');
INSERT INTO public.star VALUES (10, NULL, 1, true, NULL);
INSERT INTO public.star VALUES (11, NULL, 1, true, NULL);
INSERT INTO public.star VALUES (12, NULL, 1, true, NULL);
INSERT INTO public.star VALUES (13, NULL, 1, true, NULL);
INSERT INTO public.star VALUES (14, NULL, 1, true, NULL);
INSERT INTO public.star VALUES (15, NULL, 1, true, NULL);
INSERT INTO public.star VALUES (16, NULL, 1, true, NULL);
INSERT INTO public.star VALUES (17, NULL, 1, true, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: lasttable_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.lasttable_table_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 17, true);


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
-- Name: lasttable lasttable_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lasttable
    ADD CONSTRAINT lasttable_pkey PRIMARY KEY (lasttable_id);


--
-- Name: lasttable lasttable_table_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lasttable
    ADD CONSTRAINT lasttable_table_id_key UNIQUE (table_id);


--
-- Name: moon moon_light_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_light_key UNIQUE (light);


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
-- Name: planet planet_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_key UNIQUE (star_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

