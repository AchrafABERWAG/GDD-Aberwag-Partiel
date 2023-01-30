--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

-- Started on 2023-01-30 16:46:06

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

DROP DATABASE partiel;
--
-- TOC entry 3352 (class 1262 OID 33628)
-- Name: partiel; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE partiel WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'French_France.1252';


ALTER DATABASE partiel OWNER TO postgres;

\connect partiel

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

--
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 3353 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 214 (class 1259 OID 34007)
-- Name: billing; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.billing (
    id integer NOT NULL,
    total character varying(255) NOT NULL,
    billing_date date NOT NULL
);


ALTER TABLE public.billing OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 33974)
-- Name: client; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.client (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    first_name character varying(255),
    last_name character varying(255) NOT NULL,
    phone character varying(255) NOT NULL,
    arrival_date date NOT NULL,
    date_of_departure date NOT NULL,
    number_of_people integer,
    budget integer NOT NULL
);


ALTER TABLE public.client OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 33993)
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee (
    id integer NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    phone character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    salary integer NOT NULL,
    hire_date date NOT NULL,
    job character varying(255) NOT NULL
);


ALTER TABLE public.employee OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 34012)
-- Name: hotels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hotels (
    id integer NOT NULL,
    name_hotel character varying(255) NOT NULL,
    localisation character varying(255) NOT NULL
);


ALTER TABLE public.hotels OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 33988)
-- Name: reservation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reservation (
    id integer NOT NULL,
    date_of_departure date NOT NULL,
    arrival_date date NOT NULL,
    date_of_reservation date NOT NULL
);


ALTER TABLE public.reservation OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 33981)
-- Name: room; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.room (
    id integer NOT NULL,
    availablity character varying(255) NOT NULL,
    type_room character varying(255) NOT NULL,
    price integer NOT NULL,
    stage character varying(255) NOT NULL,
    bath integer NOT NULL,
    shower integer NOT NULL,
    wc integer NOT NULL,
    bed character varying(255) NOT NULL
);


ALTER TABLE public.room OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 34000)
-- Name: service; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.service (
    id integer NOT NULL,
    description character varying(255) NOT NULL,
    price integer NOT NULL,
    category character varying(255) NOT NULL,
    date_of_departure date NOT NULL,
    arrival_date date NOT NULL
);


ALTER TABLE public.service OWNER TO postgres;

--
-- TOC entry 3345 (class 0 OID 34007)
-- Dependencies: 214
-- Data for Name: billing; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.billing VALUES (1, '1000', '2022-12-01');
INSERT INTO public.billing VALUES (2, '900', '2022-12-02');
INSERT INTO public.billing VALUES (3, '800', '2022-12-03');
INSERT INTO public.billing VALUES (4, '700', '2022-12-04');
INSERT INTO public.billing VALUES (5, '600', '2022-12-05');
INSERT INTO public.billing VALUES (6, '500', '2022-12-06');
INSERT INTO public.billing VALUES (7, '400', '2022-12-07');
INSERT INTO public.billing VALUES (8, '300', '2022-12-08');
INSERT INTO public.billing VALUES (9, '200', '2022-12-09');
INSERT INTO public.billing VALUES (10, '100', '2022-12-10');
INSERT INTO public.billing VALUES (11, '900', '2022-12-11');
INSERT INTO public.billing VALUES (12, '800', '2022-12-12');
INSERT INTO public.billing VALUES (13, '700', '2022-12-13');
INSERT INTO public.billing VALUES (14, '600', '2022-12-14');


--
-- TOC entry 3340 (class 0 OID 33974)
-- Dependencies: 209
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.client VALUES (1, 'john.doe@email.com', 'John', 'Doe', '555-555-5555', '2022-10-01', '2022-10-10', 4, 2000);
INSERT INTO public.client VALUES (2, 'jane.doe@email.com', 'Jane', 'Doe', '555-555-5556', '2022-11-01', '2022-11-10', 2, 1000);
INSERT INTO public.client VALUES (3, 'bob.smith@email.com', 'Bob', 'Smith', '555-555-5557', '2022-12-01', '2022-12-10', 3, 1500);
INSERT INTO public.client VALUES (4, 'alice.johnson@email.com', 'Alice', 'Johnson', '555-555-5558', '2023-01-01', '2023-01-10', 1, 800);
INSERT INTO public.client VALUES (5, 'mike.williams@email.com', 'Mike', 'Williams', '555-555-5559', '2023-02-01', '2023-02-10', 2, 900);
INSERT INTO public.client VALUES (6, 'sarah.jones@email.com', 'Sarah', 'Jones', '555-555-5560', '2023-03-01', '2023-03-10', 4, 2000);
INSERT INTO public.client VALUES (7, 'dave.brown@email.com', 'Dave', 'Brown', '555-555-5561', '2023-04-01', '2023-04-10', 3, 1700);
INSERT INTO public.client VALUES (8, 'jennifer.davis@email.com', 'Jennifer', 'Davis', '555-555-5562', '2023-05-01', '2023-05-10', 2, 1100);
INSERT INTO public.client VALUES (9, 'chris.garcia@email.com', 'Chris', 'Garcia', '555-555-5563', '2023-06-01', '2023-06-10', 4, 2500);
INSERT INTO public.client VALUES (10, 'jessica.martin@email.com', 'Jessica', 'Martin', '555-555-5564', '2023-07-01', '2023-07-10', 3, 2000);
INSERT INTO public.client VALUES (11, 'william.taylor@email.com', 'William', 'Taylor', '555-555-5565', '2023-08-01', '2023-08-10', 2, 1500);
INSERT INTO public.client VALUES (12, 'ashley.thomas@email.com', 'Ashley', 'Thomas', '555-555-5566', '2023-09-01', '2023-09-10', 4, 3000);
INSERT INTO public.client VALUES (13, 'jason.jackson@email.com', 'Jason', 'Jackson', '555-555-5567', '2023-10-01', '2023-10-10', 3, 2000);
INSERT INTO public.client VALUES (14, 'samantha.white@email.com', 'Samantha', 'White', '555-555-5568', '2023-11-01', '2023-11-10', 2, 1000);


--
-- TOC entry 3343 (class 0 OID 33993)
-- Dependencies: 212
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.employee VALUES (1, 'John', 'Doe', '123456789', '1 Main St', 5000, '2022-01-01', 'Manager');
INSERT INTO public.employee VALUES (2, 'Jane', 'Doe', '987654321', '2 Main St', 6000, '2022-02-01', 'Assistant Manager');
INSERT INTO public.employee VALUES (3, 'Bob', 'Smith', '123456788', '3 Main St', 4500, '2022-03-01', 'Receptionist');
INSERT INTO public.employee VALUES (4, 'Alice', 'Johnson', '987654322', '4 Main St', 5000, '2022-04-01', 'Housekeeper');
INSERT INTO public.employee VALUES (5, 'Charlie', 'Brown', '123456787', '5 Main St', 6000, '2022-05-01', 'Chef');
INSERT INTO public.employee VALUES (6, 'Emily', 'Davis', '987654323', '6 Main St', 5000, '2022-06-01', 'Waitress');
INSERT INTO public.employee VALUES (7, 'Daniel', 'Miller', '123456786', '7 Main St', 6000, '2022-07-01', 'Bartender');
INSERT INTO public.employee VALUES (8, 'Emma', 'Wilson', '987654324', '8 Main St', 6000, '2022-08-01', 'Barista');
INSERT INTO public.employee VALUES (9, 'Michael', 'Anderson', '123456785', '9 Main St', 5000, '2022-09-01', 'Security');
INSERT INTO public.employee VALUES (10, 'Olivia', 'Thomas', '987654325', '10 Main St', 6000, '2022-10-01', 'Driver');
INSERT INTO public.employee VALUES (11, 'David', 'Jackson', '123456784', '11 Main St', 5000, '2022-11-01', 'Maintenance');
INSERT INTO public.employee VALUES (12, 'Ava', 'White', '987654326', '12 Main St', 6000, '2022-12-01', 'Gardener');
INSERT INTO public.employee VALUES (13, 'James', 'Harris', '123456783', '13 Main St', 5000, '2023-01-01', 'Janitor');
INSERT INTO public.employee VALUES (14, 'Isabella', 'Young', '987654327', '14 Main St', 6000, '2023-02-01', 'Cook');
INSERT INTO public.employee VALUES (15, 'William', 'Allen', '123456782', '15 Main St', 5000, '2023-03-01', 'Server');


--
-- TOC entry 3346 (class 0 OID 34012)
-- Dependencies: 215
-- Data for Name: hotels; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.hotels VALUES (1, 'TheHotels', 'Paris');


--
-- TOC entry 3342 (class 0 OID 33988)
-- Dependencies: 211
-- Data for Name: reservation; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.reservation VALUES (1, '2023-02-01', '2023-01-30', '2022-12-30');
INSERT INTO public.reservation VALUES (2, '2023-02-02', '2023-01-31', '2022-12-31');
INSERT INTO public.reservation VALUES (3, '2023-02-03', '2023-02-01', '2023-01-01');
INSERT INTO public.reservation VALUES (4, '2023-02-04', '2023-02-02', '2023-01-02');
INSERT INTO public.reservation VALUES (5, '2023-02-05', '2023-02-03', '2023-01-03');
INSERT INTO public.reservation VALUES (6, '2022-05-01', '2022-05-05', '2022-04-01');
INSERT INTO public.reservation VALUES (7, '2022-06-01', '2022-06-05', '2022-05-01');
INSERT INTO public.reservation VALUES (8, '2022-07-01', '2022-07-05', '2022-06-01');
INSERT INTO public.reservation VALUES (9, '2022-09-01', '2022-09-05', '2022-08-01');
INSERT INTO public.reservation VALUES (10, '2023-02-15', '2023-02-13', '2023-01-13');


--
-- TOC entry 3341 (class 0 OID 33981)
-- Dependencies: 210
-- Data for Name: room; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.room VALUES (1, 'Available', 'Single', 50, '1st Floor', 1, 1, 1, 'Single Bed');
INSERT INTO public.room VALUES (2, 'Available', 'Double', 70, '1st Floor', 2, 1, 2, 'Double Bed');
INSERT INTO public.room VALUES (3, 'Not Available', 'Twin', 80, '2nd Floor', 1, 2, 1, 'Twin Bed');
INSERT INTO public.room VALUES (4, 'Available', 'Triple', 90, '2nd Floor', 2, 2, 2, 'Triple Bed');
INSERT INTO public.room VALUES (5, 'Not Available', 'Quad', 100, '3rd Floor', 2, 2, 2, 'Quad Bed');
INSERT INTO public.room VALUES (6, 'Available', 'Queen', 120, '3rd Floor', 1, 2, 1, 'Queen Bed');
INSERT INTO public.room VALUES (7, 'Not Available', 'King', 150, '4th Floor', 2, 2, 2, 'King Bed');
INSERT INTO public.room VALUES (8, 'Available', 'Suite', 200, '4th Floor', 1, 1, 1, 'Suite Bed');
INSERT INTO public.room VALUES (9, 'Not Available', 'Single', 50, '5th Floor', 1, 1, 1, 'Single Bed');
INSERT INTO public.room VALUES (10, 'Available', 'Double', 70, '5th Floor', 2, 1, 2, 'Double Bed');
INSERT INTO public.room VALUES (11, 'Not Available', 'Twin', 80, '6th Floor', 1, 2, 1, 'Twin Bed');
INSERT INTO public.room VALUES (12, 'Available', 'Triple', 90, '6th Floor', 2, 2, 2, 'Triple Bed');
INSERT INTO public.room VALUES (13, 'Not Available', 'Quad', 100, '7th Floor', 2, 2, 2, 'Quad Bed');
INSERT INTO public.room VALUES (14, 'Available', 'Queen', 120, '7th Floor', 1, 2, 1, 'Queen Bed');
INSERT INTO public.room VALUES (15, 'Not Available', 'King', 150, '8th Floor', 2, 2, 2, 'King Bed');


--
-- TOC entry 3344 (class 0 OID 34000)
-- Dependencies: 213
-- Data for Name: service; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.service VALUES (1, 'Spa', 100, 'Relaxation', '2022-12-01', '2022-12-02');
INSERT INTO public.service VALUES (2, 'Massage', 80, 'Relaxation', '2022-12-03', '2022-12-04');
INSERT INTO public.service VALUES (3, 'Gym', 50, 'Fitness', '2022-12-05', '2022-12-06');
INSERT INTO public.service VALUES (4, 'Swimming pool', 70, 'Relaxation', '2022-12-07', '2022-12-08');
INSERT INTO public.service VALUES (5, 'Breakfast', 20, 'Food', '2022-12-09', '2022-12-10');
INSERT INTO public.service VALUES (6, 'Lunch', 30, 'Food', '2022-12-11', '2022-12-12');
INSERT INTO public.service VALUES (7, 'Dinner', 40, 'Food', '2022-12-13', '2022-12-14');
INSERT INTO public.service VALUES (8, 'Housekeeping', 30, 'Maintenance', '2022-12-15', '2022-12-16');
INSERT INTO public.service VALUES (9, 'Laundry', 20, 'Maintenance', '2022-12-17', '2022-12-18');
INSERT INTO public.service VALUES (10, 'Room service', 40, 'Food', '2022-12-19', '2022-12-20');
INSERT INTO public.service VALUES (11, 'Concierge', 50, 'Guest service', '2022-12-21', '2022-12-22');
INSERT INTO public.service VALUES (12, 'Airport shuttle', 60, 'Transportation', '2022-12-23', '2022-12-24');
INSERT INTO public.service VALUES (13, 'Parking', 20, 'Transportation', '2022-12-25', '2022-12-26');
INSERT INTO public.service VALUES (14, 'Rent a car', 70, 'Transportation', '2022-12-27', '2022-12-28');
INSERT INTO public.service VALUES (15, 'Excursions', 80, 'Adventure', '2022-12-29', '2022-12-30');


--
-- TOC entry 3198 (class 2606 OID 34011)
-- Name: billing billing_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.billing
    ADD CONSTRAINT billing_pkey PRIMARY KEY (id);


--
-- TOC entry 3188 (class 2606 OID 33980)
-- Name: client client_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id);


--
-- TOC entry 3194 (class 2606 OID 33999)
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);


--
-- TOC entry 3200 (class 2606 OID 34018)
-- Name: hotels hotels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hotels
    ADD CONSTRAINT hotels_pkey PRIMARY KEY (id);


--
-- TOC entry 3192 (class 2606 OID 33992)
-- Name: reservation reservation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservation
    ADD CONSTRAINT reservation_pkey PRIMARY KEY (id);


--
-- TOC entry 3190 (class 2606 OID 33987)
-- Name: room room_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.room
    ADD CONSTRAINT room_pkey PRIMARY KEY (id);


--
-- TOC entry 3196 (class 2606 OID 34006)
-- Name: service service_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service
    ADD CONSTRAINT service_pkey PRIMARY KEY (id);


-- Completed on 2023-01-30 16:46:07

--
-- PostgreSQL database dump complete
--

