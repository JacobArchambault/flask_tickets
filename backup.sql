--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.8
-- Dumped by pg_dump version 16.1

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
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

SET default_tablespace = '';

--
-- Name: ticket; Type: TABLE; Schema: public; Owner: dashboard
--

CREATE TABLE public.ticket (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    status integer NOT NULL,
    url character varying(100)
);


ALTER TABLE public.ticket OWNER TO dashboard;

--
-- Name: ticket_id_seq; Type: SEQUENCE; Schema: public; Owner: dashboard
--

CREATE SEQUENCE public.ticket_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ticket_id_seq OWNER TO dashboard;

--
-- Name: ticket_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dashboard
--

ALTER SEQUENCE public.ticket_id_seq OWNED BY public.ticket.id;


--
-- Name: ticket id; Type: DEFAULT; Schema: public; Owner: dashboard
--

ALTER TABLE ONLY public.ticket ALTER COLUMN id SET DEFAULT nextval('public.ticket_id_seq'::regclass);


--
-- Data for Name: ticket; Type: TABLE DATA; Schema: public; Owner: dashboard
--

COPY public.ticket (id, name, status, url) FROM stdin;
1	Fix bug 1	3	http://www.example.com/1
2	Fix bug 2	2	http://www.example.com/2
3	Fix bug 3	3	http://www.example.com/3
4	Fix bug 4	0	http://www.example.com/4
5	Fix bug 5	1	http://www.example.com/5
6	Fix bug 6	3	http://www.example.com/6
7	Fix bug 7	3	http://www.example.com/7
8	Fix bug 8	2	http://www.example.com/8
9	Fix bug 9	0	http://www.example.com/9
10	Fix bug 10	1	http://www.example.com/10
11	Fix bug 11	2	http://www.example.com/11
12	Fix bug 12	3	http://www.example.com/12
13	Fix bug 13	0	http://www.example.com/13
14	Fix bug 14	2	http://www.example.com/14
15	Fix bug 15	3	http://www.example.com/15
16	Fix bug 16	3	http://www.example.com/16
17	Fix bug 17	1	http://www.example.com/17
18	Fix bug 18	1	http://www.example.com/18
19	Fix bug 19	0	http://www.example.com/19
20	Fix bug 20	0	http://www.example.com/20
21	Fix bug 21	3	http://www.example.com/21
22	Fix bug 22	0	http://www.example.com/22
23	Fix bug 23	0	http://www.example.com/23
24	Fix bug 24	1	http://www.example.com/24
25	Fix bug 25	1	http://www.example.com/25
26	Fix bug 26	3	http://www.example.com/26
27	Fix bug 27	3	http://www.example.com/27
28	Fix bug 28	2	http://www.example.com/28
29	Fix bug 29	0	http://www.example.com/29
30	Fix bug 30	3	http://www.example.com/30
31	Fix bug 31	2	http://www.example.com/31
32	Fix bug 32	1	http://www.example.com/32
33	Fix bug 33	2	http://www.example.com/33
34	Fix bug 34	0	http://www.example.com/34
35	Fix bug 35	0	http://www.example.com/35
36	Fix bug 36	2	http://www.example.com/36
37	Fix bug 37	3	http://www.example.com/37
38	Fix bug 38	0	http://www.example.com/38
39	Fix bug 39	1	http://www.example.com/39
40	Fix bug 40	3	http://www.example.com/40
41	Fix bug 41	1	http://www.example.com/41
42	Fix bug 42	0	http://www.example.com/42
43	Fix bug 43	0	http://www.example.com/43
44	Fix bug 44	2	http://www.example.com/44
45	Fix bug 45	3	http://www.example.com/45
46	Fix bug 46	2	http://www.example.com/46
47	Fix bug 47	2	http://www.example.com/47
48	Fix bug 48	2	http://www.example.com/48
49	Fix bug 49	2	http://www.example.com/49
50	Fix bug 50	1	http://www.example.com/50
51	Fix bug 51	2	http://www.example.com/51
52	Fix bug 52	2	http://www.example.com/52
53	Fix bug 53	3	http://www.example.com/53
54	Fix bug 54	1	http://www.example.com/54
55	Fix bug 55	3	http://www.example.com/55
56	Fix bug 56	2	http://www.example.com/56
57	Fix bug 57	1	http://www.example.com/57
58	Fix bug 58	2	http://www.example.com/58
59	Fix bug 59	3	http://www.example.com/59
60	Fix bug 60	3	http://www.example.com/60
61	Fix bug 61	3	http://www.example.com/61
62	Fix bug 62	1	http://www.example.com/62
63	Fix bug 63	2	http://www.example.com/63
64	Fix bug 64	2	http://www.example.com/64
65	Fix bug 65	0	http://www.example.com/65
66	Fix bug 66	1	http://www.example.com/66
67	Fix bug 67	1	http://www.example.com/67
68	Fix bug 68	2	http://www.example.com/68
69	Fix bug 69	2	http://www.example.com/69
70	Fix bug 70	0	http://www.example.com/70
71	Fix bug 71	1	http://www.example.com/71
72	Fix bug 72	0	http://www.example.com/72
73	Fix bug 73	1	http://www.example.com/73
74	Fix bug 74	0	http://www.example.com/74
75	Fix bug 75	2	http://www.example.com/75
76	Fix bug 76	1	http://www.example.com/76
77	Fix bug 77	1	http://www.example.com/77
78	Fix bug 78	3	http://www.example.com/78
79	Fix bug 79	0	http://www.example.com/79
80	Fix bug 80	3	http://www.example.com/80
81	Fix bug 81	0	http://www.example.com/81
82	Fix bug 82	0	http://www.example.com/82
83	Fix bug 83	1	http://www.example.com/83
84	Fix bug 84	1	http://www.example.com/84
85	Fix bug 85	3	http://www.example.com/85
86	Fix bug 86	1	http://www.example.com/86
87	Fix bug 87	2	http://www.example.com/87
88	Fix bug 88	0	http://www.example.com/88
89	Fix bug 89	0	http://www.example.com/89
90	Fix bug 90	0	http://www.example.com/90
91	Fix bug 91	1	http://www.example.com/91
92	Fix bug 92	2	http://www.example.com/92
93	Fix bug 93	0	http://www.example.com/93
94	Fix bug 94	2	http://www.example.com/94
95	Fix bug 95	1	http://www.example.com/95
96	Fix bug 96	0	http://www.example.com/96
97	Fix bug 97	0	http://www.example.com/97
98	Fix bug 98	1	http://www.example.com/98
99	Fix bug 99	1	http://www.example.com/99
\.


--
-- Name: ticket_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dashboard
--

SELECT pg_catalog.setval('public.ticket_id_seq', 99, true);


--
-- Name: ticket ticket_pkey; Type: CONSTRAINT; Schema: public; Owner: dashboard
--

ALTER TABLE ONLY public.ticket
    ADD CONSTRAINT ticket_pkey PRIMARY KEY (id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

