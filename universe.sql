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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    description text,
    is_twin boolean,
    is_stellar boolean,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    name character varying(50) NOT NULL,
    radius numeric(12,5),
    black_hole_id integer NOT NULL
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    description text,
    age_in_millions_of_years integer,
    radius numeric(15,6),
    galaxy_name character varying(50) NOT NULL,
    distance_from_earth integer,
    galaxy_id integer NOT NULL,
    is_elliptical boolean,
    name character varying(50),
    is_spiral boolean
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
    description text,
    is_spherical boolean,
    age_in_millions_of_years integer,
    galaxy_name character varying(50),
    distance_from_earth integer,
    orbital_priod numeric(12,5),
    name character varying(50) NOT NULL,
    moon_id integer NOT NULL,
    only_moon boolean,
    planet_name character varying(50) NOT NULL
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
    description text,
    has_life boolean,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    planet_type character varying(50),
    galaxy_name character varying(50),
    distance_from_earth integer,
    name character varying(50) NOT NULL,
    orbital_period numeric(12,5),
    planet_id integer NOT NULL,
    discovery_year date,
    density numeric(8,4),
    star_name character varying(50) NOT NULL,
    planet_name character varying(50) NOT NULL
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
    description text,
    age_in_millions_of_years integer,
    galaxy_name character varying(50) NOT NULL,
    distance_from_earth integer,
    name character varying(50),
    radius numeric(15,5),
    is_giant boolean,
    is_dwarf boolean,
    star_id integer NOT NULL,
    star_name character varying(50) NOT NULL
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES ('ternary system cointain three b-holes', true, true, 15000, 15000, 'V Puppis', 1455.45000, 1);
INSERT INTO public.black_hole VALUES ('False info;', true, true, 15000, 15000, 'XTE', 1455.45000, 2);
INSERT INTO public.black_hole VALUES ('False info;', true, true, 15000, 15000, 'Cygnus X-1', 1455.45000, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('encompasses our solar system', 13610, 52850.000000, 'Milky way', 0, 1, false, 'Milky way', true);
INSERT INTO public.galaxy VALUES ('False Info:', 13610, 52850.000000, 'Corvus', 0, 4, false, 'Corvus', true);
INSERT INTO public.galaxy VALUES ('False info:', 13610, 52850.000000, 'Andromeda', 0, 3, false, 'Andromeda', true);
INSERT INTO public.galaxy VALUES ('False Info:', 13610, 52850.000000, 'Centaurus', 0, 5, false, 'Centaurus', true);
INSERT INTO public.galaxy VALUES ('False Info:', 13610, 52850.000000, 'Coma Berenises', 0, 6, false, 'Coma Berenises', true);
INSERT INTO public.galaxy VALUES ('False Info:', 13610, 52850.000000, 'Butterfly Galaxy', 0, 7, false, 'Butterfly Galaxy', true);
INSERT INTO public.galaxy VALUES ('False Info:', 13610, 52850.000000, 'Cigar Galaxy', 0, 8, false, 'Cigar Galaxy', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Earths only moon', true, 4530, 'Milky way', 384400, 27.00000, 'moon', 1, true, 'Earth');
INSERT INTO public.moon VALUES ('False Info:', true, 4530, 'Milky way', 384400, 27.00000, 'Ganymede', 2, true, 'Jupiter');
INSERT INTO public.moon VALUES ('False Info:', true, 4530, 'Milky way', 384400, 27.00000, 'Titan', 3, true, 'Saturn');
INSERT INTO public.moon VALUES ('False Info:', true, 4530, 'Milky way', 384400, 27.00000, 'Moon_2', 4, true, 'Saturn');
INSERT INTO public.moon VALUES ('False Info:', true, 4530, 'Milky way', 384400, 27.00000, 'Moon_3', 5, true, 'Saturn');
INSERT INTO public.moon VALUES ('False Info:', true, 4530, 'Milky way', 384400, 27.00000, 'Moon4', 6, true, 'Saturn');
INSERT INTO public.moon VALUES ('False Info:', true, 4530, 'Milky way', 384400, 27.00000, 'Moon_5', 7, true, 'Saturn');
INSERT INTO public.moon VALUES ('False Info:', true, 4530, 'Milky way', 384400, 27.00000, 'Moon_6', 8, false, 'Saturn');
INSERT INTO public.moon VALUES ('False Info:', true, 4530, 'Milky way', 384400, 27.00000, 'Moon_7', 9, false, 'Saturn');
INSERT INTO public.moon VALUES ('False Info:', true, 4530, 'Milky way', 384400, 27.00000, 'Moon_8', 10, false, 'Saturn');
INSERT INTO public.moon VALUES ('False Info:', true, 4530, 'Milky way', 384400, 27.00000, 'Moon_9', 11, false, 'Saturn');
INSERT INTO public.moon VALUES ('False Info:', true, 4530, 'Milky way', 384400, 27.00000, 'Moon_10', 12, false, 'Saturn');
INSERT INTO public.moon VALUES ('False Info:', true, 4530, 'Milky way', 384400, 27.00000, 'Moon_11', 13, false, 'Saturn');
INSERT INTO public.moon VALUES ('False Info:', true, 4530, 'Milky way', 384400, 27.00000, 'Moon_12', 14, false, 'Jupiter');
INSERT INTO public.moon VALUES ('False Info:', true, 4530, 'Milky way', 384400, 27.00000, 'Moon_13', 16, false, 'Jupiter');
INSERT INTO public.moon VALUES ('False Info:', true, 4530, 'Milky way', 384400, 27.00000, 'Moon_14', 17, false, 'Jupiter');
INSERT INTO public.moon VALUES ('False Info:', true, 4530, 'Milky way', 384400, 27.00000, 'Moon_15', 19, false, 'Jupiter');
INSERT INTO public.moon VALUES ('False Info:', true, 4530, 'Milky way', 384400, 27.00000, 'Moon_16', 20, false, 'Jupiter');
INSERT INTO public.moon VALUES ('False Info:', true, 4530, 'Milky way', 384400, 27.00000, 'Moon_17', 21, false, 'Jupiter');
INSERT INTO public.moon VALUES ('False Info:', true, 4530, 'Milky way', 384400, 27.00000, 'Moon_18', 22, false, 'Jupiter');
INSERT INTO public.moon VALUES ('False Info:', true, 4530, 'Milky way', 384400, 27.00000, 'Moon_19', 23, false, 'Jupiter');
INSERT INTO public.moon VALUES ('False Info:', true, 4530, 'Milky way', 384400, 27.00000, 'Moon_20', 24, false, 'Jupiter');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth is where we live, our pale blue dot', true, true, 4543, 'terrestrial planet', 'Milky way', 0, 'Earth', 365.25000, 1, '1700-01-01', 5.5100, 'Sun', 'Earth');
INSERT INTO public.planet VALUES ('Earth is where we live, our pale blue dot', true, true, 4543, 'terrestrial planet', 'Milky way', 0, 'Mercury', 365.25000, 2, '1700-01-01', 5.5100, 'Sun', 'Mercury');
INSERT INTO public.planet VALUES ('Earth is where we live, our pale blue dot', true, true, 4543, 'terrestrial planet', 'Milky way', 0, 'Venus', 365.25000, 3, '1700-01-01', 5.5100, 'Sun', 'Venus');
INSERT INTO public.planet VALUES ('Earth is where we live, our pale blue dot', true, true, 4543, 'terrestrial planet', 'Milky way', 0, 'Mars', 365.25000, 4, '1700-01-01', 5.5100, 'Sun', 'Mars');
INSERT INTO public.planet VALUES ('Earth is where we live, our pale blue dot', true, true, 4543, 'terrestrial planet', 'Milky way', 0, 'Jupiter', 365.25000, 5, '1700-01-01', 5.5100, 'Sun', 'Jupiter');
INSERT INTO public.planet VALUES ('Earth is where we live, our pale blue dot', true, true, 4543, 'terrestrial planet', 'Milky way', 0, 'Saturn', 365.25000, 6, '1700-01-01', 5.5100, 'Sun', 'Saturn');
INSERT INTO public.planet VALUES ('Earth is where we live, our pale blue dot', true, true, 4543, 'terrestrial planet', 'Milky way', 0, 'Neptune', 365.25000, 8, '1700-01-01', 5.5100, 'Sun', 'Neptune');
INSERT INTO public.planet VALUES ('Earth is where we live, our pale blue dot', true, true, 4543, 'terrestrial planet', 'Milky way', 0, 'Pluto', 365.25000, 9, '1700-01-01', 5.5100, 'Sun', 'Pluto');
INSERT INTO public.planet VALUES ('Earth is where we live, our pale blue dot', true, true, 4543, 'terrestrial planet', 'Milky way', 0, 'Planet X', 365.25000, 10, '1700-01-01', 5.5100, 'Sun', 'Planet X');
INSERT INTO public.planet VALUES ('Earth is where we live, our pale blue dot', true, true, 4543, 'terrestrial planet', 'Milky way', 0, 'Planet Y', 365.25000, 11, '1700-01-01', 5.5100, 'Sun', 'Planet Y');
INSERT INTO public.planet VALUES ('Earth is where we live, our pale blue dot', true, true, 4543, 'terrestrial planet', 'Milky way', 0, 'Planet Z', 365.25000, 12, '1700-01-01', 5.5100, 'Sun', 'Planet Z');
INSERT INTO public.planet VALUES ('Earth is where we live, our pale blue dot', true, true, 4543, 'terrestrial planet', 'Milky way', 0, 'Planet W', 365.25000, 13, '1700-01-01', 5.5100, 'Sun', 'Planet W');
INSERT INTO public.planet VALUES ('Earth is where we live, our pale blue dot', true, true, 4543, 'terrestrial planet', 'Milky way', 0, 'Uranus', 365.25000, 7, '1700-01-01', 5.5100, 'Sun', 'Uranus');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('sun is the star of our solar system', 4603, 'Milky way', 151, 'Sun', 696340.00000, false, false, 1, 'Sun');
INSERT INTO public.star VALUES ('False info:', 4603, 'Andromeda', 151, 'Ross 248', 696340.00000, false, false, 2, 'Ross 248');
INSERT INTO public.star VALUES ('False info:', 4603, 'Andromeda', 151, 'STar X', 696340.00000, false, false, 3, 'Star X');
INSERT INTO public.star VALUES ('False info:', 4603, 'Andromeda', 151, 'Star Y', 696340.00000, false, false, 4, 'Star Y');
INSERT INTO public.star VALUES ('False info:', 4603, 'Andromeda', 151, 'Star Z', 696340.00000, false, false, 5, 'Star Z');
INSERT INTO public.star VALUES ('False info:', 4603, 'Andromeda', 151, 'Star W', 696340.00000, false, false, 6, 'Star W');
INSERT INTO public.star VALUES ('False info:', 4603, 'Andromeda', 151, 'Star V', 696340.00000, false, false, 7, 'Star V');
INSERT INTO public.star VALUES ('False info:', 4603, 'Andromeda', 151, 'Star U', 696340.00000, false, false, 8, 'Star U');


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_name_key UNIQUE (galaxy_name);


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
-- Name: planet planet_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_name_key UNIQUE (planet_name);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_name_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique_key UNIQUE (star_name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star galaxy_galaxy_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_galaxy_name_fkey FOREIGN KEY (galaxy_name) REFERENCES public.galaxy(galaxy_name);


--
-- Name: moon planet_planet_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_planet_name_fkey FOREIGN KEY (planet_name) REFERENCES public.planet(planet_name);


--
-- Name: planet star_star_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_star_name_fkey FOREIGN KEY (star_name) REFERENCES public.star(star_name);


--
-- PostgreSQL database dump complete
--

