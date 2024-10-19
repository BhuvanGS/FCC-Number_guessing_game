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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    guesses integer DEFAULT 0 NOT NULL,
    user_id integer
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 157, NULL);
INSERT INTO public.games VALUES (3, 299, NULL);
INSERT INTO public.games VALUES (8, 14, NULL);
INSERT INTO public.games VALUES (9, 674, NULL);
INSERT INTO public.games VALUES (11, 842, NULL);
INSERT INTO public.games VALUES (16, 305, NULL);
INSERT INTO public.games VALUES (18, 979, NULL);
INSERT INTO public.games VALUES (24, 808, NULL);
INSERT INTO public.games VALUES (26, 305, NULL);
INSERT INTO public.games VALUES (31, 215, 10);
INSERT INTO public.games VALUES (32, 202, 10);
INSERT INTO public.games VALUES (33, 354, 11);
INSERT INTO public.games VALUES (34, 660, 11);
INSERT INTO public.games VALUES (35, 11, 10);
INSERT INTO public.games VALUES (36, 639, 10);
INSERT INTO public.games VALUES (37, 105, 10);
INSERT INTO public.games VALUES (38, 9, 3);
INSERT INTO public.games VALUES (39, 165, 12);
INSERT INTO public.games VALUES (40, 618, 12);
INSERT INTO public.games VALUES (41, 572, 13);
INSERT INTO public.games VALUES (42, 252, 13);
INSERT INTO public.games VALUES (43, 602, 12);
INSERT INTO public.games VALUES (44, 375, 12);
INSERT INTO public.games VALUES (45, 25, 12);
INSERT INTO public.games VALUES (46, 12, 3);
INSERT INTO public.games VALUES (47, 964, 14);
INSERT INTO public.games VALUES (48, 49, 14);
INSERT INTO public.games VALUES (49, 659, 15);
INSERT INTO public.games VALUES (50, 841, 15);
INSERT INTO public.games VALUES (51, 11, 14);
INSERT INTO public.games VALUES (52, 647, 14);
INSERT INTO public.games VALUES (53, 544, 14);
INSERT INTO public.games VALUES (54, 12, 3);
INSERT INTO public.games VALUES (55, 677, 17);
INSERT INTO public.games VALUES (56, 661, 17);
INSERT INTO public.games VALUES (57, 834, 18);
INSERT INTO public.games VALUES (58, 130, 18);
INSERT INTO public.games VALUES (59, 204, 17);
INSERT INTO public.games VALUES (60, 767, 17);
INSERT INTO public.games VALUES (61, 381, 17);
INSERT INTO public.games VALUES (62, 496, 19);
INSERT INTO public.games VALUES (63, 550, 19);
INSERT INTO public.games VALUES (64, 633, 20);
INSERT INTO public.games VALUES (65, 72, 20);
INSERT INTO public.games VALUES (66, 966, 19);
INSERT INTO public.games VALUES (67, 554, 19);
INSERT INTO public.games VALUES (68, 527, 19);
INSERT INTO public.games VALUES (69, 19, 3);
INSERT INTO public.games VALUES (70, 701, 21);
INSERT INTO public.games VALUES (71, 312, 21);
INSERT INTO public.games VALUES (72, 422, 22);
INSERT INTO public.games VALUES (73, 914, 22);
INSERT INTO public.games VALUES (74, 371, 21);
INSERT INTO public.games VALUES (75, 86, 21);
INSERT INTO public.games VALUES (76, 207, 21);
INSERT INTO public.games VALUES (77, 214, 23);
INSERT INTO public.games VALUES (78, 257, 23);
INSERT INTO public.games VALUES (79, 330, 24);
INSERT INTO public.games VALUES (80, 180, 24);
INSERT INTO public.games VALUES (81, 841, 23);
INSERT INTO public.games VALUES (82, 672, 23);
INSERT INTO public.games VALUES (83, 228, 23);
INSERT INTO public.games VALUES (84, 495, 25);
INSERT INTO public.games VALUES (85, 107, 25);
INSERT INTO public.games VALUES (86, 897, 26);
INSERT INTO public.games VALUES (87, 282, 26);
INSERT INTO public.games VALUES (88, 371, 25);
INSERT INTO public.games VALUES (89, 195, 25);
INSERT INTO public.games VALUES (90, 948, 25);
INSERT INTO public.games VALUES (91, 45, 3);
INSERT INTO public.games VALUES (92, 787, 27);
INSERT INTO public.games VALUES (93, 178, 27);
INSERT INTO public.games VALUES (94, 167, 28);
INSERT INTO public.games VALUES (95, 274, 28);
INSERT INTO public.games VALUES (96, 680, 27);
INSERT INTO public.games VALUES (97, 258, 27);
INSERT INTO public.games VALUES (98, 464, 27);
INSERT INTO public.games VALUES (99, 898, 29);
INSERT INTO public.games VALUES (100, 22, 29);
INSERT INTO public.games VALUES (101, 852, 30);
INSERT INTO public.games VALUES (102, 16, 30);
INSERT INTO public.games VALUES (103, 635, 29);
INSERT INTO public.games VALUES (104, 869, 29);
INSERT INTO public.games VALUES (105, 352, 29);
INSERT INTO public.games VALUES (106, 330, 35);
INSERT INTO public.games VALUES (107, 915, 35);
INSERT INTO public.games VALUES (108, 590, 36);
INSERT INTO public.games VALUES (109, 95, 36);
INSERT INTO public.games VALUES (110, 709, 35);
INSERT INTO public.games VALUES (111, 235, 35);
INSERT INTO public.games VALUES (112, 216, 35);
INSERT INTO public.games VALUES (113, 9, 3);
INSERT INTO public.games VALUES (114, 106, 37);
INSERT INTO public.games VALUES (115, 447, 37);
INSERT INTO public.games VALUES (116, 559, 38);
INSERT INTO public.games VALUES (117, 793, 38);
INSERT INTO public.games VALUES (118, 738, 37);
INSERT INTO public.games VALUES (119, 154, 37);
INSERT INTO public.games VALUES (120, 241, 37);
INSERT INTO public.games VALUES (121, 843, 39);
INSERT INTO public.games VALUES (122, 422, 39);
INSERT INTO public.games VALUES (123, 777, 40);
INSERT INTO public.games VALUES (124, 945, 40);
INSERT INTO public.games VALUES (125, 112, 39);
INSERT INTO public.games VALUES (126, 623, 39);
INSERT INTO public.games VALUES (127, 138, 39);
INSERT INTO public.games VALUES (128, 663, 41);
INSERT INTO public.games VALUES (129, 348, 41);
INSERT INTO public.games VALUES (130, 218, 42);
INSERT INTO public.games VALUES (131, 370, 42);
INSERT INTO public.games VALUES (132, 630, 41);
INSERT INTO public.games VALUES (133, 40, 41);
INSERT INTO public.games VALUES (134, 489, 41);
INSERT INTO public.games VALUES (135, 6, 16);
INSERT INTO public.games VALUES (136, 816, 43);
INSERT INTO public.games VALUES (137, 73, 43);
INSERT INTO public.games VALUES (138, 608, 44);
INSERT INTO public.games VALUES (139, 444, 44);
INSERT INTO public.games VALUES (140, 408, 43);
INSERT INTO public.games VALUES (141, 941, 43);
INSERT INTO public.games VALUES (142, 726, 43);
INSERT INTO public.games VALUES (143, 11, 3);
INSERT INTO public.games VALUES (144, 12, 45);
INSERT INTO public.games VALUES (145, 406, 46);
INSERT INTO public.games VALUES (146, 349, 46);
INSERT INTO public.games VALUES (147, 338, 47);
INSERT INTO public.games VALUES (148, 814, 47);
INSERT INTO public.games VALUES (149, 582, 46);
INSERT INTO public.games VALUES (150, 700, 46);
INSERT INTO public.games VALUES (151, 138, 46);
INSERT INTO public.games VALUES (152, 229, 48);
INSERT INTO public.games VALUES (153, 870, 48);
INSERT INTO public.games VALUES (154, 783, 49);
INSERT INTO public.games VALUES (155, 748, 49);
INSERT INTO public.games VALUES (156, 683, 48);
INSERT INTO public.games VALUES (157, 381, 48);
INSERT INTO public.games VALUES (158, 349, 48);
INSERT INTO public.games VALUES (159, 651, 50);
INSERT INTO public.games VALUES (160, 113, 50);
INSERT INTO public.games VALUES (161, 943, 51);
INSERT INTO public.games VALUES (162, 206, 51);
INSERT INTO public.games VALUES (163, 271, 50);
INSERT INTO public.games VALUES (164, 907, 50);
INSERT INTO public.games VALUES (165, 946, 50);
INSERT INTO public.games VALUES (166, 10, 3);
INSERT INTO public.games VALUES (167, 42, 52);
INSERT INTO public.games VALUES (168, 893, 52);
INSERT INTO public.games VALUES (169, 728, 53);
INSERT INTO public.games VALUES (170, 587, 53);
INSERT INTO public.games VALUES (171, 558, 52);
INSERT INTO public.games VALUES (172, 497, 52);
INSERT INTO public.games VALUES (173, 370, 52);
INSERT INTO public.games VALUES (174, 436, 54);
INSERT INTO public.games VALUES (175, 52, 54);
INSERT INTO public.games VALUES (176, 28, 55);
INSERT INTO public.games VALUES (177, 601, 55);
INSERT INTO public.games VALUES (178, 875, 54);
INSERT INTO public.games VALUES (179, 890, 54);
INSERT INTO public.games VALUES (180, 147, 54);
INSERT INTO public.games VALUES (181, 389, 56);
INSERT INTO public.games VALUES (182, 258, 56);
INSERT INTO public.games VALUES (183, 131, 57);
INSERT INTO public.games VALUES (184, 7, 57);
INSERT INTO public.games VALUES (185, 313, 56);
INSERT INTO public.games VALUES (186, 695, 56);
INSERT INTO public.games VALUES (187, 753, 56);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1729344018668');
INSERT INTO public.users VALUES (2, 'user_1729344018667');
INSERT INTO public.users VALUES (3, 'bhuvan');
INSERT INTO public.users VALUES (4, 'user_1729344118467');
INSERT INTO public.users VALUES (5, 'user_1729344118466');
INSERT INTO public.users VALUES (6, 'user_1729344153726');
INSERT INTO public.users VALUES (7, 'user_1729344153725');
INSERT INTO public.users VALUES (8, 'user_1729344224361');
INSERT INTO public.users VALUES (9, 'user_1729344224360');
INSERT INTO public.users VALUES (10, 'user_1729344448810');
INSERT INTO public.users VALUES (11, 'user_1729344448809');
INSERT INTO public.users VALUES (12, 'user_1729344509362');
INSERT INTO public.users VALUES (13, 'user_1729344509361');
INSERT INTO public.users VALUES (14, 'user_1729344563511');
INSERT INTO public.users VALUES (15, 'user_1729344563510');
INSERT INTO public.users VALUES (16, 'srujan');
INSERT INTO public.users VALUES (17, 'user_1729344676943');
INSERT INTO public.users VALUES (18, 'user_1729344676942');
INSERT INTO public.users VALUES (19, 'user_1729345060923');
INSERT INTO public.users VALUES (20, 'user_1729345060922');
INSERT INTO public.users VALUES (21, 'user_1729345298603');
INSERT INTO public.users VALUES (22, 'user_1729345298602');
INSERT INTO public.users VALUES (23, 'user_1729345441369');
INSERT INTO public.users VALUES (24, 'user_1729345441368');
INSERT INTO public.users VALUES (25, 'user_1729345522222');
INSERT INTO public.users VALUES (26, 'user_1729345522221');
INSERT INTO public.users VALUES (27, 'user_1729346063699');
INSERT INTO public.users VALUES (28, 'user_1729346063698');
INSERT INTO public.users VALUES (29, 'user_1729346253881');
INSERT INTO public.users VALUES (30, 'user_1729346253880');
INSERT INTO public.users VALUES (31, 'user_1729346396570');
INSERT INTO public.users VALUES (32, 'user_1729346396569');
INSERT INTO public.users VALUES (33, 'user_1729346454379');
INSERT INTO public.users VALUES (34, 'user_1729346454378');
INSERT INTO public.users VALUES (35, 'user_1729346526776');
INSERT INTO public.users VALUES (36, 'user_1729346526775');
INSERT INTO public.users VALUES (37, 'user_1729346576009');
INSERT INTO public.users VALUES (38, 'user_1729346576008');
INSERT INTO public.users VALUES (39, 'user_1729346607209');
INSERT INTO public.users VALUES (40, 'user_1729346607208');
INSERT INTO public.users VALUES (41, 'user_1729346666764');
INSERT INTO public.users VALUES (42, 'user_1729346666763');
INSERT INTO public.users VALUES (43, 'user_1729346697037');
INSERT INTO public.users VALUES (44, 'user_1729346697036');
INSERT INTO public.users VALUES (45, 'jamal');
INSERT INTO public.users VALUES (46, 'user_1729346844535');
INSERT INTO public.users VALUES (47, 'user_1729346844534');
INSERT INTO public.users VALUES (48, 'user_1729346929250');
INSERT INTO public.users VALUES (49, 'user_1729346929249');
INSERT INTO public.users VALUES (50, 'user_1729347008741');
INSERT INTO public.users VALUES (51, 'user_1729347008740');
INSERT INTO public.users VALUES (52, 'user_1729347064467');
INSERT INTO public.users VALUES (53, 'user_1729347064466');
INSERT INTO public.users VALUES (54, 'user_1729347128011');
INSERT INTO public.users VALUES (55, 'user_1729347128010');
INSERT INTO public.users VALUES (56, 'user_1729347145441');
INSERT INTO public.users VALUES (57, 'user_1729347145440');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 187, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 57, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--
