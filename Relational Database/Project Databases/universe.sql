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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    orbit_period_in_years integer,
    date_of_discovery integer
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    galaxy_type text,
    constellation_name text,
    distance_from_earth_in_mly numeric
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
    radius_in_km numeric,
    date_of_discovery integer,
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
    radius_in_km numeric,
    distance_from_sun_in_km numeric,
    is_dwarf boolean,
    has_life boolean,
    star_id integer
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
    name character varying(255) NOT NULL,
    constellation character varying(255),
    distance_from_earth_in_ly integer,
    galaxy_id integer
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Halley', 76, NULL);
INSERT INTO public.comet VALUES (2, 'Borrelly', 7, 1904);
INSERT INTO public.comet VALUES (3, 'Swift-Tuttle', 133, 1862);
INSERT INTO public.comet VALUES (4, 'Hartley 2', 6, 1986);
INSERT INTO public.comet VALUES (5, 'Giacobini-Zinner', 7, 1900);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'barred spiral', 'Sagittarius', 0);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'barred spiral', 'Andromeda', 2.5);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'spiral', 'Triangulum', 2.9);
INSERT INTO public.galaxy VALUES (4, 'Centaurus A', 'lenticular', 'Centaurus', 13.7);
INSERT INTO public.galaxy VALUES (5, 'Messier 81', 'grand design spiral', 'Ursa Major', 12);
INSERT INTO public.galaxy VALUES (6, 'Sculptor', 'intermediate spiral', 'Sculptor', 12);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Earths Moon', 1737.5, NULL, 3);
INSERT INTO public.moon VALUES (2, 'Deimos', 6.2, 1877, 4);
INSERT INTO public.moon VALUES (3, 'Phobos', 11.1, 1877, 4);
INSERT INTO public.moon VALUES (4, 'Charon', 603.6, 1978, 9);
INSERT INTO public.moon VALUES (5, 'Hydra', 36, 2005, 9);
INSERT INTO public.moon VALUES (6, 'Kerberos', NULL, 2011, 9);
INSERT INTO public.moon VALUES (7, 'Nix', NULL, 2005, 9);
INSERT INTO public.moon VALUES (8, 'Styx', NULL, 2012, 9);
INSERT INTO public.moon VALUES (9, 'Despina', 75, 1989, 8);
INSERT INTO public.moon VALUES (10, 'Galatea', 88, 1989, 8);
INSERT INTO public.moon VALUES (11, 'Halimede', 31, 2002, 8);
INSERT INTO public.moon VALUES (12, 'Hippocamp', 9, 2013, 8);
INSERT INTO public.moon VALUES (13, 'Laomedeia', 21, 2002, 8);
INSERT INTO public.moon VALUES (14, 'Larissa', 97, 1982, 8);
INSERT INTO public.moon VALUES (15, 'Naiad', 33, 1989, 8);
INSERT INTO public.moon VALUES (16, 'Nereid', 170, 1949, 8);
INSERT INTO public.moon VALUES (17, 'Neso', 30, 2002, 8);
INSERT INTO public.moon VALUES (18, 'Proteus', 210, 1989, 8);
INSERT INTO public.moon VALUES (19, 'Psamathe', 20, 2003, 8);
INSERT INTO public.moon VALUES (20, 'Sao', 22, 2002, 8);
INSERT INTO public.moon VALUES (21, 'Thalassa', 41, 1989, 8);
INSERT INTO public.moon VALUES (22, 'Triton', 1353.4, 1846, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 2439.7, 65220141, false, false, 13);
INSERT INTO public.planet VALUES (2, 'Venus', 6051.8, 107480437, false, false, 13);
INSERT INTO public.planet VALUES (3, 'Earth', 6371, 150744296, false, true, 13);
INSERT INTO public.planet VALUES (4, 'Mars', 3389.5, 212843696, false, false, 13);
INSERT INTO public.planet VALUES (5, 'Jupiter', 69911, 741447821, false, false, 13);
INSERT INTO public.planet VALUES (6, 'Saturn', 58232, 1475600052, false, false, 13);
INSERT INTO public.planet VALUES (7, 'Uranus', 25362, 2874967588, false, false, 13);
INSERT INTO public.planet VALUES (8, 'Neptune', 24622, 4475234400, false, false, 13);
INSERT INTO public.planet VALUES (9, 'Pluto', 1151, 5176181219, true, false, 13);
INSERT INTO public.planet VALUES (10, 'Ceres', 476.2, 383469916, true, false, 13);
INSERT INTO public.planet VALUES (11, 'Haumea', 620, 6452000000, true, false, 13);
INSERT INTO public.planet VALUES (12, 'Eris', 1163, 10125000000, true, false, 13);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Epsilon Sagittarii', 'Sagittarius', 145, 1);
INSERT INTO public.star VALUES (2, 'Sigma Sagittari', 'Sagittarius', 224, 1);
INSERT INTO public.star VALUES (3, 'Alpha Andromedae', 'Andromeda', 97, 2);
INSERT INTO public.star VALUES (4, 'Beta Andromadae', 'Andromeda', 199, 2);
INSERT INTO public.star VALUES (5, 'Beta Trianguli', 'Triangulum', 124, 3);
INSERT INTO public.star VALUES (6, 'Alpha Trianguli', 'Triangulum', 64, 3);
INSERT INTO public.star VALUES (7, 'Alpha Centauri', 'Centaurus', 4, 4);
INSERT INTO public.star VALUES (8, 'Beat Centauri', 'Centaurus', 525, 4);
INSERT INTO public.star VALUES (9, 'Epsilon Ursae Majoris', 'Ursa Major', 81, 5);
INSERT INTO public.star VALUES (10, 'Alpha Ursae Majoris', 'Ursa Major', 124, 5);
INSERT INTO public.star VALUES (11, 'Alpha Sculptoris', 'Sculptor', 672, 6);
INSERT INTO public.star VALUES (12, 'Beta Sculptoris', 'Sculptor', 178, 6);
INSERT INTO public.star VALUES (13, 'Sun', NULL, 0, 1);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 13, true);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


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

