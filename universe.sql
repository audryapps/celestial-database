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
    name character varying(30) NOT NULL,
    galaxy_type text NOT NULL,
    galaxy_group character varying(40),
    distance_from_earth integer,
    approx_number_of_stars integer,
    ratio_star numeric,
    second_name text,
    description text NOT NULL,
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
    name character varying(30),
    second_name text,
    description text NOT NULL,
    has_life boolean
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
-- Name: objects_in_space; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.objects_in_space (
    objects_in_space_id integer NOT NULL,
    name character varying NOT NULL,
    diameter integer
);


ALTER TABLE public.objects_in_space OWNER TO freecodecamp;

--
-- Name: objects_in_space_objects_in_space_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.objects_in_space_objects_in_space_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.objects_in_space_objects_in_space_id_seq OWNER TO freecodecamp;

--
-- Name: objects_in_space_objects_in_space_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.objects_in_space_objects_in_space_id_seq OWNED BY public.objects_in_space.objects_in_space_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    second_name text,
    descrption text NOT NULL,
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
    name character varying(30),
    second_name text,
    descrption text NOT NULL,
    has_life boolean
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: objects_in_space objects_in_space_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.objects_in_space ALTER COLUMN objects_in_space_id SET DEFAULT nextval('public.objects_in_space_objects_in_space_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'barred-spiral', 'local-group', 5000000, 12000000, 2000000, 'Eart', 'Planet-earth', true);
INSERT INTO public.galaxy VALUES (2, 'Canis Dwarf', 'Dwarf', 'local group', 3000000, 150000000, 12000000, 'Dwarf-canis', 'planet-dwarf', true);
INSERT INTO public.galaxy VALUES (3, 'Virgo stellar', 'Dwarf-esperich', 'Local group', 4000000, 34000000, 19000000, 'Dwarf stellar', 'Virgo planet', true);
INSERT INTO public.galaxy VALUES (4, 'Sagitarious Dwarf', 'Dwarf eliptical', 'local_group', 1000000, 20000000, 230000000, 'Dwarf-sagitarious', 'sagitarious-planet', true);
INSERT INTO public.galaxy VALUES (5, 'Large Magellanic', 'Magellanic-spiral', 'local-group', 7000000, 180000000, 450000000, 'magellanic-large', 'planet-magellanic', true);
INSERT INTO public.galaxy VALUES (6, 'Small magellanic', 'Magellanic barred', 'local-group', 9000000, 5600000, 210000000, 'magellanic-small', 'planet-small-magellanic', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Luna', 'Moons', true);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Phobis', 'moon phobos', true);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Demon', 'moon deimos', true);
INSERT INTO public.moon VALUES (4, 'Ganymede', 'Ganymades', 'moon ganymade', true);
INSERT INTO public.moon VALUES (5, 'Callisto', 'Calisto', 'moon callisto', true);
INSERT INTO public.moon VALUES (6, 'Io', 'ios', '1610', true);
INSERT INTO public.moon VALUES (7, 'Europa', 'Europe', 'moon europa', true);
INSERT INTO public.moon VALUES (8, 'Amalthea', 'Amatea', 'moon amlathea', true);
INSERT INTO public.moon VALUES (9, 'Himalia', 'Himal', 'moon himalia', true);
INSERT INTO public.moon VALUES (10, 'Elara', 'Eleara', 'moon elara', true);
INSERT INTO public.moon VALUES (11, 'Pasiphae', 'Pasint', 'moon pasiphe', true);
INSERT INTO public.moon VALUES (12, 'Sinope', 'Sinops', 'moon sinope', true);
INSERT INTO public.moon VALUES (13, 'Lysithea', 'lizeth', 'moon lysithea', true);
INSERT INTO public.moon VALUES (14, 'Carme', 'carmen', 'moon carme', true);
INSERT INTO public.moon VALUES (15, 'Ananke', 'anakias', 'moon ananke', true);
INSERT INTO public.moon VALUES (16, 'Leda', 'lida', '1974', true);
INSERT INTO public.moon VALUES (17, 'Thebe', 'tebas', 'moon thebe', true);
INSERT INTO public.moon VALUES (18, 'Adrastea', 'andrea', 'moon adrastea', true);
INSERT INTO public.moon VALUES (19, 'Metis', 'metia', 'moon metis', true);
INSERT INTO public.moon VALUES (20, 'Callirrhoe', 'caliz', 'moon callirrhoe', true);


--
-- Data for Name: objects_in_space; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.objects_in_space VALUES (1, 'cometa', 234456);
INSERT INTO public.objects_in_space VALUES (2, 'asteroid', 4435);
INSERT INTO public.objects_in_space VALUES (3, 'star dust', 4455678);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Mercurio', 'Planeta mercurio', true);
INSERT INTO public.planet VALUES (2, 'Venus', 'Venuss', 'planeta venus', true);
INSERT INTO public.planet VALUES (3, 'Earth', 'Tierra', 'Planeta tierra', true);
INSERT INTO public.planet VALUES (4, 'Mars', 'Marte', 'Planeta marte', true);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Jupiters', 'Planeta jupiter', true);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Saturno', 'planeta saturno', true);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Urano', 'planeta urano', true);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Neptuno', 'planeta neptuno', true);
INSERT INTO public.planet VALUES (9, 'Proxima b', 'Prximo b', 'planeta proximo b', true);
INSERT INTO public.planet VALUES (10, 'Proxima c', 'Proximo c', 'planeta proximo c', true);
INSERT INTO public.planet VALUES (11, 'Proxima d', 'Proximo d', 'planeta proximo d', true);
INSERT INTO public.planet VALUES (12, 'Barnards Star b', 'estrella bernanro', 'planeta estrella', true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (23, 'Sol', 'Yellow Dwarf', '8', true);
INSERT INTO public.star VALUES (24, 'Proxima Centauri', 'Red Dwarfs', 'star yellow', true);
INSERT INTO public.star VALUES (25, 'Barnards Star', 'Red Dwarfss', 'star barnards', true);
INSERT INTO public.star VALUES (26, 'Luhman 16', 'Brown Dwarf', 'Star brown', true);
INSERT INTO public.star VALUES (27, 'W0855', 'Brown Dwarfs', 'Brown star', true);
INSERT INTO public.star VALUES (28, 'Wolf 359', 'Red Dwarf', 'star blue', true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: objects_in_space_objects_in_space_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.objects_in_space_objects_in_space_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 28, true);


--
-- Name: galaxy galaxy_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_unique UNIQUE (galaxy_id);


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
-- Name: galaxy galaxy_second_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_second_name_key UNIQUE (second_name);


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
-- Name: moon moon_second_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_second_name_key UNIQUE (second_name);


--
-- Name: objects_in_space objects_in_space_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.objects_in_space
    ADD CONSTRAINT objects_in_space_name_key UNIQUE (name);


--
-- Name: objects_in_space objects_in_space_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.objects_in_space
    ADD CONSTRAINT objects_in_space_pkey PRIMARY KEY (objects_in_space_id);


--
-- Name: planet planet_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_unique UNIQUE (planet_id);


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
-- Name: planet planet_second_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_second_name_key UNIQUE (second_name);


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
-- Name: star star_second_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_second_name_key UNIQUE (second_name);


--
-- Name: galaxy fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT fk_star_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

