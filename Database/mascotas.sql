--
-- PostgreSQL database dump
--

-- Dumped from database version 12.10
-- Dumped by pg_dump version 12.10

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
-- Name: adopciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.adopciones (
    id integer NOT NULL,
    nombre character varying(255),
    correo character varying(255),
    telefono character varying(255),
    id_mascota integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.adopciones OWNER TO postgres;

--
-- Name: adopciones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.adopciones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adopciones_id_seq OWNER TO postgres;

--
-- Name: adopciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.adopciones_id_seq OWNED BY public.adopciones.id;


--
-- Name: mascotas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mascotas (
    id_mascota integer NOT NULL,
    nombre character varying(255),
    imagen character varying(255),
    descripcion character varying(255),
    categoria integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.mascotas OWNER TO postgres;

--
-- Name: adopciones id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adopciones ALTER COLUMN id SET DEFAULT nextval('public.adopciones_id_seq'::regclass);


--
-- Name: adopciones adopciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adopciones
    ADD CONSTRAINT adopciones_pkey PRIMARY KEY (id);


--
-- Name: mascotas mascotas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mascotas
    ADD CONSTRAINT mascotas_pkey PRIMARY KEY (id_mascota);


--
-- Name: adopciones adopciones_id_mascota_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adopciones
    ADD CONSTRAINT adopciones_id_mascota_fkey FOREIGN KEY (id_mascota) REFERENCES public.mascotas(id_mascota) ON UPDATE CASCADE;


--
-- PostgreSQL database dump complete
--

