--
-- PostgreSQL database dump
--

-- Dumped from database version 15.5
-- Dumped by pg_dump version 15.4

-- Started on 2024-01-23 00:46:24

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

DROP DATABASE IF EXISTS incidentmngr;
--
-- TOC entry 3367 (class 1262 OID 16684)
-- Name: incidentmngr; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE incidentmngr WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';


ALTER DATABASE incidentmngr OWNER TO postgres;

\connect incidentmngr

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
-- TOC entry 214 (class 1259 OID 16685)
-- Name: criticalities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.criticalities (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.criticalities OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16690)
-- Name: criticalities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.criticalities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.criticalities_id_seq OWNER TO postgres;

--
-- TOC entry 3368 (class 0 OID 0)
-- Dependencies: 215
-- Name: criticalities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.criticalities_id_seq OWNED BY public.criticalities.id;


--
-- TOC entry 216 (class 1259 OID 16691)
-- Name: error; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.error (
    id integer NOT NULL,
    number integer,
    short_desk text,
    full_desk text,
    user_id integer,
    importances_id integer,
    statuses_id integer,
    criticalities_id integer,
    date timestamp without time zone
);


ALTER TABLE public.error OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16696)
-- Name: error_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.error_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.error_id_seq OWNER TO postgres;

--
-- TOC entry 3369 (class 0 OID 0)
-- Dependencies: 217
-- Name: error_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.error_id_seq OWNED BY public.error.id;


--
-- TOC entry 218 (class 1259 OID 16697)
-- Name: error_story; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.error_story (
    id numeric NOT NULL,
    comment text,
    error_id integer,
    user_id integer,
    date timestamp without time zone
);


ALTER TABLE public.error_story OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16702)
-- Name: importances; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.importances (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.importances OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16707)
-- Name: importances_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.importances_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.importances_id_seq OWNER TO postgres;

--
-- TOC entry 3370 (class 0 OID 0)
-- Dependencies: 220
-- Name: importances_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.importances_id_seq OWNED BY public.importances.id;


--
-- TOC entry 221 (class 1259 OID 16708)
-- Name: statuses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.statuses (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.statuses OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16713)
-- Name: statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.statuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.statuses_id_seq OWNER TO postgres;

--
-- TOC entry 3371 (class 0 OID 0)
-- Dependencies: 222
-- Name: statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.statuses_id_seq OWNED BY public.statuses.id;


--
-- TOC entry 223 (class 1259 OID 16714)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    login text NOT NULL,
    name text NOT NULL,
    secondname text,
    password text NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16719)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 3372 (class 0 OID 0)
-- Dependencies: 224
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 3197 (class 2604 OID 16720)
-- Name: criticalities id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.criticalities ALTER COLUMN id SET DEFAULT nextval('public.criticalities_id_seq'::regclass);


--
-- TOC entry 3198 (class 2604 OID 16721)
-- Name: error id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.error ALTER COLUMN id SET DEFAULT nextval('public.error_id_seq'::regclass);


--
-- TOC entry 3199 (class 2604 OID 16722)
-- Name: importances id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.importances ALTER COLUMN id SET DEFAULT nextval('public.importances_id_seq'::regclass);


--
-- TOC entry 3200 (class 2604 OID 16723)
-- Name: statuses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.statuses ALTER COLUMN id SET DEFAULT nextval('public.statuses_id_seq'::regclass);


--
-- TOC entry 3201 (class 2604 OID 16724)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3203 (class 2606 OID 16726)
-- Name: criticalities criticalities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.criticalities
    ADD CONSTRAINT criticalities_pkey PRIMARY KEY (id);


--
-- TOC entry 3205 (class 2606 OID 16728)
-- Name: error error_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.error
    ADD CONSTRAINT error_pkey PRIMARY KEY (id);


--
-- TOC entry 3207 (class 2606 OID 16730)
-- Name: error_story error_story_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.error_story
    ADD CONSTRAINT error_story_pkey PRIMARY KEY (id);


--
-- TOC entry 3209 (class 2606 OID 16732)
-- Name: importances importances_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.importances
    ADD CONSTRAINT importances_pkey PRIMARY KEY (id);


--
-- TOC entry 3211 (class 2606 OID 16734)
-- Name: statuses statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT statuses_pkey PRIMARY KEY (id);


--
-- TOC entry 3213 (class 2606 OID 16736)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3214 (class 2606 OID 16737)
-- Name: error criticalitie; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.error
    ADD CONSTRAINT criticalitie FOREIGN KEY (criticalities_id) REFERENCES public.criticalities(id) NOT VALID;


--
-- TOC entry 3218 (class 2606 OID 16742)
-- Name: error_story error_story_error_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.error_story
    ADD CONSTRAINT error_story_error_id_fkey FOREIGN KEY (error_id) REFERENCES public.error(id);


--
-- TOC entry 3219 (class 2606 OID 16747)
-- Name: error_story error_story_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.error_story
    ADD CONSTRAINT error_story_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3215 (class 2606 OID 16752)
-- Name: error importance; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.error
    ADD CONSTRAINT importance FOREIGN KEY (importances_id) REFERENCES public.importances(id) NOT VALID;


--
-- TOC entry 3216 (class 2606 OID 16757)
-- Name: error statuse; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.error
    ADD CONSTRAINT statuse FOREIGN KEY (statuses_id) REFERENCES public.statuses(id) NOT VALID;


--
-- TOC entry 3217 (class 2606 OID 16762)
-- Name: error user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.error
    ADD CONSTRAINT "user" FOREIGN KEY (user_id) REFERENCES public.users(id) NOT VALID;


-- Completed on 2024-01-23 00:46:24

--
-- PostgreSQL database dump complete
--

