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
    name character varying(25) NOT NULL,
    distance_in_mile integer,
    shape character varying(20),
    apparent_magnitude numeric
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
    name character varying(25) NOT NULL,
    planet_id integer,
    possible_life boolean,
    shape character varying(20)
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
    name character varying(25) NOT NULL,
    star_id integer,
    type character varying(20),
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
-- Name: spaceship; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.spaceship (
    spaceship_id integer NOT NULL,
    name character varying(20) NOT NULL,
    launch_date date
);


ALTER TABLE public.spaceship OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(25) NOT NULL,
    galaxy_id integer,
    age integer,
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

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 2530000, 'Spiral', 3.44);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 100000, 'Barred Spiral', 20.9);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', 31000000, 'Spiral', 8.4);
INSERT INTO public.galaxy VALUES (5, 'Triangulum', 2900000, 'Spiral', 5.72);
INSERT INTO public.galaxy VALUES (6, 'Canis Major Dwarf', 25000, 'Irregular', 15.2);
INSERT INTO public.galaxy VALUES (7, 'Large Magellanic Cloud', 163000, 'Irregular', 0.9);
INSERT INTO public.galaxy VALUES (8, 'Small Magellanic Cloud', 200000, 'Irregular', 2.7);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (41, 'Luna', 13, false, 'Spherical');
INSERT INTO public.moon VALUES (42, 'Phobos', 20, false, 'Irregular');
INSERT INTO public.moon VALUES (43, 'Deimos', 21, false, 'Irregular');
INSERT INTO public.moon VALUES (44, 'Ganymede', 13, true, 'Spherical');
INSERT INTO public.moon VALUES (45, 'Callisto', 23, true, 'Spherical');
INSERT INTO public.moon VALUES (46, 'Io', 23, true, 'Spherical');
INSERT INTO public.moon VALUES (47, 'Europa', 13, true, 'Spherical');
INSERT INTO public.moon VALUES (48, 'Titan', 22, false, 'Spherical');
INSERT INTO public.moon VALUES (49, 'Enceladus', 24, true, 'Spherical');
INSERT INTO public.moon VALUES (50, 'Mimas', 22, false, 'Spherical');
INSERT INTO public.moon VALUES (51, 'Tethys', 23, false, 'Spherical');
INSERT INTO public.moon VALUES (52, 'Dione', 15, false, 'Spherical');
INSERT INTO public.moon VALUES (53, 'Rhea', 20, false, 'Spherical');
INSERT INTO public.moon VALUES (54, 'Hyperion', 13, false, 'Irregular');
INSERT INTO public.moon VALUES (55, 'Iapetus', 21, false, 'Spherical');
INSERT INTO public.moon VALUES (56, 'Charon', 19, false, 'Spherical');
INSERT INTO public.moon VALUES (57, 'Nix', 17, false, 'Irregular');
INSERT INTO public.moon VALUES (58, 'Styx', 13, false, 'Irregular');
INSERT INTO public.moon VALUES (59, 'Kerberos', 22, false, 'Irregular');
INSERT INTO public.moon VALUES (60, 'Hydra', 22, false, 'Irregular');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (13, 'Mercury', 1, 'Terrestrial', false);
INSERT INTO public.planet VALUES (14, 'Venus', 1, 'Terrestrial', false);
INSERT INTO public.planet VALUES (15, 'Earth', 1, 'Terrestrial', true);
INSERT INTO public.planet VALUES (16, 'Mars', 1, 'Terrestrial', false);
INSERT INTO public.planet VALUES (17, 'Jupiter', 2, 'Gas Giant', false);
INSERT INTO public.planet VALUES (18, 'Saturn', 2, 'Gas Giant', false);
INSERT INTO public.planet VALUES (19, 'Uranus', 2, 'Ice Giant', false);
INSERT INTO public.planet VALUES (20, 'Neptune', 2, 'Ice Giant', false);
INSERT INTO public.planet VALUES (21, 'Pluto', 3, 'Dwarf', false);
INSERT INTO public.planet VALUES (22, 'Eris', 3, 'Dwarf', false);
INSERT INTO public.planet VALUES (23, 'Haumea', 3, 'Dwarf', false);
INSERT INTO public.planet VALUES (24, 'Makemake', 3, 'Dwarf', false);


--
-- Data for Name: spaceship; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.spaceship VALUES (1, 'Apollo 11', '1969-07-16');
INSERT INTO public.spaceship VALUES (2, 'Voyager 1', '1977-09-05');
INSERT INTO public.spaceship VALUES (3, 'SpaceX Dragon', '2010-12-08');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 5, 'The closest star to Earth');
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 1, 5, 'The closest star to our solar system');
INSERT INTO public.star VALUES (3, 'Betelgeuse', 2, 9, 'A red supergiant star located in the Orion constellation');
INSERT INTO public.star VALUES (8, 'Sirius', 3, 9, 'The brightest star in the Earths night sky and located in the Canis Major constellation.');
INSERT INTO public.star VALUES (9, 'Vega', 2, 455, 'A bright star located in the Lyra constellation.');
INSERT INTO public.star VALUES (10, 'Alpha Centauri A', 1, 7, 'The largest component of the Alpha Centauri triple star system, located just 4.37 light years from Earth.');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 60, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


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
-- Name: spaceship spaceship_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceship
    ADD CONSTRAINT spaceship_name_key UNIQUE (name);


--
-- Name: spaceship spaceship_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceship
    ADD CONSTRAINT spaceship_pkey PRIMARY KEY (spaceship_id);


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
