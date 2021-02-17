--
-- PostgreSQL database dump
--

-- Dumped from database version 12.5 (Ubuntu 12.5-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.5 (Ubuntu 12.5-0ubuntu0.20.04.1)

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
-- Name: app_carta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.app_carta (
    id integer NOT NULL,
    resumen character varying(250) NOT NULL,
    hijos_id integer NOT NULL
);


ALTER TABLE public.app_carta OWNER TO postgres;

--
-- Name: app_carta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.app_carta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_carta_id_seq OWNER TO postgres;

--
-- Name: app_carta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.app_carta_id_seq OWNED BY public.app_carta.id;


--
-- Name: app_hijos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.app_hijos (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    edad integer NOT NULL,
    padres_id integer
);


ALTER TABLE public.app_hijos OWNER TO postgres;

--
-- Name: app_hijos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.app_hijos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_hijos_id_seq OWNER TO postgres;

--
-- Name: app_hijos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.app_hijos_id_seq OWNED BY public.app_hijos.id;


--
-- Name: app_padres; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.app_padres (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    edad integer NOT NULL
);


ALTER TABLE public.app_padres OWNER TO postgres;

--
-- Name: app_padres_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.app_padres_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_padres_id_seq OWNER TO postgres;

--
-- Name: app_padres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.app_padres_id_seq OWNED BY public.app_padres.id;


--
-- Name: app_proveedor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.app_proveedor (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);


ALTER TABLE public.app_proveedor OWNER TO postgres;

--
-- Name: app_proveedor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.app_proveedor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_proveedor_id_seq OWNER TO postgres;

--
-- Name: app_proveedor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.app_proveedor_id_seq OWNED BY public.app_proveedor.id;


--
-- Name: app_regalo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.app_regalo (
    id integer NOT NULL
);


ALTER TABLE public.app_regalo OWNER TO postgres;

--
-- Name: app_regalo_carta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.app_regalo_carta (
    id integer NOT NULL,
    regalo_id integer NOT NULL,
    carta_id integer NOT NULL
);


ALTER TABLE public.app_regalo_carta OWNER TO postgres;

--
-- Name: app_regalo_carta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.app_regalo_carta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_regalo_carta_id_seq OWNER TO postgres;

--
-- Name: app_regalo_carta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.app_regalo_carta_id_seq OWNED BY public.app_regalo_carta.id;


--
-- Name: app_regalo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.app_regalo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_regalo_id_seq OWNER TO postgres;

--
-- Name: app_regalo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.app_regalo_id_seq OWNED BY public.app_regalo.id;


--
-- Name: app_santaclaus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.app_santaclaus (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);


ALTER TABLE public.app_santaclaus OWNER TO postgres;

--
-- Name: app_santaclaus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.app_santaclaus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_santaclaus_id_seq OWNER TO postgres;

--
-- Name: app_santaclaus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.app_santaclaus_id_seq OWNED BY public.app_santaclaus.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: app_carta id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_carta ALTER COLUMN id SET DEFAULT nextval('public.app_carta_id_seq'::regclass);


--
-- Name: app_hijos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_hijos ALTER COLUMN id SET DEFAULT nextval('public.app_hijos_id_seq'::regclass);


--
-- Name: app_padres id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_padres ALTER COLUMN id SET DEFAULT nextval('public.app_padres_id_seq'::regclass);


--
-- Name: app_proveedor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_proveedor ALTER COLUMN id SET DEFAULT nextval('public.app_proveedor_id_seq'::regclass);


--
-- Name: app_regalo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_regalo ALTER COLUMN id SET DEFAULT nextval('public.app_regalo_id_seq'::regclass);


--
-- Name: app_regalo_carta id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_regalo_carta ALTER COLUMN id SET DEFAULT nextval('public.app_regalo_carta_id_seq'::regclass);


--
-- Name: app_santaclaus id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_santaclaus ALTER COLUMN id SET DEFAULT nextval('public.app_santaclaus_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: app_carta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.app_carta (id, resumen, hijos_id) FROM stdin;
1	caballito de madera	1
3	Pony	2
4	Tren de electrico	3
5	Pelota cuadrada 	4
6	Camion de carga 	5
\.


--
-- Data for Name: app_hijos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.app_hijos (id, nombre, edad, padres_id) FROM stdin;
1	Pedro	10	1
2	Juan	10	2
3	Samuel	10	3
4	Jose	8	4
5	Ruben	58	5
\.


--
-- Data for Name: app_padres; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.app_padres (id, nombre, edad) FROM stdin;
1	Jonathan	38
2	Juan	50
3	Luis 	20
4	Andres	60
5	Esteban	35
\.


--
-- Data for Name: app_proveedor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.app_proveedor (id, nombre) FROM stdin;
1	jugueteria Nicolas
\.


--
-- Data for Name: app_regalo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.app_regalo (id) FROM stdin;
1
\.


--
-- Data for Name: app_regalo_carta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.app_regalo_carta (id, regalo_id, carta_id) FROM stdin;
1	1	1
2	1	3
3	1	4
5	1	5
6	1	6
\.


--
-- Data for Name: app_santaclaus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.app_santaclaus (id, nombre) FROM stdin;
1	Pamela
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	app	0001_initial	2021-02-16 22:00:20.726669-03
2	app	0002_remove_regalo_nombre_juguete	2021-02-16 22:24:56.562711-03
\.


--
-- Name: app_carta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.app_carta_id_seq', 6, true);


--
-- Name: app_hijos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.app_hijos_id_seq', 5, true);


--
-- Name: app_padres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.app_padres_id_seq', 5, true);


--
-- Name: app_proveedor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.app_proveedor_id_seq', 1, true);


--
-- Name: app_regalo_carta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.app_regalo_carta_id_seq', 6, true);


--
-- Name: app_regalo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.app_regalo_id_seq', 1, true);


--
-- Name: app_santaclaus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.app_santaclaus_id_seq', 1, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 2, true);


--
-- Name: app_carta app_carta_hijos_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_carta
    ADD CONSTRAINT app_carta_hijos_id_key UNIQUE (hijos_id);


--
-- Name: app_carta app_carta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_carta
    ADD CONSTRAINT app_carta_pkey PRIMARY KEY (id);


--
-- Name: app_hijos app_hijos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_hijos
    ADD CONSTRAINT app_hijos_pkey PRIMARY KEY (id);


--
-- Name: app_padres app_padres_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_padres
    ADD CONSTRAINT app_padres_pkey PRIMARY KEY (id);


--
-- Name: app_proveedor app_proveedor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_proveedor
    ADD CONSTRAINT app_proveedor_pkey PRIMARY KEY (id);


--
-- Name: app_regalo_carta app_regalo_carta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_regalo_carta
    ADD CONSTRAINT app_regalo_carta_pkey PRIMARY KEY (id);


--
-- Name: app_regalo_carta app_regalo_carta_regalo_id_carta_id_1f424f19_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_regalo_carta
    ADD CONSTRAINT app_regalo_carta_regalo_id_carta_id_1f424f19_uniq UNIQUE (regalo_id, carta_id);


--
-- Name: app_regalo app_regalo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_regalo
    ADD CONSTRAINT app_regalo_pkey PRIMARY KEY (id);


--
-- Name: app_santaclaus app_santaclaus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_santaclaus
    ADD CONSTRAINT app_santaclaus_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: app_hijos_padres_id_a23d4b81; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX app_hijos_padres_id_a23d4b81 ON public.app_hijos USING btree (padres_id);


--
-- Name: app_regalo_carta_carta_id_6417602f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX app_regalo_carta_carta_id_6417602f ON public.app_regalo_carta USING btree (carta_id);


--
-- Name: app_regalo_carta_regalo_id_e56571b1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX app_regalo_carta_regalo_id_e56571b1 ON public.app_regalo_carta USING btree (regalo_id);


--
-- Name: app_carta app_carta_hijos_id_18a86aa2_fk_app_hijos_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_carta
    ADD CONSTRAINT app_carta_hijos_id_18a86aa2_fk_app_hijos_id FOREIGN KEY (hijos_id) REFERENCES public.app_hijos(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_hijos app_hijos_padres_id_a23d4b81_fk_app_padres_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_hijos
    ADD CONSTRAINT app_hijos_padres_id_a23d4b81_fk_app_padres_id FOREIGN KEY (padres_id) REFERENCES public.app_padres(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_regalo_carta app_regalo_carta_carta_id_6417602f_fk_app_carta_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_regalo_carta
    ADD CONSTRAINT app_regalo_carta_carta_id_6417602f_fk_app_carta_id FOREIGN KEY (carta_id) REFERENCES public.app_carta(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_regalo_carta app_regalo_carta_regalo_id_e56571b1_fk_app_regalo_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_regalo_carta
    ADD CONSTRAINT app_regalo_carta_regalo_id_e56571b1_fk_app_regalo_id FOREIGN KEY (regalo_id) REFERENCES public.app_regalo(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

