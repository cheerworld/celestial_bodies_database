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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(255) NOT NULL,
    year_discovered integer NOT NULL,
    meaning text,
    star_id integer NOT NULL
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    galaxy_types character varying(300),
    size_in_light_years integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    distance_from_earth numeric(10,2),
    description text,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(225) NOT NULL,
    age_in_millions_of_years integer,
    discovered_year integer,
    description text,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Cancer', 2000, 'Represents the crab from Greek mythology.', 1);
INSERT INTO public.constellation VALUES (2, 'Scorpio', 1800, 'Depicts the scorpion.', 2);
INSERT INTO public.constellation VALUES (3, 'Aries', 1500, 'Symbolizes the ram.', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', 'Spiral', 100000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The nearest spiral galaxy to us.', 'Spiral', 220000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'A smaller nearby spiral galaxy', 'Spiral', 60000);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 'A giant elliptical galaxy in the Virgo Cluster.', 'Elliptical', 120000);
INSERT INTO public.galaxy VALUES (5, 'Large Magellanic Cloud', 'A satellite galaxy of the Milky Way.', 'Irregular', 14000);
INSERT INTO public.galaxy VALUES (6, 'Small Magellanic Cloud', 'Another satellite galaxy of the Milky Way.', 'Irregular', 7000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 238855.00, 'Earth''s natural satellite', 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 9378.00, 'Mars larger moon.', 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 23460.00, 'Mars smaller moon.', 2);
INSERT INTO public.moon VALUES (4, 'Io', 421700.00, 'One of Jupiter''s Galilean moons.', 3);
INSERT INTO public.moon VALUES (5, 'Europa', 671100.00, 'Another Jupiter''s Galilean moons.', 3);
INSERT INTO public.moon VALUES (6, 'Ganymede', 1070400.00, 'The largest moon in the solar system.', 3);
INSERT INTO public.moon VALUES (7, 'Callisto', 1882700.00, 'Another moon of Jupiter.', 3);
INSERT INTO public.moon VALUES (8, 'Titan', 1221860.00, 'Largest moon of Saturn with a thick atmosphere.', 4);
INSERT INTO public.moon VALUES (9, 'Enceladus', 237948.00, 'Moon with ice geysers on Saturn.', 4);
INSERT INTO public.moon VALUES (10, 'Miranda', 129390.00, 'unusually shaped moon of Uranus.', 5);
INSERT INTO public.moon VALUES (11, 'Ariel', 191020.00, 'Another moon of Uranus.', 5);
INSERT INTO public.moon VALUES (12, 'Triton', 354759.00, 'Unusual retrograde moon of Neptune.', 6);
INSERT INTO public.moon VALUES (13, 'Charon', 19591.00, 'Dwarf planet Pluto''s largest moon.', 7);
INSERT INTO public.moon VALUES (14, 'Luna', 29890.00, 'One of Pluto''s moons.', 7);
INSERT INTO public.moon VALUES (15, 'Proteus', 117647.00, 'One of Neptune''s larger moons.', 6);
INSERT INTO public.moon VALUES (16, 'Oberon', 583520.00, 'A moon of Uranus.', 5);
INSERT INTO public.moon VALUES (17, 'Rhea', 527040.00, 'A moon of Saturn.', 4);
INSERT INTO public.moon VALUES (18, 'Titania', 435910.00, 'A moon of Uranus.', 5);
INSERT INTO public.moon VALUES (19, 'Umbriel', 265970.00, 'A moon of Uranus.', 5);
INSERT INTO public.moon VALUES (20, 'Nereid', 5514300.00, 'A moon of Neptune.', 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Home to a diverse range of life', true, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'The Red Planet.', false, true, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'Largest planet in our solar system.', false, true, 1);
INSERT INTO public.planet VALUES (4, 'Venus', 'Known for its scorching temperatures.', false, true, 1);
INSERT INTO public.planet VALUES (5, 'Saturn', 'Famous for its rings.', false, true, 1);
INSERT INTO public.planet VALUES (6, 'Mercury', 'Closest planet to the Sun.', false, true, 1);
INSERT INTO public.planet VALUES (7, 'Neptune', 'A gas giant with striking blue color.', false, true, 1);
INSERT INTO public.planet VALUES (8, 'Uranus', 'Rotates on its side.', false, true, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Dwarf planet at the edge of the solar system.', false, true, 1);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', 'Exoplanet orbiting a distant star.', false, true, 2);
INSERT INTO public.planet VALUES (11, 'HD 209458 b', 'A hot Jupiter with an atmosphere evaporating into space.', false, true, 2);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1d', 'One of seven Earth-sized exoplanets around TRAPPIST-1.', false, true, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600, 0, 'Our nearest star', 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 4000, 1915, 'Closest known star to the sun.', 1);
INSERT INTO public.star VALUES (3, 'Sirius', 200, 1844, 'Brightest star visible from Earth.', 2);
INSERT INTO public.star VALUES (4, 'Betelqeuse', 10, 1839, 'Red supergiant in the Orion constellation.', 3);
INSERT INTO public.star VALUES (5, 'Antares', 12, 1, 'Brightest star in the Scorpius constellation.', 4);
INSERT INTO public.star VALUES (6, 'Vega', 455, 1850, 'Fifth-brightest star in the night sky.', 5);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: constellation constellation_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

