--
-- PostgreSQL database dump
--

-- Dumped from database version 14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)

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
-- Name: orders; Type: TABLE; Schema: public; Owner: sylae
--

CREATE TABLE public.orders (
    order_number integer NOT NULL,
    order_total_cost_ht money NOT NULL,
    order_total_quantity integer NOT NULL,
    user_password character varying(100) NOT NULL,
    created_at timestamp without time zone,
    user_uuid integer
);


ALTER TABLE public.orders OWNER TO sylae;

--
-- Name: orders_order_number_seq; Type: SEQUENCE; Schema: public; Owner: sylae
--

CREATE SEQUENCE public.orders_order_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_order_number_seq OWNER TO sylae;

--
-- Name: orders_order_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sylae
--

ALTER SEQUENCE public.orders_order_number_seq OWNED BY public.orders.order_number;


--
-- Name: products; Type: TABLE; Schema: public; Owner: sylae
--

CREATE TABLE public.products (
    product_uuid integer NOT NULL,
    product_name character varying(50) NOT NULL,
    product_description character varying(500),
    product_price double precision NOT NULL,
    product_quantity integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.products OWNER TO sylae;

--
-- Name: products_orders; Type: TABLE; Schema: public; Owner: sylae
--

CREATE TABLE public.products_orders (
    product_uuid integer,
    order_number integer
);


ALTER TABLE public.products_orders OWNER TO sylae;

--
-- Name: products_product_uuid_seq; Type: SEQUENCE; Schema: public; Owner: sylae
--

CREATE SEQUENCE public.products_product_uuid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_product_uuid_seq OWNER TO sylae;

--
-- Name: products_product_uuid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sylae
--

ALTER SEQUENCE public.products_product_uuid_seq OWNED BY public.products.product_uuid;


--
-- Name: users; Type: TABLE; Schema: public; Owner: sylae
--

CREATE TABLE public.users (
    user_uuid integer NOT NULL,
    user_pseudo character varying(100) NOT NULL,
    username character varying(100) NOT NULL,
    user_password character varying(100) NOT NULL,
    created_at timestamp without time zone
);


ALTER TABLE public.users OWNER TO sylae;

--
-- Name: users_user_uuid_seq; Type: SEQUENCE; Schema: public; Owner: sylae
--

CREATE SEQUENCE public.users_user_uuid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_uuid_seq OWNER TO sylae;

--
-- Name: users_user_uuid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sylae
--

ALTER SEQUENCE public.users_user_uuid_seq OWNED BY public.users.user_uuid;


--
-- Name: orders order_number; Type: DEFAULT; Schema: public; Owner: sylae
--

ALTER TABLE ONLY public.orders ALTER COLUMN order_number SET DEFAULT nextval('public.orders_order_number_seq'::regclass);


--
-- Name: products product_uuid; Type: DEFAULT; Schema: public; Owner: sylae
--

ALTER TABLE ONLY public.products ALTER COLUMN product_uuid SET DEFAULT nextval('public.products_product_uuid_seq'::regclass);


--
-- Name: users user_uuid; Type: DEFAULT; Schema: public; Owner: sylae
--

ALTER TABLE ONLY public.users ALTER COLUMN user_uuid SET DEFAULT nextval('public.users_user_uuid_seq'::regclass);


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: sylae
--

COPY public.orders (order_number, order_total_cost_ht, order_total_quantity, user_password, created_at, user_uuid) FROM stdin;
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: sylae
--

COPY public.products (product_uuid, product_name, product_description, product_price, product_quantity, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: products_orders; Type: TABLE DATA; Schema: public; Owner: sylae
--

COPY public.products_orders (product_uuid, order_number) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: sylae
--

COPY public.users (user_uuid, user_pseudo, username, user_password, created_at) FROM stdin;
\.


--
-- Name: orders_order_number_seq; Type: SEQUENCE SET; Schema: public; Owner: sylae
--

SELECT pg_catalog.setval('public.orders_order_number_seq', 1, false);


--
-- Name: products_product_uuid_seq; Type: SEQUENCE SET; Schema: public; Owner: sylae
--

SELECT pg_catalog.setval('public.products_product_uuid_seq', 1, false);


--
-- Name: users_user_uuid_seq; Type: SEQUENCE SET; Schema: public; Owner: sylae
--

SELECT pg_catalog.setval('public.users_user_uuid_seq', 1, false);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: sylae
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_number);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: sylae
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_uuid);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: sylae
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_uuid);


--
-- Name: orders orders_user_uuid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: sylae
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_user_uuid_fkey FOREIGN KEY (user_uuid) REFERENCES public.users(user_uuid);


--
-- Name: products_orders products_orders_order_number_fkey; Type: FK CONSTRAINT; Schema: public; Owner: sylae
--

ALTER TABLE ONLY public.products_orders
    ADD CONSTRAINT products_orders_order_number_fkey FOREIGN KEY (order_number) REFERENCES public.orders(order_number);


--
-- Name: products_orders products_orders_product_uuid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: sylae
--

ALTER TABLE ONLY public.products_orders
    ADD CONSTRAINT products_orders_product_uuid_fkey FOREIGN KEY (product_uuid) REFERENCES public.products(product_uuid);


--
-- PostgreSQL database dump complete
--

