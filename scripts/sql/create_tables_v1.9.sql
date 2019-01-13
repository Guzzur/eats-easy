--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6 (Ubuntu 10.6-1.pgdg16.04+1)
-- Dumped by pg_dump version 11.1

-- Started on 2019-01-13 09:10:57

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 213 (class 1259 OID 8487751)
-- Name: dishes_type; Type: TABLE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE TABLE public.dishes_type (
    dish_id integer NOT NULL,
    dishes_type character varying NOT NULL
);


ALTER TABLE public.dishes_type OWNER TO fqrtxpjluhvled;

--
-- TOC entry 212 (class 1259 OID 8487749)
-- Name: Dishes_type_dish_id_seq; Type: SEQUENCE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE SEQUENCE public."Dishes_type_dish_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Dishes_type_dish_id_seq" OWNER TO fqrtxpjluhvled;

--
-- TOC entry 3918 (class 0 OID 0)
-- Dependencies: 212
-- Name: Dishes_type_dish_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fqrtxpjluhvled
--

ALTER SEQUENCE public."Dishes_type_dish_id_seq" OWNED BY public.dishes_type.dish_id;


--
-- TOC entry 233 (class 1259 OID 8725103)
-- Name: calls_for_waiter; Type: TABLE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE TABLE public.calls_for_waiter (
    call_id integer NOT NULL,
    table_id integer NOT NULL,
    rest_id integer NOT NULL,
    user_id integer NOT NULL,
    reason character varying,
    call_date date NOT NULL
);


ALTER TABLE public.calls_for_waiter OWNER TO fqrtxpjluhvled;

--
-- TOC entry 229 (class 1259 OID 8725095)
-- Name: calls_for_waiter_call_id_seq; Type: SEQUENCE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE SEQUENCE public.calls_for_waiter_call_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.calls_for_waiter_call_id_seq OWNER TO fqrtxpjluhvled;

--
-- TOC entry 3919 (class 0 OID 0)
-- Dependencies: 229
-- Name: calls_for_waiter_call_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fqrtxpjluhvled
--

ALTER SEQUENCE public.calls_for_waiter_call_id_seq OWNED BY public.calls_for_waiter.call_id;


--
-- TOC entry 231 (class 1259 OID 8725099)
-- Name: calls_for_waiter_rest_id_seq; Type: SEQUENCE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE SEQUENCE public.calls_for_waiter_rest_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.calls_for_waiter_rest_id_seq OWNER TO fqrtxpjluhvled;

--
-- TOC entry 3920 (class 0 OID 0)
-- Dependencies: 231
-- Name: calls_for_waiter_rest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fqrtxpjluhvled
--

ALTER SEQUENCE public.calls_for_waiter_rest_id_seq OWNED BY public.calls_for_waiter.rest_id;


--
-- TOC entry 230 (class 1259 OID 8725097)
-- Name: calls_for_waiter_table_id_seq; Type: SEQUENCE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE SEQUENCE public.calls_for_waiter_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.calls_for_waiter_table_id_seq OWNER TO fqrtxpjluhvled;

--
-- TOC entry 3921 (class 0 OID 0)
-- Dependencies: 230
-- Name: calls_for_waiter_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fqrtxpjluhvled
--

ALTER SEQUENCE public.calls_for_waiter_table_id_seq OWNED BY public.calls_for_waiter.table_id;


--
-- TOC entry 232 (class 1259 OID 8725101)
-- Name: calls_for_waiter_user_id_seq; Type: SEQUENCE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE SEQUENCE public.calls_for_waiter_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.calls_for_waiter_user_id_seq OWNER TO fqrtxpjluhvled;

--
-- TOC entry 3922 (class 0 OID 0)
-- Dependencies: 232
-- Name: calls_for_waiter_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fqrtxpjluhvled
--

ALTER SEQUENCE public.calls_for_waiter_user_id_seq OWNED BY public.calls_for_waiter.user_id;


--
-- TOC entry 239 (class 1259 OID 8725206)
-- Name: calls_resolved; Type: TABLE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE TABLE public.calls_resolved (
    call_resolve_id integer NOT NULL,
    employee_id integer NOT NULL,
    user_id integer NOT NULL,
    call_id integer NOT NULL,
    call_resolve_date date NOT NULL,
    rest_id integer NOT NULL
);


ALTER TABLE public.calls_resolved OWNER TO fqrtxpjluhvled;

--
-- TOC entry 237 (class 1259 OID 8725202)
-- Name: calls_resolved_call_id_seq; Type: SEQUENCE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE SEQUENCE public.calls_resolved_call_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.calls_resolved_call_id_seq OWNER TO fqrtxpjluhvled;

--
-- TOC entry 3923 (class 0 OID 0)
-- Dependencies: 237
-- Name: calls_resolved_call_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fqrtxpjluhvled
--

ALTER SEQUENCE public.calls_resolved_call_id_seq OWNED BY public.calls_resolved.call_id;


--
-- TOC entry 234 (class 1259 OID 8725196)
-- Name: calls_resolved_call_resolve_id_seq; Type: SEQUENCE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE SEQUENCE public.calls_resolved_call_resolve_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.calls_resolved_call_resolve_id_seq OWNER TO fqrtxpjluhvled;

--
-- TOC entry 3924 (class 0 OID 0)
-- Dependencies: 234
-- Name: calls_resolved_call_resolve_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fqrtxpjluhvled
--

ALTER SEQUENCE public.calls_resolved_call_resolve_id_seq OWNED BY public.calls_resolved.call_resolve_id;


--
-- TOC entry 235 (class 1259 OID 8725198)
-- Name: calls_resolved_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE SEQUENCE public.calls_resolved_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.calls_resolved_employee_id_seq OWNER TO fqrtxpjluhvled;

--
-- TOC entry 3925 (class 0 OID 0)
-- Dependencies: 235
-- Name: calls_resolved_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fqrtxpjluhvled
--

ALTER SEQUENCE public.calls_resolved_employee_id_seq OWNED BY public.calls_resolved.employee_id;


--
-- TOC entry 238 (class 1259 OID 8725204)
-- Name: calls_resolved_rest_id_seq; Type: SEQUENCE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE SEQUENCE public.calls_resolved_rest_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.calls_resolved_rest_id_seq OWNER TO fqrtxpjluhvled;

--
-- TOC entry 3926 (class 0 OID 0)
-- Dependencies: 238
-- Name: calls_resolved_rest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fqrtxpjluhvled
--

ALTER SEQUENCE public.calls_resolved_rest_id_seq OWNED BY public.calls_resolved.rest_id;


--
-- TOC entry 236 (class 1259 OID 8725200)
-- Name: calls_resolved_user_id_seq; Type: SEQUENCE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE SEQUENCE public.calls_resolved_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.calls_resolved_user_id_seq OWNER TO fqrtxpjluhvled;

--
-- TOC entry 3927 (class 0 OID 0)
-- Dependencies: 236
-- Name: calls_resolved_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fqrtxpjluhvled
--

ALTER SEQUENCE public.calls_resolved_user_id_seq OWNED BY public.calls_resolved.user_id;


--
-- TOC entry 201 (class 1259 OID 8181045)
-- Name: credit_cards; Type: TABLE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE TABLE public.credit_cards (
    card_id integer NOT NULL,
    card_number bigint NOT NULL,
    owner_name character varying NOT NULL,
    cvc integer NOT NULL,
    expires_on date NOT NULL
);


ALTER TABLE public.credit_cards OWNER TO fqrtxpjluhvled;

--
-- TOC entry 200 (class 1259 OID 8181043)
-- Name: credit_cards_card_id_seq; Type: SEQUENCE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE SEQUENCE public.credit_cards_card_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.credit_cards_card_id_seq OWNER TO fqrtxpjluhvled;

--
-- TOC entry 3928 (class 0 OID 0)
-- Dependencies: 200
-- Name: credit_cards_card_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fqrtxpjluhvled
--

ALTER SEQUENCE public.credit_cards_card_id_seq OWNED BY public.credit_cards.card_id;


--
-- TOC entry 199 (class 1259 OID 8180968)
-- Name: dishes; Type: TABLE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE TABLE public.dishes (
    dish_id integer NOT NULL,
    rest_id integer NOT NULL,
    price double precision NOT NULL,
    dish_name character varying NOT NULL,
    dish_description character varying,
    image_url character varying
);


ALTER TABLE public.dishes OWNER TO fqrtxpjluhvled;

--
-- TOC entry 198 (class 1259 OID 8180966)
-- Name: dishes_dish_id_seq; Type: SEQUENCE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE SEQUENCE public.dishes_dish_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dishes_dish_id_seq OWNER TO fqrtxpjluhvled;

--
-- TOC entry 3929 (class 0 OID 0)
-- Dependencies: 198
-- Name: dishes_dish_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fqrtxpjluhvled
--

ALTER SEQUENCE public.dishes_dish_id_seq OWNED BY public.dishes.dish_id;


--
-- TOC entry 209 (class 1259 OID 8181450)
-- Name: employees; Type: TABLE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE TABLE public.employees (
    employee_id integer NOT NULL,
    user_id integer NOT NULL,
    rest_id integer NOT NULL
);


ALTER TABLE public.employees OWNER TO fqrtxpjluhvled;

--
-- TOC entry 208 (class 1259 OID 8181448)
-- Name: employees_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE SEQUENCE public.employees_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employees_employee_id_seq OWNER TO fqrtxpjluhvled;

--
-- TOC entry 3930 (class 0 OID 0)
-- Dependencies: 208
-- Name: employees_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fqrtxpjluhvled
--

ALTER SEQUENCE public.employees_employee_id_seq OWNED BY public.employees.employee_id;


--
-- TOC entry 228 (class 1259 OID 8725072)
-- Name: order_items; Type: TABLE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE TABLE public.order_items (
    order_id integer NOT NULL,
    dish_id integer NOT NULL,
    quantity integer NOT NULL,
    subtotal double precision NOT NULL,
    rest_id integer NOT NULL
);


ALTER TABLE public.order_items OWNER TO fqrtxpjluhvled;

--
-- TOC entry 226 (class 1259 OID 8725068)
-- Name: order_items_dish_id_seq; Type: SEQUENCE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE SEQUENCE public.order_items_dish_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_items_dish_id_seq OWNER TO fqrtxpjluhvled;

--
-- TOC entry 3931 (class 0 OID 0)
-- Dependencies: 226
-- Name: order_items_dish_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fqrtxpjluhvled
--

ALTER SEQUENCE public.order_items_dish_id_seq OWNED BY public.order_items.dish_id;


--
-- TOC entry 225 (class 1259 OID 8725066)
-- Name: order_items_order_id_seq; Type: SEQUENCE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE SEQUENCE public.order_items_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_items_order_id_seq OWNER TO fqrtxpjluhvled;

--
-- TOC entry 3932 (class 0 OID 0)
-- Dependencies: 225
-- Name: order_items_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fqrtxpjluhvled
--

ALTER SEQUENCE public.order_items_order_id_seq OWNED BY public.order_items.order_id;


--
-- TOC entry 227 (class 1259 OID 8725070)
-- Name: order_items_rest_id_seq; Type: SEQUENCE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE SEQUENCE public.order_items_rest_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_items_rest_id_seq OWNER TO fqrtxpjluhvled;

--
-- TOC entry 3933 (class 0 OID 0)
-- Dependencies: 227
-- Name: order_items_rest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fqrtxpjluhvled
--

ALTER SEQUENCE public.order_items_rest_id_seq OWNED BY public.order_items.rest_id;


--
-- TOC entry 224 (class 1259 OID 8724035)
-- Name: ordersdata; Type: TABLE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE TABLE public.ordersdata (
    order_id integer NOT NULL,
    rest_id integer NOT NULL,
    order_status character varying NOT NULL,
    time_received character varying NOT NULL,
    time_delivered character varying,
    user_id integer NOT NULL,
    table_id integer NOT NULL
);


ALTER TABLE public.ordersdata OWNER TO fqrtxpjluhvled;

--
-- TOC entry 220 (class 1259 OID 8724027)
-- Name: ordersdata_order_id_seq; Type: SEQUENCE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE SEQUENCE public.ordersdata_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ordersdata_order_id_seq OWNER TO fqrtxpjluhvled;

--
-- TOC entry 3934 (class 0 OID 0)
-- Dependencies: 220
-- Name: ordersdata_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fqrtxpjluhvled
--

ALTER SEQUENCE public.ordersdata_order_id_seq OWNED BY public.ordersdata.order_id;


--
-- TOC entry 221 (class 1259 OID 8724029)
-- Name: ordersdata_rest_id_seq; Type: SEQUENCE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE SEQUENCE public.ordersdata_rest_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ordersdata_rest_id_seq OWNER TO fqrtxpjluhvled;

--
-- TOC entry 3935 (class 0 OID 0)
-- Dependencies: 221
-- Name: ordersdata_rest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fqrtxpjluhvled
--

ALTER SEQUENCE public.ordersdata_rest_id_seq OWNED BY public.ordersdata.rest_id;


--
-- TOC entry 223 (class 1259 OID 8724033)
-- Name: ordersdata_table_id_seq; Type: SEQUENCE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE SEQUENCE public.ordersdata_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ordersdata_table_id_seq OWNER TO fqrtxpjluhvled;

--
-- TOC entry 3936 (class 0 OID 0)
-- Dependencies: 223
-- Name: ordersdata_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fqrtxpjluhvled
--

ALTER SEQUENCE public.ordersdata_table_id_seq OWNED BY public.ordersdata.table_id;


--
-- TOC entry 222 (class 1259 OID 8724031)
-- Name: ordersdata_user_id_seq; Type: SEQUENCE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE SEQUENCE public.ordersdata_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ordersdata_user_id_seq OWNER TO fqrtxpjluhvled;

--
-- TOC entry 3937 (class 0 OID 0)
-- Dependencies: 222
-- Name: ordersdata_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fqrtxpjluhvled
--

ALTER SEQUENCE public.ordersdata_user_id_seq OWNED BY public.ordersdata.user_id;


--
-- TOC entry 244 (class 1259 OID 8725244)
-- Name: payments; Type: TABLE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE TABLE public.payments (
    payment_id integer NOT NULL,
    amount double precision NOT NULL,
    order_id integer NOT NULL,
    user_id integer NOT NULL,
    rest_id integer NOT NULL,
    date_accepted date NOT NULL
);


ALTER TABLE public.payments OWNER TO fqrtxpjluhvled;

--
-- TOC entry 241 (class 1259 OID 8725238)
-- Name: payments_order_id_seq; Type: SEQUENCE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE SEQUENCE public.payments_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payments_order_id_seq OWNER TO fqrtxpjluhvled;

--
-- TOC entry 3938 (class 0 OID 0)
-- Dependencies: 241
-- Name: payments_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fqrtxpjluhvled
--

ALTER SEQUENCE public.payments_order_id_seq OWNED BY public.payments.order_id;


--
-- TOC entry 240 (class 1259 OID 8725236)
-- Name: payments_payment_id_seq; Type: SEQUENCE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE SEQUENCE public.payments_payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payments_payment_id_seq OWNER TO fqrtxpjluhvled;

--
-- TOC entry 3939 (class 0 OID 0)
-- Dependencies: 240
-- Name: payments_payment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fqrtxpjluhvled
--

ALTER SEQUENCE public.payments_payment_id_seq OWNED BY public.payments.payment_id;


--
-- TOC entry 243 (class 1259 OID 8725242)
-- Name: payments_rest_id_seq; Type: SEQUENCE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE SEQUENCE public.payments_rest_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payments_rest_id_seq OWNER TO fqrtxpjluhvled;

--
-- TOC entry 3940 (class 0 OID 0)
-- Dependencies: 243
-- Name: payments_rest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fqrtxpjluhvled
--

ALTER SEQUENCE public.payments_rest_id_seq OWNED BY public.payments.rest_id;


--
-- TOC entry 242 (class 1259 OID 8725240)
-- Name: payments_user_id_seq; Type: SEQUENCE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE SEQUENCE public.payments_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payments_user_id_seq OWNER TO fqrtxpjluhvled;

--
-- TOC entry 3941 (class 0 OID 0)
-- Dependencies: 242
-- Name: payments_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fqrtxpjluhvled
--

ALTER SEQUENCE public.payments_user_id_seq OWNED BY public.payments.user_id;


--
-- TOC entry 197 (class 1259 OID 8180933)
-- Name: restaurants; Type: TABLE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE TABLE public.restaurants (
    rest_id integer NOT NULL,
    rest_name character varying NOT NULL,
    gps_lat double precision,
    gps_lon double precision,
    rest_address character varying,
    rest_type character varying
);


ALTER TABLE public.restaurants OWNER TO fqrtxpjluhvled;

--
-- TOC entry 196 (class 1259 OID 8180931)
-- Name: restaurants_rest_id_seq; Type: SEQUENCE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE SEQUENCE public.restaurants_rest_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.restaurants_rest_id_seq OWNER TO fqrtxpjluhvled;

--
-- TOC entry 3942 (class 0 OID 0)
-- Dependencies: 196
-- Name: restaurants_rest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fqrtxpjluhvled
--

ALTER SEQUENCE public.restaurants_rest_id_seq OWNED BY public.restaurants.rest_id;


--
-- TOC entry 205 (class 1259 OID 8181079)
-- Name: roles; Type: TABLE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE TABLE public.roles (
    role_id integer NOT NULL,
    role_name character varying NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.roles OWNER TO fqrtxpjluhvled;

--
-- TOC entry 204 (class 1259 OID 8181077)
-- Name: roles_role_id_seq; Type: SEQUENCE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE SEQUENCE public.roles_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_role_id_seq OWNER TO fqrtxpjluhvled;

--
-- TOC entry 3943 (class 0 OID 0)
-- Dependencies: 204
-- Name: roles_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fqrtxpjluhvled
--

ALTER SEQUENCE public.roles_role_id_seq OWNED BY public.roles.role_id;


--
-- TOC entry 211 (class 1259 OID 8181472)
-- Name: shifts; Type: TABLE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE TABLE public.shifts (
    shift_id integer NOT NULL,
    rest_id integer NOT NULL,
    starts_at date NOT NULL,
    ends_at date NOT NULL
);


ALTER TABLE public.shifts OWNER TO fqrtxpjluhvled;

--
-- TOC entry 210 (class 1259 OID 8181470)
-- Name: shifts_shift_id_seq; Type: SEQUENCE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE SEQUENCE public.shifts_shift_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shifts_shift_id_seq OWNER TO fqrtxpjluhvled;

--
-- TOC entry 3944 (class 0 OID 0)
-- Dependencies: 210
-- Name: shifts_shift_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fqrtxpjluhvled
--

ALTER SEQUENCE public.shifts_shift_id_seq OWNED BY public.shifts.shift_id;


--
-- TOC entry 207 (class 1259 OID 8181248)
-- Name: tablesdata; Type: TABLE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE TABLE public.tablesdata (
    table_id integer NOT NULL,
    rest_id integer NOT NULL,
    table_code_name character varying
);


ALTER TABLE public.tablesdata OWNER TO fqrtxpjluhvled;

--
-- TOC entry 206 (class 1259 OID 8181246)
-- Name: tablesdata_table_id_seq; Type: SEQUENCE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE SEQUENCE public.tablesdata_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tablesdata_table_id_seq OWNER TO fqrtxpjluhvled;

--
-- TOC entry 3945 (class 0 OID 0)
-- Dependencies: 206
-- Name: tablesdata_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fqrtxpjluhvled
--

ALTER SEQUENCE public.tablesdata_table_id_seq OWNED BY public.tablesdata.table_id;


--
-- TOC entry 203 (class 1259 OID 8181062)
-- Name: users; Type: TABLE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_name character varying NOT NULL,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL,
    email character varying,
    phone bigint,
    hashed_passwd character varying NOT NULL
);


ALTER TABLE public.users OWNER TO fqrtxpjluhvled;

--
-- TOC entry 216 (class 1259 OID 8723939)
-- Name: users_credit_cards; Type: TABLE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE TABLE public.users_credit_cards (
    card_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.users_credit_cards OWNER TO fqrtxpjluhvled;

--
-- TOC entry 214 (class 1259 OID 8723935)
-- Name: users_credit_cards_card_id_seq; Type: SEQUENCE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE SEQUENCE public.users_credit_cards_card_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_credit_cards_card_id_seq OWNER TO fqrtxpjluhvled;

--
-- TOC entry 3946 (class 0 OID 0)
-- Dependencies: 214
-- Name: users_credit_cards_card_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fqrtxpjluhvled
--

ALTER SEQUENCE public.users_credit_cards_card_id_seq OWNED BY public.users_credit_cards.card_id;


--
-- TOC entry 215 (class 1259 OID 8723937)
-- Name: users_credit_cards_user_id_seq; Type: SEQUENCE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE SEQUENCE public.users_credit_cards_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_credit_cards_user_id_seq OWNER TO fqrtxpjluhvled;

--
-- TOC entry 3947 (class 0 OID 0)
-- Dependencies: 215
-- Name: users_credit_cards_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fqrtxpjluhvled
--

ALTER SEQUENCE public.users_credit_cards_user_id_seq OWNED BY public.users_credit_cards.user_id;


--
-- TOC entry 202 (class 1259 OID 8181060)
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO fqrtxpjluhvled;

--
-- TOC entry 3948 (class 0 OID 0)
-- Dependencies: 202
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fqrtxpjluhvled
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- TOC entry 219 (class 1259 OID 8723978)
-- Name: working; Type: TABLE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE TABLE public.working (
    employee_id integer NOT NULL,
    shift_id integer NOT NULL
);


ALTER TABLE public.working OWNER TO fqrtxpjluhvled;

--
-- TOC entry 217 (class 1259 OID 8723974)
-- Name: working_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE SEQUENCE public.working_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.working_employee_id_seq OWNER TO fqrtxpjluhvled;

--
-- TOC entry 3949 (class 0 OID 0)
-- Dependencies: 217
-- Name: working_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fqrtxpjluhvled
--

ALTER SEQUENCE public.working_employee_id_seq OWNED BY public.working.employee_id;


--
-- TOC entry 218 (class 1259 OID 8723976)
-- Name: working_shift_id_seq; Type: SEQUENCE; Schema: public; Owner: fqrtxpjluhvled
--

CREATE SEQUENCE public.working_shift_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.working_shift_id_seq OWNER TO fqrtxpjluhvled;

--
-- TOC entry 3950 (class 0 OID 0)
-- Dependencies: 218
-- Name: working_shift_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fqrtxpjluhvled
--

ALTER SEQUENCE public.working_shift_id_seq OWNED BY public.working.shift_id;


--
-- TOC entry 3707 (class 2604 OID 8725106)
-- Name: calls_for_waiter call_id; Type: DEFAULT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.calls_for_waiter ALTER COLUMN call_id SET DEFAULT nextval('public.calls_for_waiter_call_id_seq'::regclass);


--
-- TOC entry 3708 (class 2604 OID 8725107)
-- Name: calls_for_waiter table_id; Type: DEFAULT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.calls_for_waiter ALTER COLUMN table_id SET DEFAULT nextval('public.calls_for_waiter_table_id_seq'::regclass);


--
-- TOC entry 3709 (class 2604 OID 8725108)
-- Name: calls_for_waiter rest_id; Type: DEFAULT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.calls_for_waiter ALTER COLUMN rest_id SET DEFAULT nextval('public.calls_for_waiter_rest_id_seq'::regclass);


--
-- TOC entry 3710 (class 2604 OID 8725109)
-- Name: calls_for_waiter user_id; Type: DEFAULT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.calls_for_waiter ALTER COLUMN user_id SET DEFAULT nextval('public.calls_for_waiter_user_id_seq'::regclass);


--
-- TOC entry 3711 (class 2604 OID 8725209)
-- Name: calls_resolved call_resolve_id; Type: DEFAULT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.calls_resolved ALTER COLUMN call_resolve_id SET DEFAULT nextval('public.calls_resolved_call_resolve_id_seq'::regclass);


--
-- TOC entry 3712 (class 2604 OID 8725210)
-- Name: calls_resolved employee_id; Type: DEFAULT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.calls_resolved ALTER COLUMN employee_id SET DEFAULT nextval('public.calls_resolved_employee_id_seq'::regclass);


--
-- TOC entry 3713 (class 2604 OID 8725211)
-- Name: calls_resolved user_id; Type: DEFAULT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.calls_resolved ALTER COLUMN user_id SET DEFAULT nextval('public.calls_resolved_user_id_seq'::regclass);


--
-- TOC entry 3714 (class 2604 OID 8725212)
-- Name: calls_resolved call_id; Type: DEFAULT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.calls_resolved ALTER COLUMN call_id SET DEFAULT nextval('public.calls_resolved_call_id_seq'::regclass);


--
-- TOC entry 3715 (class 2604 OID 8725213)
-- Name: calls_resolved rest_id; Type: DEFAULT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.calls_resolved ALTER COLUMN rest_id SET DEFAULT nextval('public.calls_resolved_rest_id_seq'::regclass);


--
-- TOC entry 3689 (class 2604 OID 8181048)
-- Name: credit_cards card_id; Type: DEFAULT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.credit_cards ALTER COLUMN card_id SET DEFAULT nextval('public.credit_cards_card_id_seq'::regclass);


--
-- TOC entry 3688 (class 2604 OID 8180971)
-- Name: dishes dish_id; Type: DEFAULT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.dishes ALTER COLUMN dish_id SET DEFAULT nextval('public.dishes_dish_id_seq'::regclass);


--
-- TOC entry 3695 (class 2604 OID 8487754)
-- Name: dishes_type dish_id; Type: DEFAULT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.dishes_type ALTER COLUMN dish_id SET DEFAULT nextval('public."Dishes_type_dish_id_seq"'::regclass);


--
-- TOC entry 3693 (class 2604 OID 8181453)
-- Name: employees employee_id; Type: DEFAULT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.employees ALTER COLUMN employee_id SET DEFAULT nextval('public.employees_employee_id_seq'::regclass);


--
-- TOC entry 3704 (class 2604 OID 8725075)
-- Name: order_items order_id; Type: DEFAULT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.order_items ALTER COLUMN order_id SET DEFAULT nextval('public.order_items_order_id_seq'::regclass);


--
-- TOC entry 3705 (class 2604 OID 8725076)
-- Name: order_items dish_id; Type: DEFAULT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.order_items ALTER COLUMN dish_id SET DEFAULT nextval('public.order_items_dish_id_seq'::regclass);


--
-- TOC entry 3706 (class 2604 OID 8725077)
-- Name: order_items rest_id; Type: DEFAULT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.order_items ALTER COLUMN rest_id SET DEFAULT nextval('public.order_items_rest_id_seq'::regclass);


--
-- TOC entry 3700 (class 2604 OID 8724038)
-- Name: ordersdata order_id; Type: DEFAULT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.ordersdata ALTER COLUMN order_id SET DEFAULT nextval('public.ordersdata_order_id_seq'::regclass);


--
-- TOC entry 3701 (class 2604 OID 8724039)
-- Name: ordersdata rest_id; Type: DEFAULT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.ordersdata ALTER COLUMN rest_id SET DEFAULT nextval('public.ordersdata_rest_id_seq'::regclass);


--
-- TOC entry 3702 (class 2604 OID 8724040)
-- Name: ordersdata user_id; Type: DEFAULT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.ordersdata ALTER COLUMN user_id SET DEFAULT nextval('public.ordersdata_user_id_seq'::regclass);


--
-- TOC entry 3703 (class 2604 OID 8724041)
-- Name: ordersdata table_id; Type: DEFAULT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.ordersdata ALTER COLUMN table_id SET DEFAULT nextval('public.ordersdata_table_id_seq'::regclass);


--
-- TOC entry 3716 (class 2604 OID 8725247)
-- Name: payments payment_id; Type: DEFAULT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.payments ALTER COLUMN payment_id SET DEFAULT nextval('public.payments_payment_id_seq'::regclass);


--
-- TOC entry 3717 (class 2604 OID 8725248)
-- Name: payments order_id; Type: DEFAULT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.payments ALTER COLUMN order_id SET DEFAULT nextval('public.payments_order_id_seq'::regclass);


--
-- TOC entry 3718 (class 2604 OID 8725249)
-- Name: payments user_id; Type: DEFAULT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.payments ALTER COLUMN user_id SET DEFAULT nextval('public.payments_user_id_seq'::regclass);


--
-- TOC entry 3719 (class 2604 OID 8725250)
-- Name: payments rest_id; Type: DEFAULT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.payments ALTER COLUMN rest_id SET DEFAULT nextval('public.payments_rest_id_seq'::regclass);


--
-- TOC entry 3687 (class 2604 OID 8180936)
-- Name: restaurants rest_id; Type: DEFAULT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.restaurants ALTER COLUMN rest_id SET DEFAULT nextval('public.restaurants_rest_id_seq'::regclass);


--
-- TOC entry 3691 (class 2604 OID 8181082)
-- Name: roles role_id; Type: DEFAULT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.roles ALTER COLUMN role_id SET DEFAULT nextval('public.roles_role_id_seq'::regclass);


--
-- TOC entry 3694 (class 2604 OID 8181475)
-- Name: shifts shift_id; Type: DEFAULT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.shifts ALTER COLUMN shift_id SET DEFAULT nextval('public.shifts_shift_id_seq'::regclass);


--
-- TOC entry 3692 (class 2604 OID 8181251)
-- Name: tablesdata table_id; Type: DEFAULT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.tablesdata ALTER COLUMN table_id SET DEFAULT nextval('public.tablesdata_table_id_seq'::regclass);


--
-- TOC entry 3690 (class 2604 OID 8181065)
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- TOC entry 3696 (class 2604 OID 8723942)
-- Name: users_credit_cards card_id; Type: DEFAULT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.users_credit_cards ALTER COLUMN card_id SET DEFAULT nextval('public.users_credit_cards_card_id_seq'::regclass);


--
-- TOC entry 3697 (class 2604 OID 8723943)
-- Name: users_credit_cards user_id; Type: DEFAULT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.users_credit_cards ALTER COLUMN user_id SET DEFAULT nextval('public.users_credit_cards_user_id_seq'::regclass);


--
-- TOC entry 3698 (class 2604 OID 8723981)
-- Name: working employee_id; Type: DEFAULT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.working ALTER COLUMN employee_id SET DEFAULT nextval('public.working_employee_id_seq'::regclass);


--
-- TOC entry 3699 (class 2604 OID 8723982)
-- Name: working shift_id; Type: DEFAULT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.working ALTER COLUMN shift_id SET DEFAULT nextval('public.working_shift_id_seq'::regclass);


--
-- TOC entry 3757 (class 2606 OID 8725195)
-- Name: calls_for_waiter calls_for_waiter_call_id_key; Type: CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.calls_for_waiter
    ADD CONSTRAINT calls_for_waiter_call_id_key UNIQUE (call_id);


--
-- TOC entry 3759 (class 2606 OID 8725114)
-- Name: calls_for_waiter calls_for_waiter_pkey; Type: CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.calls_for_waiter
    ADD CONSTRAINT calls_for_waiter_pkey PRIMARY KEY (call_id, rest_id);


--
-- TOC entry 3761 (class 2606 OID 8725215)
-- Name: calls_resolved calls_resolved_pkey; Type: CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.calls_resolved
    ADD CONSTRAINT calls_resolved_pkey PRIMARY KEY (call_resolve_id, rest_id);


--
-- TOC entry 3727 (class 2606 OID 8723934)
-- Name: credit_cards credit_cards_card_id_key; Type: CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.credit_cards
    ADD CONSTRAINT credit_cards_card_id_key UNIQUE (card_id);


--
-- TOC entry 3729 (class 2606 OID 8181053)
-- Name: credit_cards credit_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.credit_cards
    ADD CONSTRAINT credit_cards_pkey PRIMARY KEY (card_id, card_number);


--
-- TOC entry 3745 (class 2606 OID 8487759)
-- Name: dishes_type dish_type_pkey; Type: CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.dishes_type
    ADD CONSTRAINT dish_type_pkey PRIMARY KEY (dish_id, dishes_type);


--
-- TOC entry 3723 (class 2606 OID 8487748)
-- Name: dishes dishes_dish_id_key; Type: CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.dishes
    ADD CONSTRAINT dishes_dish_id_key UNIQUE (dish_id);


--
-- TOC entry 3725 (class 2606 OID 8180976)
-- Name: dishes dishes_pkey; Type: CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.dishes
    ADD CONSTRAINT dishes_pkey PRIMARY KEY (dish_id, rest_id);


--
-- TOC entry 3739 (class 2606 OID 8181455)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employee_id);


--
-- TOC entry 3755 (class 2606 OID 8725079)
-- Name: order_items order_items_pkey; Type: CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (order_id, dish_id, rest_id);


--
-- TOC entry 3751 (class 2606 OID 8725065)
-- Name: ordersdata ordersdata_order_id_key; Type: CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.ordersdata
    ADD CONSTRAINT ordersdata_order_id_key UNIQUE (order_id);


--
-- TOC entry 3753 (class 2606 OID 8724046)
-- Name: ordersdata ordersdata_pkey; Type: CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.ordersdata
    ADD CONSTRAINT ordersdata_pkey PRIMARY KEY (order_id, rest_id);


--
-- TOC entry 3763 (class 2606 OID 8725252)
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (payment_id, order_id);


--
-- TOC entry 3721 (class 2606 OID 8180941)
-- Name: restaurants restaurants_pkey; Type: CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.restaurants
    ADD CONSTRAINT restaurants_pkey PRIMARY KEY (rest_id);


--
-- TOC entry 3733 (class 2606 OID 8181087)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (role_id, user_id);


--
-- TOC entry 3741 (class 2606 OID 8181477)
-- Name: shifts shifts_pkey; Type: CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.shifts
    ADD CONSTRAINT shifts_pkey PRIMARY KEY (shift_id, rest_id);


--
-- TOC entry 3743 (class 2606 OID 8723973)
-- Name: shifts shifts_shift_id_key; Type: CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.shifts
    ADD CONSTRAINT shifts_shift_id_key UNIQUE (shift_id);


--
-- TOC entry 3735 (class 2606 OID 8181256)
-- Name: tablesdata tablesdata_pkey; Type: CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.tablesdata
    ADD CONSTRAINT tablesdata_pkey PRIMARY KEY (table_id, rest_id);


--
-- TOC entry 3737 (class 2606 OID 8724026)
-- Name: tablesdata tablesdata_table_id_key; Type: CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.tablesdata
    ADD CONSTRAINT tablesdata_table_id_key UNIQUE (table_id);


--
-- TOC entry 3747 (class 2606 OID 8723945)
-- Name: users_credit_cards users_credit_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.users_credit_cards
    ADD CONSTRAINT users_credit_cards_pkey PRIMARY KEY (card_id, user_id);


--
-- TOC entry 3731 (class 2606 OID 8181070)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- TOC entry 3749 (class 2606 OID 8723984)
-- Name: working working_pkey; Type: CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.working
    ADD CONSTRAINT working_pkey PRIMARY KEY (employee_id, shift_id);


--
-- TOC entry 3782 (class 2606 OID 8725120)
-- Name: calls_for_waiter calls_for_waiter_rest_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.calls_for_waiter
    ADD CONSTRAINT calls_for_waiter_rest_id_fkey FOREIGN KEY (rest_id) REFERENCES public.restaurants(rest_id);


--
-- TOC entry 3781 (class 2606 OID 8725115)
-- Name: calls_for_waiter calls_for_waiter_table_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.calls_for_waiter
    ADD CONSTRAINT calls_for_waiter_table_id_fkey FOREIGN KEY (table_id) REFERENCES public.tablesdata(table_id);


--
-- TOC entry 3783 (class 2606 OID 8725125)
-- Name: calls_for_waiter calls_for_waiter_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.calls_for_waiter
    ADD CONSTRAINT calls_for_waiter_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- TOC entry 3784 (class 2606 OID 8725216)
-- Name: calls_resolved calls_resolved_call_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.calls_resolved
    ADD CONSTRAINT calls_resolved_call_id_fkey FOREIGN KEY (call_id) REFERENCES public.calls_for_waiter(call_id);


--
-- TOC entry 3785 (class 2606 OID 8725221)
-- Name: calls_resolved calls_resolved_employee_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.calls_resolved
    ADD CONSTRAINT calls_resolved_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public.employees(employee_id);


--
-- TOC entry 3787 (class 2606 OID 8725231)
-- Name: calls_resolved calls_resolved_rest_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.calls_resolved
    ADD CONSTRAINT calls_resolved_rest_id_fkey FOREIGN KEY (rest_id) REFERENCES public.restaurants(rest_id);


--
-- TOC entry 3786 (class 2606 OID 8725226)
-- Name: calls_resolved calls_resolved_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.calls_resolved
    ADD CONSTRAINT calls_resolved_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- TOC entry 3771 (class 2606 OID 8723946)
-- Name: users_credit_cards card_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.users_credit_cards
    ADD CONSTRAINT card_id_fkey FOREIGN KEY (card_id) REFERENCES public.credit_cards(card_id);


--
-- TOC entry 3770 (class 2606 OID 8487760)
-- Name: dishes_type dish_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.dishes_type
    ADD CONSTRAINT dish_id_fkey FOREIGN KEY (dish_id) REFERENCES public.dishes(dish_id);


--
-- TOC entry 3764 (class 2606 OID 8180977)
-- Name: dishes dishes_rest_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.dishes
    ADD CONSTRAINT dishes_rest_id_fkey FOREIGN KEY (rest_id) REFERENCES public.restaurants(rest_id);


--
-- TOC entry 3773 (class 2606 OID 8723985)
-- Name: working employee_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.working
    ADD CONSTRAINT employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public.employees(employee_id);


--
-- TOC entry 3768 (class 2606 OID 8181461)
-- Name: employees employees_rest_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_rest_id_fkey FOREIGN KEY (rest_id) REFERENCES public.restaurants(rest_id);


--
-- TOC entry 3767 (class 2606 OID 8181456)
-- Name: employees employees_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- TOC entry 3779 (class 2606 OID 8725085)
-- Name: order_items order_items_dish_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_dish_id_fkey FOREIGN KEY (dish_id) REFERENCES public.dishes(dish_id);


--
-- TOC entry 3778 (class 2606 OID 8725080)
-- Name: order_items order_items_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.ordersdata(order_id);


--
-- TOC entry 3780 (class 2606 OID 8725090)
-- Name: order_items order_items_rest_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_rest_id_fkey FOREIGN KEY (rest_id) REFERENCES public.restaurants(rest_id);


--
-- TOC entry 3775 (class 2606 OID 8724047)
-- Name: ordersdata ordersdata_rest_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.ordersdata
    ADD CONSTRAINT ordersdata_rest_id_fkey FOREIGN KEY (rest_id) REFERENCES public.restaurants(rest_id);


--
-- TOC entry 3777 (class 2606 OID 8724057)
-- Name: ordersdata ordersdata_table_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.ordersdata
    ADD CONSTRAINT ordersdata_table_id_fkey FOREIGN KEY (table_id) REFERENCES public.tablesdata(table_id);


--
-- TOC entry 3776 (class 2606 OID 8724052)
-- Name: ordersdata ordersdata_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.ordersdata
    ADD CONSTRAINT ordersdata_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- TOC entry 3788 (class 2606 OID 8725253)
-- Name: payments payments_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.ordersdata(order_id);


--
-- TOC entry 3790 (class 2606 OID 8725263)
-- Name: payments payments_rest_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_rest_id_fkey FOREIGN KEY (rest_id) REFERENCES public.restaurants(rest_id);


--
-- TOC entry 3789 (class 2606 OID 8725258)
-- Name: payments payments_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- TOC entry 3765 (class 2606 OID 8181088)
-- Name: roles roles_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- TOC entry 3774 (class 2606 OID 8723990)
-- Name: working shift_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.working
    ADD CONSTRAINT shift_id_fkey FOREIGN KEY (shift_id) REFERENCES public.shifts(shift_id);


--
-- TOC entry 3769 (class 2606 OID 8181478)
-- Name: shifts shifts_rest_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.shifts
    ADD CONSTRAINT shifts_rest_id_fkey FOREIGN KEY (rest_id) REFERENCES public.restaurants(rest_id);


--
-- TOC entry 3766 (class 2606 OID 8181257)
-- Name: tablesdata tablesdata_rest_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.tablesdata
    ADD CONSTRAINT tablesdata_rest_id_fkey FOREIGN KEY (rest_id) REFERENCES public.restaurants(rest_id);


--
-- TOC entry 3772 (class 2606 OID 8723951)
-- Name: users_credit_cards user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: fqrtxpjluhvled
--

ALTER TABLE ONLY public.users_credit_cards
    ADD CONSTRAINT user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- TOC entry 3917 (class 0 OID 0)
-- Dependencies: 722
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO fqrtxpjluhvled;


-- Completed on 2019-01-13 09:11:41

--
-- PostgreSQL database dump complete
--

