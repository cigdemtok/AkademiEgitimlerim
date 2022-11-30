--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

-- Started on 2022-11-30 16:12:51

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
-- TOC entry 214 (class 1259 OID 17341)
-- Name: addresses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.addresses (
    id integer NOT NULL,
    title character varying NOT NULL,
    customer_id integer NOT NULL
);


ALTER TABLE public.addresses OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 17346)
-- Name: addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.addresses ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.addresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 216 (class 1259 OID 17347)
-- Name: baskets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.baskets (
    id integer NOT NULL,
    total_price money NOT NULL,
    product_id integer NOT NULL,
    customer_id integer NOT NULL
);


ALTER TABLE public.baskets OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 17350)
-- Name: baskets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.baskets ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.baskets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 218 (class 1259 OID 17351)
-- Name: brands; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.brands (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.brands OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 17356)
-- Name: brands_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.brands ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.brands_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 220 (class 1259 OID 17357)
-- Name: cargo_companies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cargo_companies (
    id integer NOT NULL,
    cargo_details character varying NOT NULL,
    cargo_date date NOT NULL,
    name character varying NOT NULL,
    order_return_id integer
);


ALTER TABLE public.cargo_companies OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 17362)
-- Name: cargo_companies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.cargo_companies ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.cargo_companies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 222 (class 1259 OID 17363)
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying NOT NULL,
    type character varying NOT NULL
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 17368)
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.categories ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 224 (class 1259 OID 17369)
-- Name: cities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cities (
    id integer NOT NULL,
    name character varying NOT NULL,
    country_id integer NOT NULL
);


ALTER TABLE public.cities OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 17374)
-- Name: cities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.cities ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 226 (class 1259 OID 17375)
-- Name: colors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.colors (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.colors OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 17380)
-- Name: colors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.colors ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.colors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 228 (class 1259 OID 17381)
-- Name: countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.countries (
    id integer NOT NULL,
    name character varying NOT NULL,
    address_id integer NOT NULL
);


ALTER TABLE public.countries OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 17386)
-- Name: countries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.countries ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 230 (class 1259 OID 17387)
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    id integer NOT NULL,
    name character varying NOT NULL,
    surname character varying NOT NULL,
    email character varying NOT NULL,
    phone character varying NOT NULL
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 17392)
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.customers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 232 (class 1259 OID 17393)
-- Name: districts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.districts (
    id integer NOT NULL,
    name character varying NOT NULL,
    city_id integer NOT NULL
);


ALTER TABLE public.districts OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 17398)
-- Name: districts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.districts ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.districts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 234 (class 1259 OID 17399)
-- Name: order_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_details (
    id integer NOT NULL,
    order_number integer NOT NULL,
    quantity integer NOT NULL,
    product_id integer NOT NULL,
    order_id integer NOT NULL,
    order_total_price money NOT NULL
);


ALTER TABLE public.order_details OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 17402)
-- Name: order_details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.order_details ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.order_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 236 (class 1259 OID 17403)
-- Name: order_returns; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_returns (
    id integer NOT NULL,
    total_price money NOT NULL,
    order_detail_id integer NOT NULL,
    number_of_returns integer NOT NULL
);


ALTER TABLE public.order_returns OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 17406)
-- Name: order_returns_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.order_returns ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.order_returns_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 238 (class 1259 OID 17407)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    customer_id integer NOT NULL,
    cargo_company_id integer NOT NULL,
    shipping_address_id integer,
    invoice_address_id integer NOT NULL
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 17410)
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.orders ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 240 (class 1259 OID 17411)
-- Name: payment_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment_types (
    id integer NOT NULL,
    type_name character varying NOT NULL,
    payment_id integer NOT NULL
);


ALTER TABLE public.payment_types OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 17416)
-- Name: payment_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.payment_types ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.payment_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 242 (class 1259 OID 17417)
-- Name: payments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payments (
    id integer NOT NULL,
    payment_date date NOT NULL,
    payment_description character varying NOT NULL,
    order_id integer NOT NULL
);


ALTER TABLE public.payments OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 17422)
-- Name: payments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.payments ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.payments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 244 (class 1259 OID 17423)
-- Name: product_brand; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_brand (
    product_id integer NOT NULL,
    brand_id integer NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.product_brand OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 17426)
-- Name: product_brand_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.product_brand ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.product_brand_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 246 (class 1259 OID 17427)
-- Name: product_color; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_color (
    product_id integer NOT NULL,
    color_id integer NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.product_color OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 17430)
-- Name: product_color_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.product_color ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.product_color_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 248 (class 1259 OID 17431)
-- Name: product_return; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_return (
    id integer NOT NULL,
    order_return_id integer NOT NULL
);


ALTER TABLE public.product_return OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 17434)
-- Name: product_return_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.product_return ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.product_return_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 250 (class 1259 OID 17435)
-- Name: product_sellers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_sellers (
    product_id integer NOT NULL,
    seller_id integer NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.product_sellers OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 17438)
-- Name: product_sellers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.product_sellers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.product_sellers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 252 (class 1259 OID 17439)
-- Name: product_size; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_size (
    product_id integer NOT NULL,
    size_id integer NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.product_size OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 17442)
-- Name: product_size_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.product_size ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.product_size_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 254 (class 1259 OID 17443)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying NOT NULL,
    unit_price money NOT NULL,
    stock integer NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 17448)
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.products ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 256 (class 1259 OID 17449)
-- Name: refund; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.refund (
    id integer NOT NULL,
    message character varying NOT NULL,
    order_return_id integer NOT NULL
);


ALTER TABLE public.refund OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 17454)
-- Name: refund_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.refund ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.refund_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 258 (class 1259 OID 17455)
-- Name: sellers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sellers (
    id integer NOT NULL,
    name character varying NOT NULL,
    rating integer NOT NULL,
    follower_count integer NOT NULL
);


ALTER TABLE public.sellers OWNER TO postgres;

--
-- TOC entry 259 (class 1259 OID 17460)
-- Name: sellers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.sellers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.sellers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 260 (class 1259 OID 17461)
-- Name: shippers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shippers (
    id integer NOT NULL,
    name character varying NOT NULL,
    cargo_company_id integer NOT NULL
);


ALTER TABLE public.shippers OWNER TO postgres;

--
-- TOC entry 261 (class 1259 OID 17466)
-- Name: shippers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.shippers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.shippers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 262 (class 1259 OID 17467)
-- Name: size; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.size (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.size OWNER TO postgres;

--
-- TOC entry 263 (class 1259 OID 17472)
-- Name: size_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.size ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.size_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 264 (class 1259 OID 17473)
-- Name: streets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.streets (
    id integer NOT NULL,
    name character varying NOT NULL,
    district_id integer NOT NULL
);


ALTER TABLE public.streets OWNER TO postgres;

--
-- TOC entry 265 (class 1259 OID 17478)
-- Name: streets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.streets ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.streets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3521 (class 0 OID 17341)
-- Dependencies: 214
-- Data for Name: addresses; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.addresses (id, title, customer_id) OVERRIDING SYSTEM VALUE VALUES (1, 'ev adresi', 1);
INSERT INTO public.addresses (id, title, customer_id) OVERRIDING SYSTEM VALUE VALUES (2, 'iş adresi', 2);


--
-- TOC entry 3523 (class 0 OID 17347)
-- Dependencies: 216
-- Data for Name: baskets; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.baskets (id, total_price, product_id, customer_id) OVERRIDING SYSTEM VALUE VALUES (2, '£250.00', 6, 1);
INSERT INTO public.baskets (id, total_price, product_id, customer_id) OVERRIDING SYSTEM VALUE VALUES (3, '£500.00', 8, 1);
INSERT INTO public.baskets (id, total_price, product_id, customer_id) OVERRIDING SYSTEM VALUE VALUES (4, '£300.00', 9, 5);


--
-- TOC entry 3525 (class 0 OID 17351)
-- Dependencies: 218
-- Data for Name: brands; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.brands (id, name) OVERRIDING SYSTEM VALUE VALUES (1, 'nike');
INSERT INTO public.brands (id, name) OVERRIDING SYSTEM VALUE VALUES (2, 'puma');
INSERT INTO public.brands (id, name) OVERRIDING SYSTEM VALUE VALUES (3, 'zara');


--
-- TOC entry 3527 (class 0 OID 17357)
-- Dependencies: 220
-- Data for Name: cargo_companies; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cargo_companies (id, cargo_details, cargo_date, name, order_return_id) OVERRIDING SYSTEM VALUE VALUES (1, 'Sipariş yolda', '2022-12-12', 'yurtiçi', 1);
INSERT INTO public.cargo_companies (id, cargo_details, cargo_date, name, order_return_id) OVERRIDING SYSTEM VALUE VALUES (2, 'teslim edildi', '2022-12-08', 'mng', 1);
INSERT INTO public.cargo_companies (id, cargo_details, cargo_date, name, order_return_id) OVERRIDING SYSTEM VALUE VALUES (3, 'sipariş hazırlanıyor', '2022-12-05', 'ptt ', 2);
INSERT INTO public.cargo_companies (id, cargo_details, cargo_date, name, order_return_id) OVERRIDING SYSTEM VALUE VALUES (4, 'Sipariş yolda', '2022-12-03', 'mng', 2);


--
-- TOC entry 3529 (class 0 OID 17363)
-- Dependencies: 222
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categories (id, name, type) OVERRIDING SYSTEM VALUE VALUES (1, 'Giyim', 'ihtiyaç');
INSERT INTO public.categories (id, name, type) OVERRIDING SYSTEM VALUE VALUES (2, 'Aksesuar', 'Keyfi İhtiyaç');
INSERT INTO public.categories (id, name, type) OVERRIDING SYSTEM VALUE VALUES (3, 'kitap', 'eğitim ve kırtasiye');


--
-- TOC entry 3531 (class 0 OID 17369)
-- Dependencies: 224
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (1, 'istanbul', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (2, 'izmir', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (3, 'ankara', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (4, 'berlin', 4);


--
-- TOC entry 3533 (class 0 OID 17375)
-- Dependencies: 226
-- Data for Name: colors; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.colors (id, name) OVERRIDING SYSTEM VALUE VALUES (1, 'sarı');
INSERT INTO public.colors (id, name) OVERRIDING SYSTEM VALUE VALUES (2, 'kırmızı');
INSERT INTO public.colors (id, name) OVERRIDING SYSTEM VALUE VALUES (3, 'beyaz');


--
-- TOC entry 3535 (class 0 OID 17381)
-- Dependencies: 228
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.countries (id, name, address_id) OVERRIDING SYSTEM VALUE VALUES (1, 'türkiye', 1);
INSERT INTO public.countries (id, name, address_id) OVERRIDING SYSTEM VALUE VALUES (2, 'rusya', 2);
INSERT INTO public.countries (id, name, address_id) OVERRIDING SYSTEM VALUE VALUES (4, 'Almanya', 2);
INSERT INTO public.countries (id, name, address_id) OVERRIDING SYSTEM VALUE VALUES (6, 'ABD', 1);


--
-- TOC entry 3537 (class 0 OID 17387)
-- Dependencies: 230
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.customers (id, name, surname, email, phone) OVERRIDING SYSTEM VALUE VALUES (1, 'çiğdem', 'tok', 'a@etiya.com', '05444444444');
INSERT INTO public.customers (id, name, surname, email, phone) OVERRIDING SYSTEM VALUE VALUES (2, 'ömer', 'adıgüzel', 'omer.adiguzel@etiya.com', '05425555252');
INSERT INTO public.customers (id, name, surname, email, phone) OVERRIDING SYSTEM VALUE VALUES (3, 'seçil', 'durmuş', 'secil.durmus@etiya.com', '05325225252');
INSERT INTO public.customers (id, name, surname, email, phone) OVERRIDING SYSTEM VALUE VALUES (4, 'yusuf hazar', 'ipekci', 'yusuf.hazar@etiya.com', '05444223232');
INSERT INTO public.customers (id, name, surname, email, phone) OVERRIDING SYSTEM VALUE VALUES (5, 'nilüfer', 'döne', 'nilufer.done@etiya.com', '05554225252');
INSERT INTO public.customers (id, name, surname, email, phone) OVERRIDING SYSTEM VALUE VALUES (7, 'çiğdem', 'tok', 'cigdem@gmail.com', '05446446666');


--
-- TOC entry 3539 (class 0 OID 17393)
-- Dependencies: 232
-- Data for Name: districts; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.districts (id, name, city_id) OVERRIDING SYSTEM VALUE VALUES (1, 'sarıyer', 3);
INSERT INTO public.districts (id, name, city_id) OVERRIDING SYSTEM VALUE VALUES (2, 'pendik', 2);
INSERT INTO public.districts (id, name, city_id) OVERRIDING SYSTEM VALUE VALUES (3, 'mitte', 4);


--
-- TOC entry 3541 (class 0 OID 17399)
-- Dependencies: 234
-- Data for Name: order_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.order_details (id, order_number, quantity, product_id, order_id, order_total_price) OVERRIDING SYSTEM VALUE VALUES (1, 1, 500, 6, 1, '£500.00');
INSERT INTO public.order_details (id, order_number, quantity, product_id, order_id, order_total_price) OVERRIDING SYSTEM VALUE VALUES (2, 2, 250, 8, 2, '£1,000.00');


--
-- TOC entry 3543 (class 0 OID 17403)
-- Dependencies: 236
-- Data for Name: order_returns; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.order_returns (id, total_price, order_detail_id, number_of_returns) OVERRIDING SYSTEM VALUE VALUES (1, '£250.00', 1, 1);
INSERT INTO public.order_returns (id, total_price, order_detail_id, number_of_returns) OVERRIDING SYSTEM VALUE VALUES (2, '£350.00', 2, 1);


--
-- TOC entry 3545 (class 0 OID 17407)
-- Dependencies: 238
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.orders (id, customer_id, cargo_company_id, shipping_address_id, invoice_address_id) OVERRIDING SYSTEM VALUE VALUES (1, 1, 1, 1, 1);
INSERT INTO public.orders (id, customer_id, cargo_company_id, shipping_address_id, invoice_address_id) OVERRIDING SYSTEM VALUE VALUES (2, 2, 2, 2, 2);
INSERT INTO public.orders (id, customer_id, cargo_company_id, shipping_address_id, invoice_address_id) OVERRIDING SYSTEM VALUE VALUES (3, 3, 1, 1, 1);
INSERT INTO public.orders (id, customer_id, cargo_company_id, shipping_address_id, invoice_address_id) OVERRIDING SYSTEM VALUE VALUES (4, 1, 2, 1, 1);
INSERT INTO public.orders (id, customer_id, cargo_company_id, shipping_address_id, invoice_address_id) OVERRIDING SYSTEM VALUE VALUES (5, 3, 2, 1, 1);


--
-- TOC entry 3547 (class 0 OID 17411)
-- Dependencies: 240
-- Data for Name: payment_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.payment_types (id, type_name, payment_id) OVERRIDING SYSTEM VALUE VALUES (1, 'kapıda ödeme', 1);
INSERT INTO public.payment_types (id, type_name, payment_id) OVERRIDING SYSTEM VALUE VALUES (2, 'kredi cart', 2);


--
-- TOC entry 3549 (class 0 OID 17417)
-- Dependencies: 242
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.payments (id, payment_date, payment_description, order_id) OVERRIDING SYSTEM VALUE VALUES (1, '2022-12-08', 'ödendi', 1);
INSERT INTO public.payments (id, payment_date, payment_description, order_id) OVERRIDING SYSTEM VALUE VALUES (2, '2022-12-05', 'ödendi', 2);


--
-- TOC entry 3551 (class 0 OID 17423)
-- Dependencies: 244
-- Data for Name: product_brand; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product_brand (product_id, brand_id, id) OVERRIDING SYSTEM VALUE VALUES (6, 1, 1);
INSERT INTO public.product_brand (product_id, brand_id, id) OVERRIDING SYSTEM VALUE VALUES (8, 2, 2);
INSERT INTO public.product_brand (product_id, brand_id, id) OVERRIDING SYSTEM VALUE VALUES (7, 2, 3);


--
-- TOC entry 3553 (class 0 OID 17427)
-- Dependencies: 246
-- Data for Name: product_color; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product_color (product_id, color_id, id) OVERRIDING SYSTEM VALUE VALUES (6, 1, 1);
INSERT INTO public.product_color (product_id, color_id, id) OVERRIDING SYSTEM VALUE VALUES (8, 2, 2);
INSERT INTO public.product_color (product_id, color_id, id) OVERRIDING SYSTEM VALUE VALUES (7, 1, 3);
INSERT INTO public.product_color (product_id, color_id, id) OVERRIDING SYSTEM VALUE VALUES (9, 3, 4);


--
-- TOC entry 3555 (class 0 OID 17431)
-- Dependencies: 248
-- Data for Name: product_return; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product_return (id, order_return_id) OVERRIDING SYSTEM VALUE VALUES (1, 1);
INSERT INTO public.product_return (id, order_return_id) OVERRIDING SYSTEM VALUE VALUES (2, 2);


--
-- TOC entry 3557 (class 0 OID 17435)
-- Dependencies: 250
-- Data for Name: product_sellers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product_sellers (product_id, seller_id, id) OVERRIDING SYSTEM VALUE VALUES (5, 1, 3);
INSERT INTO public.product_sellers (product_id, seller_id, id) OVERRIDING SYSTEM VALUE VALUES (8, 2, 4);
INSERT INTO public.product_sellers (product_id, seller_id, id) OVERRIDING SYSTEM VALUE VALUES (7, 2, 5);
INSERT INTO public.product_sellers (product_id, seller_id, id) OVERRIDING SYSTEM VALUE VALUES (6, 3, 2);


--
-- TOC entry 3559 (class 0 OID 17439)
-- Dependencies: 252
-- Data for Name: product_size; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product_size (product_id, size_id, id) OVERRIDING SYSTEM VALUE VALUES (6, 1, 1);
INSERT INTO public.product_size (product_id, size_id, id) OVERRIDING SYSTEM VALUE VALUES (8, 3, 2);


--
-- TOC entry 3561 (class 0 OID 17443)
-- Dependencies: 254
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.products (id, name, unit_price, stock, category_id) OVERRIDING SYSTEM VALUE VALUES (6, 'gömlek', '£250.00', 150, 1);
INSERT INTO public.products (id, name, unit_price, stock, category_id) OVERRIDING SYSTEM VALUE VALUES (7, 'pantolon', '£200.00', 60, 1);
INSERT INTO public.products (id, name, unit_price, stock, category_id) OVERRIDING SYSTEM VALUE VALUES (9, 'kazak', '£500.00', 100, 1);
INSERT INTO public.products (id, name, unit_price, stock, category_id) OVERRIDING SYSTEM VALUE VALUES (8, 'Kolye', '£500.00', 50, 2);
INSERT INTO public.products (id, name, unit_price, stock, category_id) OVERRIDING SYSTEM VALUE VALUES (10, 'ayakkabı', '£100.00', 25, 1);
INSERT INTO public.products (id, name, unit_price, stock, category_id) OVERRIDING SYSTEM VALUE VALUES (5, 'etek', '£100.00', 40, 1);
INSERT INTO public.products (id, name, unit_price, stock, category_id) OVERRIDING SYSTEM VALUE VALUES (11, 'elbise', '£150.00', 80, 3);


--
-- TOC entry 3563 (class 0 OID 17449)
-- Dependencies: 256
-- Data for Name: refund; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.refund (id, message, order_return_id) OVERRIDING SYSTEM VALUE VALUES (1, 'hatalı ürün', 1);
INSERT INTO public.refund (id, message, order_return_id) OVERRIDING SYSTEM VALUE VALUES (2, 'yanlış ürün seçimi', 2);


--
-- TOC entry 3565 (class 0 OID 17455)
-- Dependencies: 258
-- Data for Name: sellers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.sellers (id, name, rating, follower_count) OVERRIDING SYSTEM VALUE VALUES (2, 'koton', 2000, 50000);
INSERT INTO public.sellers (id, name, rating, follower_count) OVERRIDING SYSTEM VALUE VALUES (1, 'nike', 1000, 25000);
INSERT INTO public.sellers (id, name, rating, follower_count) OVERRIDING SYSTEM VALUE VALUES (3, 'lcw', 2500, 60000);


--
-- TOC entry 3567 (class 0 OID 17461)
-- Dependencies: 260
-- Data for Name: shippers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.shippers (id, name, cargo_company_id) OVERRIDING SYSTEM VALUE VALUES (1, 'ahmet', 1);
INSERT INTO public.shippers (id, name, cargo_company_id) OVERRIDING SYSTEM VALUE VALUES (2, 'veli', 2);
INSERT INTO public.shippers (id, name, cargo_company_id) OVERRIDING SYSTEM VALUE VALUES (3, 'ayşe', 2);
INSERT INTO public.shippers (id, name, cargo_company_id) OVERRIDING SYSTEM VALUE VALUES (4, 'elif', 3);


--
-- TOC entry 3569 (class 0 OID 17467)
-- Dependencies: 262
-- Data for Name: size; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.size (id, name) OVERRIDING SYSTEM VALUE VALUES (1, 'small');
INSERT INTO public.size (id, name) OVERRIDING SYSTEM VALUE VALUES (2, 'medium');
INSERT INTO public.size (id, name) OVERRIDING SYSTEM VALUE VALUES (3, 'large');


--
-- TOC entry 3571 (class 0 OID 17473)
-- Dependencies: 264
-- Data for Name: streets; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.streets (id, name, district_id) OVERRIDING SYSTEM VALUE VALUES (1, 'topçu caddesi', 1);
INSERT INTO public.streets (id, name, district_id) OVERRIDING SYSTEM VALUE VALUES (2, 'cumhuriyer', 2);


--
-- TOC entry 3578 (class 0 OID 0)
-- Dependencies: 215
-- Name: addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.addresses_id_seq', 2, true);


--
-- TOC entry 3579 (class 0 OID 0)
-- Dependencies: 217
-- Name: baskets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.baskets_id_seq', 4, true);


--
-- TOC entry 3580 (class 0 OID 0)
-- Dependencies: 219
-- Name: brands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.brands_id_seq', 3, true);


--
-- TOC entry 3581 (class 0 OID 0)
-- Dependencies: 221
-- Name: cargo_companies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cargo_companies_id_seq', 4, true);


--
-- TOC entry 3582 (class 0 OID 0)
-- Dependencies: 223
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 3, true);


--
-- TOC entry 3583 (class 0 OID 0)
-- Dependencies: 225
-- Name: cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cities_id_seq', 4, true);


--
-- TOC entry 3584 (class 0 OID 0)
-- Dependencies: 227
-- Name: colors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.colors_id_seq', 3, true);


--
-- TOC entry 3585 (class 0 OID 0)
-- Dependencies: 229
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.countries_id_seq', 6, true);


--
-- TOC entry 3586 (class 0 OID 0)
-- Dependencies: 231
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_id_seq', 7, true);


--
-- TOC entry 3587 (class 0 OID 0)
-- Dependencies: 233
-- Name: districts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.districts_id_seq', 3, true);


--
-- TOC entry 3588 (class 0 OID 0)
-- Dependencies: 235
-- Name: order_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_details_id_seq', 2, true);


--
-- TOC entry 3589 (class 0 OID 0)
-- Dependencies: 237
-- Name: order_returns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_returns_id_seq', 2, true);


--
-- TOC entry 3590 (class 0 OID 0)
-- Dependencies: 239
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 5, true);


--
-- TOC entry 3591 (class 0 OID 0)
-- Dependencies: 241
-- Name: payment_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payment_types_id_seq', 2, true);


--
-- TOC entry 3592 (class 0 OID 0)
-- Dependencies: 243
-- Name: payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payments_id_seq', 2, true);


--
-- TOC entry 3593 (class 0 OID 0)
-- Dependencies: 245
-- Name: product_brand_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_brand_id_seq', 3, true);


--
-- TOC entry 3594 (class 0 OID 0)
-- Dependencies: 247
-- Name: product_color_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_color_id_seq', 4, true);


--
-- TOC entry 3595 (class 0 OID 0)
-- Dependencies: 249
-- Name: product_return_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_return_id_seq', 2, true);


--
-- TOC entry 3596 (class 0 OID 0)
-- Dependencies: 251
-- Name: product_sellers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_sellers_id_seq', 5, true);


--
-- TOC entry 3597 (class 0 OID 0)
-- Dependencies: 253
-- Name: product_size_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_size_id_seq', 2, true);


--
-- TOC entry 3598 (class 0 OID 0)
-- Dependencies: 255
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 11, true);


--
-- TOC entry 3599 (class 0 OID 0)
-- Dependencies: 257
-- Name: refund_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.refund_id_seq', 2, true);


--
-- TOC entry 3600 (class 0 OID 0)
-- Dependencies: 259
-- Name: sellers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sellers_id_seq', 3, true);


--
-- TOC entry 3601 (class 0 OID 0)
-- Dependencies: 261
-- Name: shippers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.shippers_id_seq', 4, true);


--
-- TOC entry 3602 (class 0 OID 0)
-- Dependencies: 263
-- Name: size_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.size_id_seq', 3, true);


--
-- TOC entry 3603 (class 0 OID 0)
-- Dependencies: 265
-- Name: streets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.streets_id_seq', 2, true);


--
-- TOC entry 3299 (class 2606 OID 17480)
-- Name: addresses addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (id);


--
-- TOC entry 3301 (class 2606 OID 17482)
-- Name: baskets baskets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT baskets_pkey PRIMARY KEY (id);


--
-- TOC entry 3303 (class 2606 OID 17484)
-- Name: brands brands_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);


--
-- TOC entry 3305 (class 2606 OID 17486)
-- Name: cargo_companies cargo_companies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cargo_companies
    ADD CONSTRAINT cargo_companies_pkey PRIMARY KEY (id);


--
-- TOC entry 3307 (class 2606 OID 17488)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 3309 (class 2606 OID 17490)
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);


--
-- TOC entry 3311 (class 2606 OID 17492)
-- Name: colors colors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colors
    ADD CONSTRAINT colors_pkey PRIMARY KEY (id);


--
-- TOC entry 3313 (class 2606 OID 17494)
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


--
-- TOC entry 3315 (class 2606 OID 17496)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- TOC entry 3317 (class 2606 OID 17498)
-- Name: districts districts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.districts
    ADD CONSTRAINT districts_pkey PRIMARY KEY (id);


--
-- TOC entry 3319 (class 2606 OID 17500)
-- Name: order_details order_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_details_pkey PRIMARY KEY (id);


--
-- TOC entry 3321 (class 2606 OID 17502)
-- Name: order_returns order_returns_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_returns
    ADD CONSTRAINT order_returns_pkey PRIMARY KEY (id);


--
-- TOC entry 3323 (class 2606 OID 17504)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- TOC entry 3325 (class 2606 OID 17506)
-- Name: payment_types payment_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_types
    ADD CONSTRAINT payment_types_pkey PRIMARY KEY (id);


--
-- TOC entry 3327 (class 2606 OID 17508)
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);


--
-- TOC entry 3329 (class 2606 OID 17510)
-- Name: product_brand product_brand_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_brand
    ADD CONSTRAINT product_brand_pkey PRIMARY KEY (id);


--
-- TOC entry 3331 (class 2606 OID 17512)
-- Name: product_color product_color_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_color
    ADD CONSTRAINT product_color_pkey PRIMARY KEY (id);


--
-- TOC entry 3333 (class 2606 OID 17514)
-- Name: product_return product_return_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_return
    ADD CONSTRAINT product_return_pkey PRIMARY KEY (id);


--
-- TOC entry 3335 (class 2606 OID 17516)
-- Name: product_sellers product_sellers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_sellers
    ADD CONSTRAINT product_sellers_pkey PRIMARY KEY (id);


--
-- TOC entry 3337 (class 2606 OID 17518)
-- Name: product_size product_size_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_size
    ADD CONSTRAINT product_size_pkey PRIMARY KEY (id);


--
-- TOC entry 3339 (class 2606 OID 17520)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- TOC entry 3341 (class 2606 OID 17522)
-- Name: refund refund_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.refund
    ADD CONSTRAINT refund_pkey PRIMARY KEY (id);


--
-- TOC entry 3343 (class 2606 OID 17524)
-- Name: sellers sellers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sellers
    ADD CONSTRAINT sellers_pkey PRIMARY KEY (id);


--
-- TOC entry 3345 (class 2606 OID 17526)
-- Name: shippers shippers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shippers
    ADD CONSTRAINT shippers_pkey PRIMARY KEY (id);


--
-- TOC entry 3347 (class 2606 OID 17528)
-- Name: size size_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.size
    ADD CONSTRAINT size_pkey PRIMARY KEY (id);


--
-- TOC entry 3349 (class 2606 OID 17530)
-- Name: streets streets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.streets
    ADD CONSTRAINT streets_pkey PRIMARY KEY (id);


--
-- TOC entry 3355 (class 2606 OID 17531)
-- Name: countries address_countries_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT address_countries_fk FOREIGN KEY (address_id) REFERENCES public.addresses(id) NOT VALID;


--
-- TOC entry 3353 (class 2606 OID 17536)
-- Name: cargo_companies cargo_return_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cargo_companies
    ADD CONSTRAINT cargo_return_fk FOREIGN KEY (order_return_id) REFERENCES public.order_returns(id) NOT VALID;


--
-- TOC entry 3354 (class 2606 OID 17541)
-- Name: cities cities_country_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_country_fk FOREIGN KEY (country_id) REFERENCES public.countries(id) NOT VALID;


--
-- TOC entry 3356 (class 2606 OID 17546)
-- Name: districts city_district_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.districts
    ADD CONSTRAINT city_district_fk FOREIGN KEY (city_id) REFERENCES public.cities(id) NOT VALID;


--
-- TOC entry 3360 (class 2606 OID 17551)
-- Name: orders company_order_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT company_order_fk FOREIGN KEY (cargo_company_id) REFERENCES public.cargo_companies(id) NOT VALID;


--
-- TOC entry 3350 (class 2606 OID 17556)
-- Name: addresses customer_address_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT customer_address_fk FOREIGN KEY (customer_id) REFERENCES public.customers(id) NOT VALID;


--
-- TOC entry 3351 (class 2606 OID 17561)
-- Name: baskets customer_basket_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT customer_basket_fk FOREIGN KEY (customer_id) REFERENCES public.customers(id) NOT VALID;


--
-- TOC entry 3361 (class 2606 OID 17566)
-- Name: orders customer_order_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT customer_order_fk FOREIGN KEY (customer_id) REFERENCES public.customers(id) NOT VALID;


--
-- TOC entry 3357 (class 2606 OID 17571)
-- Name: order_details detail_order_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT detail_order_fk FOREIGN KEY (order_id) REFERENCES public.orders(id) NOT VALID;


--
-- TOC entry 3362 (class 2606 OID 17576)
-- Name: orders invoice_address_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT invoice_address_fk FOREIGN KEY (invoice_address_id) REFERENCES public.addresses(id) NOT VALID;


--
-- TOC entry 3358 (class 2606 OID 17581)
-- Name: order_details order_product_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_product_fk FOREIGN KEY (product_id) REFERENCES public.products(id) NOT VALID;


--
-- TOC entry 3365 (class 2606 OID 17586)
-- Name: payments payment_order_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payment_order_fk FOREIGN KEY (order_id) REFERENCES public.orders(id) NOT VALID;


--
-- TOC entry 3364 (class 2606 OID 17591)
-- Name: payment_types payment_type_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_types
    ADD CONSTRAINT payment_type_fk FOREIGN KEY (payment_id) REFERENCES public.payments(id) NOT VALID;


--
-- TOC entry 3352 (class 2606 OID 17596)
-- Name: baskets product_basket_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT product_basket_fk FOREIGN KEY (product_id) REFERENCES public.products(id) NOT VALID;


--
-- TOC entry 3366 (class 2606 OID 17601)
-- Name: product_brand product_brand_brand_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_brand
    ADD CONSTRAINT product_brand_brand_id_fkey FOREIGN KEY (brand_id) REFERENCES public.brands(id) NOT VALID;


--
-- TOC entry 3367 (class 2606 OID 17606)
-- Name: product_brand product_brand_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_brand
    ADD CONSTRAINT product_brand_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id) NOT VALID;


--
-- TOC entry 3375 (class 2606 OID 17611)
-- Name: products product_category_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT product_category_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) NOT VALID;


--
-- TOC entry 3368 (class 2606 OID 17616)
-- Name: product_color product_color_color_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_color
    ADD CONSTRAINT product_color_color_id_fkey FOREIGN KEY (color_id) REFERENCES public.colors(id) NOT VALID;


--
-- TOC entry 3369 (class 2606 OID 17621)
-- Name: product_color product_color_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_color
    ADD CONSTRAINT product_color_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id) NOT VALID;


--
-- TOC entry 3371 (class 2606 OID 17626)
-- Name: product_sellers product_sellers_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_sellers
    ADD CONSTRAINT product_sellers_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id) NOT VALID;


--
-- TOC entry 3372 (class 2606 OID 17631)
-- Name: product_sellers product_sellers_seller_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_sellers
    ADD CONSTRAINT product_sellers_seller_id_fkey FOREIGN KEY (seller_id) REFERENCES public.sellers(id) NOT VALID;


--
-- TOC entry 3373 (class 2606 OID 17636)
-- Name: product_size product_size_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_size
    ADD CONSTRAINT product_size_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id) NOT VALID;


--
-- TOC entry 3374 (class 2606 OID 17641)
-- Name: product_size product_size_size_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_size
    ADD CONSTRAINT product_size_size_id_fkey FOREIGN KEY (size_id) REFERENCES public.size(id) NOT VALID;


--
-- TOC entry 3376 (class 2606 OID 17646)
-- Name: refund refund_order_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.refund
    ADD CONSTRAINT refund_order_fk FOREIGN KEY (order_return_id) REFERENCES public.order_returns(id) NOT VALID;


--
-- TOC entry 3359 (class 2606 OID 17651)
-- Name: order_returns return_order_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_returns
    ADD CONSTRAINT return_order_fk FOREIGN KEY (order_detail_id) REFERENCES public.order_details(id) NOT VALID;


--
-- TOC entry 3370 (class 2606 OID 17656)
-- Name: product_return return_order_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_return
    ADD CONSTRAINT return_order_fk FOREIGN KEY (order_return_id) REFERENCES public.order_returns(id) NOT VALID;


--
-- TOC entry 3377 (class 2606 OID 17661)
-- Name: shippers shipper_company_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shippers
    ADD CONSTRAINT shipper_company_fk FOREIGN KEY (cargo_company_id) REFERENCES public.cargo_companies(id) NOT VALID;


--
-- TOC entry 3363 (class 2606 OID 17666)
-- Name: orders shipping_address_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT shipping_address_fk FOREIGN KEY (shipping_address_id) REFERENCES public.addresses(id) NOT VALID;


--
-- TOC entry 3378 (class 2606 OID 17671)
-- Name: streets street_district_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.streets
    ADD CONSTRAINT street_district_fk FOREIGN KEY (district_id) REFERENCES public.districts(id) NOT VALID;


-- Completed on 2022-11-30 16:12:51

--
-- PostgreSQL database dump complete
--

