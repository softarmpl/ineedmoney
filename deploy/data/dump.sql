--
-- PostgreSQL database dump
--

-- Dumped from database version 11.2 (Debian 11.2-1.pgdg90+1)
-- Dumped by pg_dump version 11.2 (Debian 11.2-1.pgdg90+1)

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: ireallyneedit
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO ireallyneedit;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: ireallyneedit
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO ireallyneedit;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ireallyneedit
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: ireallyneedit
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO ireallyneedit;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ireallyneedit
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO ireallyneedit;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ireallyneedit
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: ireallyneedit
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO ireallyneedit;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: ireallyneedit
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO ireallyneedit;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ireallyneedit
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: ireallyneedit
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO ireallyneedit;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: ireallyneedit
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO ireallyneedit;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: ireallyneedit
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO ireallyneedit;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ireallyneedit
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: ireallyneedit
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO ireallyneedit;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ireallyneedit
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: ireallyneedit
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO ireallyneedit;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ireallyneedit
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO ireallyneedit;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ireallyneedit
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: budgets_budget; Type: TABLE; Schema: public; Owner: ireallyneedit
--

CREATE TABLE public.budgets_budget (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    name character varying(120) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.budgets_budget OWNER TO ireallyneedit;

--
-- Name: budgets_budget_id_seq; Type: SEQUENCE; Schema: public; Owner: ireallyneedit
--

CREATE SEQUENCE public.budgets_budget_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.budgets_budget_id_seq OWNER TO ireallyneedit;

--
-- Name: budgets_budget_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ireallyneedit
--

ALTER SEQUENCE public.budgets_budget_id_seq OWNED BY public.budgets_budget.id;


--
-- Name: budgets_category; Type: TABLE; Schema: public; Owner: ireallyneedit
--

CREATE TABLE public.budgets_category (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    name character varying(120) NOT NULL,
    color character varying(7) NOT NULL
);


ALTER TABLE public.budgets_category OWNER TO ireallyneedit;

--
-- Name: budgets_category_id_seq; Type: SEQUENCE; Schema: public; Owner: ireallyneedit
--

CREATE SEQUENCE public.budgets_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.budgets_category_id_seq OWNER TO ireallyneedit;

--
-- Name: budgets_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ireallyneedit
--

ALTER SEQUENCE public.budgets_category_id_seq OWNED BY public.budgets_category.id;


--
-- Name: budgets_item; Type: TABLE; Schema: public; Owner: ireallyneedit
--

CREATE TABLE public.budgets_item (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    direction character varying(120) NOT NULL,
    name character varying(120) NOT NULL,
    amount numeric(9,2) NOT NULL,
    notes character varying(300) NOT NULL,
    category_id integer,
    date timestamp with time zone NOT NULL,
    target_id integer,
    budget_id integer
);


ALTER TABLE public.budgets_item OWNER TO ireallyneedit;

--
-- Name: budgets_item_id_seq; Type: SEQUENCE; Schema: public; Owner: ireallyneedit
--

CREATE SEQUENCE public.budgets_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.budgets_item_id_seq OWNER TO ireallyneedit;

--
-- Name: budgets_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ireallyneedit
--

ALTER SEQUENCE public.budgets_item_id_seq OWNED BY public.budgets_item.id;


--
-- Name: budgets_item_payee; Type: TABLE; Schema: public; Owner: ireallyneedit
--

CREATE TABLE public.budgets_item_payee (
    id integer NOT NULL,
    item_id integer NOT NULL,
    payee_id integer NOT NULL
);


ALTER TABLE public.budgets_item_payee OWNER TO ireallyneedit;

--
-- Name: budgets_item_payee_id_seq; Type: SEQUENCE; Schema: public; Owner: ireallyneedit
--

CREATE SEQUENCE public.budgets_item_payee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.budgets_item_payee_id_seq OWNER TO ireallyneedit;

--
-- Name: budgets_item_payee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ireallyneedit
--

ALTER SEQUENCE public.budgets_item_payee_id_seq OWNED BY public.budgets_item_payee.id;


--
-- Name: budgets_payee; Type: TABLE; Schema: public; Owner: ireallyneedit
--

CREATE TABLE public.budgets_payee (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    name character varying(120) NOT NULL
);


ALTER TABLE public.budgets_payee OWNER TO ireallyneedit;

--
-- Name: budgets_payee_id_seq; Type: SEQUENCE; Schema: public; Owner: ireallyneedit
--

CREATE SEQUENCE public.budgets_payee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.budgets_payee_id_seq OWNER TO ireallyneedit;

--
-- Name: budgets_payee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ireallyneedit
--

ALTER SEQUENCE public.budgets_payee_id_seq OWNED BY public.budgets_payee.id;


--
-- Name: budgets_target; Type: TABLE; Schema: public; Owner: ireallyneedit
--

CREATE TABLE public.budgets_target (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    name character varying(120) NOT NULL,
    amount numeric(9,2) NOT NULL
);


ALTER TABLE public.budgets_target OWNER TO ireallyneedit;

--
-- Name: budgets_target_id_seq; Type: SEQUENCE; Schema: public; Owner: ireallyneedit
--

CREATE SEQUENCE public.budgets_target_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.budgets_target_id_seq OWNER TO ireallyneedit;

--
-- Name: budgets_target_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ireallyneedit
--

ALTER SEQUENCE public.budgets_target_id_seq OWNED BY public.budgets_target.id;


--
-- Name: dashboard_userdashboardmodule; Type: TABLE; Schema: public; Owner: ireallyneedit
--

CREATE TABLE public.dashboard_userdashboardmodule (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    module character varying(255) NOT NULL,
    app_label character varying(255),
    "user" integer NOT NULL,
    "column" integer NOT NULL,
    "order" integer NOT NULL,
    settings text NOT NULL,
    children text NOT NULL,
    collapsed boolean NOT NULL,
    CONSTRAINT dashboard_userdashboardmodule_column_check CHECK (("column" >= 0)),
    CONSTRAINT dashboard_userdashboardmodule_user_check CHECK (("user" >= 0))
);


ALTER TABLE public.dashboard_userdashboardmodule OWNER TO ireallyneedit;

--
-- Name: dashboard_userdashboardmodule_id_seq; Type: SEQUENCE; Schema: public; Owner: ireallyneedit
--

CREATE SEQUENCE public.dashboard_userdashboardmodule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dashboard_userdashboardmodule_id_seq OWNER TO ireallyneedit;

--
-- Name: dashboard_userdashboardmodule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ireallyneedit
--

ALTER SEQUENCE public.dashboard_userdashboardmodule_id_seq OWNED BY public.dashboard_userdashboardmodule.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: ireallyneedit
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO ireallyneedit;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: ireallyneedit
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO ireallyneedit;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ireallyneedit
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: ireallyneedit
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO ireallyneedit;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: ireallyneedit
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO ireallyneedit;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ireallyneedit
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: ireallyneedit
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO ireallyneedit;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: ireallyneedit
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO ireallyneedit;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ireallyneedit
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: ireallyneedit
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO ireallyneedit;

--
-- Name: jet_bookmark; Type: TABLE; Schema: public; Owner: ireallyneedit
--

CREATE TABLE public.jet_bookmark (
    id integer NOT NULL,
    url character varying(200) NOT NULL,
    title character varying(255) NOT NULL,
    "user" integer NOT NULL,
    date_add timestamp with time zone NOT NULL,
    CONSTRAINT jet_bookmark_user_check CHECK (("user" >= 0))
);


ALTER TABLE public.jet_bookmark OWNER TO ireallyneedit;

--
-- Name: jet_bookmark_id_seq; Type: SEQUENCE; Schema: public; Owner: ireallyneedit
--

CREATE SEQUENCE public.jet_bookmark_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jet_bookmark_id_seq OWNER TO ireallyneedit;

--
-- Name: jet_bookmark_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ireallyneedit
--

ALTER SEQUENCE public.jet_bookmark_id_seq OWNED BY public.jet_bookmark.id;


--
-- Name: jet_pinnedapplication; Type: TABLE; Schema: public; Owner: ireallyneedit
--

CREATE TABLE public.jet_pinnedapplication (
    id integer NOT NULL,
    app_label character varying(255) NOT NULL,
    "user" integer NOT NULL,
    date_add timestamp with time zone NOT NULL,
    CONSTRAINT jet_pinnedapplication_user_check CHECK (("user" >= 0))
);


ALTER TABLE public.jet_pinnedapplication OWNER TO ireallyneedit;

--
-- Name: jet_pinnedapplication_id_seq; Type: SEQUENCE; Schema: public; Owner: ireallyneedit
--

CREATE SEQUENCE public.jet_pinnedapplication_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jet_pinnedapplication_id_seq OWNER TO ireallyneedit;

--
-- Name: jet_pinnedapplication_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ireallyneedit
--

ALTER SEQUENCE public.jet_pinnedapplication_id_seq OWNED BY public.jet_pinnedapplication.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: budgets_budget id; Type: DEFAULT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.budgets_budget ALTER COLUMN id SET DEFAULT nextval('public.budgets_budget_id_seq'::regclass);


--
-- Name: budgets_category id; Type: DEFAULT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.budgets_category ALTER COLUMN id SET DEFAULT nextval('public.budgets_category_id_seq'::regclass);


--
-- Name: budgets_item id; Type: DEFAULT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.budgets_item ALTER COLUMN id SET DEFAULT nextval('public.budgets_item_id_seq'::regclass);


--
-- Name: budgets_item_payee id; Type: DEFAULT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.budgets_item_payee ALTER COLUMN id SET DEFAULT nextval('public.budgets_item_payee_id_seq'::regclass);


--
-- Name: budgets_payee id; Type: DEFAULT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.budgets_payee ALTER COLUMN id SET DEFAULT nextval('public.budgets_payee_id_seq'::regclass);


--
-- Name: budgets_target id; Type: DEFAULT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.budgets_target ALTER COLUMN id SET DEFAULT nextval('public.budgets_target_id_seq'::regclass);


--
-- Name: dashboard_userdashboardmodule id; Type: DEFAULT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.dashboard_userdashboardmodule ALTER COLUMN id SET DEFAULT nextval('public.dashboard_userdashboardmodule_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: jet_bookmark id; Type: DEFAULT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.jet_bookmark ALTER COLUMN id SET DEFAULT nextval('public.jet_bookmark_id_seq'::regclass);


--
-- Name: jet_pinnedapplication id; Type: DEFAULT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.jet_pinnedapplication ALTER COLUMN id SET DEFAULT nextval('public.jet_pinnedapplication_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: ireallyneedit
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: ireallyneedit
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: ireallyneedit
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add category	7	add_category
26	Can change category	7	change_category
27	Can delete category	7	delete_category
28	Can view category	7	view_category
29	Can add item	8	add_item
30	Can change item	8	change_item
31	Can delete item	8	delete_item
32	Can view item	8	view_item
33	Can add budget	9	add_budget
34	Can change budget	9	change_budget
35	Can delete budget	9	delete_budget
36	Can view budget	9	view_budget
37	Can add payee	10	add_payee
38	Can change payee	10	change_payee
39	Can delete payee	10	delete_payee
40	Can view payee	10	view_payee
41	Can add target	11	add_target
42	Can change target	11	change_target
43	Can delete target	11	delete_target
44	Can view target	11	view_target
45	Can add bookmark	12	add_bookmark
46	Can change bookmark	12	change_bookmark
47	Can delete bookmark	12	delete_bookmark
48	Can view bookmark	12	view_bookmark
49	Can add pinned application	13	add_pinnedapplication
50	Can change pinned application	13	change_pinnedapplication
51	Can delete pinned application	13	delete_pinnedapplication
52	Can view pinned application	13	view_pinnedapplication
53	Can add user dashboard module	14	add_userdashboardmodule
54	Can change user dashboard module	14	change_userdashboardmodule
55	Can delete user dashboard module	14	delete_userdashboardmodule
56	Can view user dashboard module	14	view_userdashboardmodule
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: ireallyneedit
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$150000$poA3PU4Kd3pf$IqaTw+WZvAPzUCth9RlDdSVxl0ZBZQ/zHuGBe1yXFts=	2019-11-20 21:18:51.494132+00	t	wkamel			wkamel@vp.pl	t	t	2019-10-25 19:58:55.830597+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: ireallyneedit
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: ireallyneedit
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: budgets_budget; Type: TABLE DATA; Schema: public; Owner: ireallyneedit
--

COPY public.budgets_budget (id, created, modified, name, user_id) FROM stdin;
1	2019-10-26 15:19:25.394357+00	2019-10-26 15:24:18.570836+00	Budżet 2019	1
\.


--
-- Data for Name: budgets_category; Type: TABLE DATA; Schema: public; Owner: ireallyneedit
--

COPY public.budgets_category (id, created, modified, name, color) FROM stdin;
9	2019-10-26 15:42:55.811618+00	2019-10-26 15:42:55.811618+00	Samochód	#2d4d80
13	2019-10-29 22:39:05.880971+00	2019-10-29 22:39:05.880971+00	Rozrywka	#2d4d80
14	2019-10-29 22:43:21.42437+00	2019-10-29 22:43:21.42437+00	Transport	#2d4d80
11	2019-10-28 21:17:13.41192+00	2019-11-02 20:39:53.324897+00	Edukacja	#598367
16	2019-11-01 16:54:59.8002+00	2019-11-02 20:44:30.51464+00	Chemia	#dbe274
10	2019-10-28 21:17:05.412329+00	2019-11-02 20:47:01.062973+00	Używki	#cc3911
3	2019-10-26 15:25:50.452448+00	2019-11-02 20:47:22.447383+00	Zabawki	#00d4ed
1	2019-10-26 15:25:44.067283+00	2019-11-02 20:47:48.333832+00	Jedzenie	#4ea450
8	2019-10-26 15:27:55.686332+00	2019-11-02 20:47:57.57565+00	Jedzenie na mieście	#e22caa
15	2019-11-01 16:51:50.874066+00	2019-11-02 20:48:09.055535+00	Jedzenie-śmieci	#ff1717
6	2019-10-26 15:26:17.778005+00	2019-11-02 20:48:16.786373+00	Naprawy samochodu	#000000
5	2019-10-26 15:26:00.220708+00	2019-11-02 20:48:45.499555+00	Wyjazdy	#f8ffb0
12	2019-10-29 22:27:40.948791+00	2019-11-02 20:49:04.153079+00	Ubrania	#3854ff
17	2019-11-06 20:26:53.608511+00	2019-11-06 20:26:53.608511+00	Kosmetyki	#ff00d0
18	2019-11-06 20:38:14.928428+00	2019-11-06 20:38:14.928428+00	Gadźety	#9e1061
19	2019-11-19 20:42:58.041784+00	2019-11-19 20:42:58.041784+00	Leczenie	#b9caba
20	2019-11-19 20:57:37.186204+00	2019-11-19 20:57:37.186204+00	Podatki	#ff1647
21	2019-11-19 21:00:31.351947+00	2019-11-19 21:00:31.351947+00	Kredyty	#cadcf9
22	2019-11-19 21:01:59.587501+00	2019-11-19 21:01:59.587501+00	Opłaty	#006114
\.


--
-- Data for Name: budgets_item; Type: TABLE DATA; Schema: public; Owner: ireallyneedit
--

COPY public.budgets_item (id, created, modified, direction, name, amount, notes, category_id, date, target_id, budget_id) FROM stdin;
54	2019-11-06 20:39:45.87038+00	2019-11-06 20:40:12.012644+00	expense	Gliceryna	13.50		16	2019-11-04 20:38:54+00	\N	1
5	2019-10-28 21:22:46.550236+00	2019-10-28 21:22:46.550236+00	expense	Piwo staropramen	3.98	bezalkoholowe	10	2019-10-28 21:19:13+00	\N	1
6	2019-10-28 21:23:20.68244+00	2019-10-28 21:23:30.328709+00	expense	Ser feta kostki	5.99		1	2019-10-28 21:22:46+00	\N	1
7	2019-10-28 21:24:07.507409+00	2019-10-28 21:24:07.507409+00	expense	Kawa seafredo 1kg	37.00		10	2019-10-28 21:23:21+00	\N	1
9	2019-10-28 21:25:16.779488+00	2019-10-28 21:25:16.779488+00	expense	Chleb	3.00		1	2019-10-28 21:24:41+00	\N	1
10	2019-10-28 21:25:56.294244+00	2019-10-28 21:25:56.294244+00	expense	Rogal 100g	0.90		1	2019-10-28 21:25:17+00	\N	1
11	2019-10-28 21:26:39.25034+00	2019-10-28 21:26:39.25034+00	expense	Bułki	1.80		1	2019-10-28 21:25:56+00	\N	1
12	2019-10-28 21:28:08.361214+00	2019-10-28 21:28:08.361214+00	expense	Skyr owocowy	6.76		1	2019-10-28 21:26:39+00	\N	1
13	2019-10-28 21:29:28.047975+00	2019-10-28 21:29:28.047975+00	expense	Ogórek	1.60		1	2019-10-28 21:28:47+00	\N	1
15	2019-10-28 21:30:28.071396+00	2019-10-28 21:30:28.071396+00	expense	Serek	2.99		1	2019-10-28 21:30:01+00	\N	1
14	2019-10-28 21:30:01.563846+00	2019-10-28 21:31:12.21671+00	expense	Papryka	2.90		1	2019-10-28 21:29:28+00	\N	1
8	2019-10-28 21:24:41.136581+00	2019-10-28 21:31:22.025632+00	expense	Kawa Tchibo 1kg	35.00		10	2019-10-28 21:24:07+00	\N	1
17	2019-10-29 22:28:43.819842+00	2019-10-29 22:28:43.819842+00	expense	kurtka zimowa	250.00	TK Maxx	12	2019-10-29 22:27:15+00	\N	1
18	2019-10-29 22:29:09.857779+00	2019-10-29 22:29:09.857779+00	expense	Skarpety	40.00	TK Maxx	12	2019-10-29 22:28:44+00	\N	1
19	2019-10-29 22:29:51.835304+00	2019-10-29 22:32:08.056029+00	expense	rękawiczki	13.00	sinsay	12	2019-10-29 22:29:10+00	\N	1
20	2019-10-29 22:32:27.980904+00	2019-10-29 22:32:27.980904+00	expense	rękawiczki	13.00	sinsay	12	2019-10-29 22:32:08+00	\N	1
21	2019-10-29 22:33:29.727563+00	2019-10-29 22:33:29.727563+00	expense	szalik	10.00	Sinsay	12	2019-10-29 22:32:28+00	\N	1
23	2019-10-29 22:34:04.929067+00	2019-10-29 22:34:04.929067+00	expense	czapka	20.00	sinsay	12	2019-10-29 22:33:48+00	\N	1
24	2019-10-29 22:34:26.653996+00	2019-10-29 22:34:26.653996+00	expense	naszyjnik	15.00		12	2019-10-29 22:34:05+00	\N	1
25	2019-10-29 22:35:00.432868+00	2019-10-29 22:35:00.432868+00	expense	chusta	40.00	sinsay	12	2019-10-29 22:34:27+00	\N	1
26	2019-10-29 22:35:24.167341+00	2019-10-29 22:35:24.167341+00	expense	czapka	20.00	sinsay	12	2019-10-29 22:35:00+00	\N	1
27	2019-10-29 22:36:47.977909+00	2019-10-29 22:36:47.977909+00	expense	piżama	20.00	sinsay	12	2019-10-29 22:35:24+00	\N	1
28	2019-10-29 22:37:04.484706+00	2019-10-29 22:37:04.484706+00	expense	spodnie	20.00	sinsay	12	2019-10-29 22:36:48+00	\N	1
29	2019-10-29 22:37:38.910492+00	2019-10-29 22:37:38.910492+00	expense	spodnie	15.00	sinsay	12	2019-10-29 22:37:04+00	\N	1
30	2019-10-29 22:42:04.775708+00	2019-10-29 22:42:04.775708+00	expense	kino	31.00	Rodzina Addamsów	13	2019-10-29 22:37:39+00	\N	1
31	2019-10-29 22:42:28.645448+00	2019-10-29 22:42:28.645448+00	expense	kino - popcorn i napoje	31.00	Rodzina Addamsów	13	2019-10-29 22:42:05+00	\N	1
32	2019-10-29 22:42:55.636519+00	2019-10-29 22:42:55.636519+00	expense	Kawa McDonalds	17.40		8	2019-10-29 22:42:29+00	\N	1
33	2019-10-29 22:43:23.610289+00	2019-10-29 22:43:23.610289+00	expense	bilety	6.00	bilet ZKM	14	2019-10-29 22:42:56+00	\N	1
34	2019-11-01 16:49:21.844084+00	2019-11-01 16:49:21.844084+00	expense	piwo bezalkoholowe	11.10		10	2019-10-31 16:47:23+00	\N	1
35	2019-11-01 16:50:03.61479+00	2019-11-01 16:50:03.61479+00	expense	Piwo bezalkoholowe Miłosław	12.90		10	2019-10-31 16:49:22+00	\N	1
36	2019-11-01 16:50:42.405198+00	2019-11-01 16:50:42.405198+00	expense	Paluszki solone	8.30		1	2019-10-31 16:50:03+00	\N	1
37	2019-11-01 16:56:38.573009+00	2019-11-01 16:56:38.573009+00	expense	chusteczki mokre	5.80		16	2019-10-31 16:50:42+00	\N	1
38	2019-11-01 16:57:20.758417+00	2019-11-01 16:57:20.758417+00	expense	słodycze i przekąski	20.10		15	2019-10-31 16:56:38+00	\N	1
39	2019-11-01 16:58:00.541097+00	2019-11-01 17:01:25.159429+00	expense	jedzenie - biedronka	110.00		1	2019-10-31 16:57:21+00	\N	1
22	2019-10-29 22:33:48.152745+00	2019-11-01 17:01:38.074695+00	expense	czapka	20.00	sinsay	12	2019-10-29 22:33:30+00	\N	1
16	2019-10-28 21:30:42.071492+00	2019-11-01 17:01:57.803928+00	expense	wafle 100g	1.99		1	2019-10-28 21:30:28+00	\N	1
40	2019-11-01 17:02:31.766345+00	2019-11-01 17:02:31.766345+00	expense	Kombinezon	169.00		12	2019-11-01 17:02:08+00	\N	1
41	2019-11-03 20:45:59.065477+00	2019-11-03 20:45:59.065477+00	expense	kawa i cistka	40.00	Gdańsk - kawiarinia	8	2019-11-03 20:45:17+00	\N	1
42	2019-11-03 20:46:55.008516+00	2019-11-03 20:46:55.008516+00	expense	paliwo	200.00		14	2019-11-03 20:45:59+00	\N	1
43	2019-11-03 20:47:22.571953+00	2019-11-03 20:47:22.571953+00	expense	kebab	44.00	kebab king	8	2019-11-03 20:46:55+00	\N	1
44	2019-11-06 20:26:17.629709+00	2019-11-06 20:26:17.629709+00	expense	Bebilon 1 1000g	58.00	Biedronka	1	2019-11-06 20:24:32+00	\N	1
45	2019-11-06 20:27:05.06662+00	2019-11-06 20:27:05.06662+00	expense	Chusteczki Pampers	13.00	Biedronka	17	2019-11-06 20:26:17+00	\N	1
46	2019-11-06 20:27:43.455619+00	2019-11-06 20:27:43.455619+00	expense	Gaza	2.50	Apteka	11	2019-11-06 20:27:05+00	\N	1
47	2019-11-06 20:28:30.578743+00	2019-11-06 20:28:30.578743+00	expense	Falla gdynia	40.00		8	2019-11-01 20:27:43+00	\N	1
48	2019-11-06 20:34:25.523794+00	2019-11-06 20:34:25.523794+00	expense	Płyny do prania, pochłaniacz wilgoci, bref	61.50		16	2019-11-04 20:28:30+00	\N	1
49	2019-11-06 20:35:03.664323+00	2019-11-06 20:35:03.664323+00	expense	cola, chipsy	8.00	Biedronka	15	2019-11-04 20:34:25+00	\N	1
50	2019-11-06 20:36:13.662756+00	2019-11-06 20:36:13.662756+00	expense	jedzenie - biedronka	180.00		1	2019-11-04 20:35:03+00	\N	1
52	2019-11-06 20:38:21.941185+00	2019-11-06 20:38:21.941185+00	expense	Smartfon Huawei	700.00		18	2019-11-06 20:37:41+00	\N	1
53	2019-11-06 20:38:54.739279+00	2019-11-06 20:38:54.739279+00	expense	Buty Lacoste	160.00		12	2019-11-05 20:38:22+00	\N	1
55	2019-11-06 21:48:32.200929+00	2019-11-06 21:48:32.200929+00	income	FV 17/11/2019	22515.15	Profil Software	\N	2019-11-05 21:46:41+00	\N	1
51	2019-11-06 20:37:02.271733+00	2019-11-07 11:31:45.803386+00	expense	Płyn micelarny + płatki	23.00	Biedronka	17	2019-11-04 20:36:13+00	\N	1
58	2019-11-19 20:30:58.988313+00	2019-11-19 20:31:45.676125+00	expense	chipsy	5.00	Lidl	15	2019-11-18 20:30:34+00	\N	1
57	2019-11-19 20:30:33.722145+00	2019-11-19 20:32:03.44886+00	expense	kawa 0.5	40.00	Lidl	10	2019-11-18 20:30:01+00	\N	1
56	2019-11-19 20:30:00.648304+00	2019-11-19 20:32:31.67018+00	expense	Spożywcze Lidl	64.06		1	2019-11-18 20:22:34+00	\N	1
61	2019-11-19 20:34:15.000182+00	2019-11-19 20:34:51.146399+00	expense	papier toaletowy	18.00	Lidl	16	2019-11-18 20:33:50+00	\N	1
59	2019-11-19 20:33:28.064848+00	2019-11-19 20:35:02.931646+00	expense	paluszki	5.00	Lidl	15	2019-11-18 20:33:08+00	\N	1
60	2019-11-19 20:33:50.018556+00	2019-11-19 20:35:20.841573+00	expense	pączki	2.50	Lidl	15	2019-11-18 20:33:28+00	\N	1
62	2019-11-19 20:34:34.607676+00	2019-11-19 20:35:37.716285+00	expense	Piwo bezalkoholowe	18.00		10	2019-11-18 20:34:15+00	\N	1
63	2019-11-19 20:36:57.911309+00	2019-11-19 20:36:57.911309+00	expense	żel i pianka do golenia	21.57	Rossmann	17	2019-11-19 20:36:04+00	\N	1
64	2019-11-19 20:37:19.592438+00	2019-11-19 20:37:19.592438+00	expense	klej	3.19	Rossmann	16	2019-11-19 20:36:58+00	\N	1
65	2019-11-19 20:43:19.606299+00	2019-11-19 20:43:19.606299+00	expense	Inhalator	110.27	Apteka dyżurna	19	2019-11-19 20:37:19+00	\N	1
66	2019-11-19 20:44:15.598653+00	2019-11-19 20:44:15.598653+00	expense	Ibum forte i Orofar	46.90		19	2019-11-19 20:43:19+00	\N	1
67	2019-11-19 20:44:59.123863+00	2019-11-19 20:44:59.123863+00	expense	Piwo bezalkoholowe Miłosław	11.10	Żabka	10	2019-11-08 20:44:15+00	\N	1
68	2019-11-19 20:45:47.927335+00	2019-11-19 20:45:47.927335+00	expense	Bobini Baby	19.99	Rossmann	16	2019-11-07 20:44:59+00	\N	1
69	2019-11-19 20:46:42.54613+00	2019-11-19 20:46:42.54613+00	expense	Paliwo	200.00	Lotos	14	2019-11-03 20:45:48+00	\N	1
70	2019-11-19 20:47:28.621158+00	2019-11-19 20:47:28.621158+00	expense	Szczepionka	175.00		19	2019-10-23 20:46:42+00	\N	1
71	2019-11-19 20:49:05.466851+00	2019-11-19 20:49:05.466851+00	expense	Antyperspirant Garnier	7.99	Hebe	17	2019-11-09 20:47:36+00	\N	1
72	2019-11-19 20:49:29.148848+00	2019-11-19 20:49:29.148848+00	expense	Dezodorant Adidas	7.19		17	2019-11-09 20:49:05+00	\N	1
73	2019-11-19 20:50:27.17106+00	2019-11-19 20:50:27.17106+00	expense	Bebilon 1	69.59	Kaufland	1	2019-11-14 20:49:29+00	\N	1
74	2019-11-19 20:51:13.25551+00	2019-11-19 20:51:13.25551+00	expense	Obiad w Chwila Moment	281.10		8	2019-11-10 20:50:27+00	\N	1
75	2019-11-19 20:52:37.65789+00	2019-11-19 20:52:37.65789+00	expense	Zakupy	299.39	Auchan	1	2019-11-09 20:51:13+00	\N	1
76	2019-11-19 20:53:20.743942+00	2019-11-19 20:53:20.743942+00	expense	Zakupy	95.26	Biedronka	1	2019-11-08 20:52:38+00	\N	1
77	2019-11-19 20:53:56.020877+00	2019-11-19 20:53:56.020877+00	expense	Zakupy	204.72	Biedronka	1	2019-11-12 20:53:21+00	\N	1
78	2019-11-19 20:54:31.41304+00	2019-11-19 20:54:31.41304+00	expense	Zakupy	187.11	Biedronka	1	2019-11-16 20:53:56+00	\N	1
79	2019-11-19 20:58:02.62603+00	2019-11-19 20:58:02.62603+00	expense	ZUS	1316.00		20	2019-11-15 20:57:15+00	\N	1
80	2019-11-19 20:58:59.17137+00	2019-11-19 20:58:59.17137+00	income	500+	1500.00		\N	2019-11-10 20:58:10+00	\N	1
81	2019-11-19 20:59:32.045059+00	2019-11-19 20:59:32.045059+00	income	Alimenty	600.00		\N	2019-11-11 20:58:59+00	\N	1
82	2019-11-19 21:00:40.151684+00	2019-11-19 21:00:40.151684+00	expense	Kredyt	1320.00		21	2019-11-19 21:00:04+00	\N	1
83	2019-11-19 21:02:15.693666+00	2019-11-19 21:02:15.693666+00	expense	Telefon	150.00		22	2019-11-19 21:00:40+00	\N	1
84	2019-11-19 21:02:35.332521+00	2019-11-19 21:02:35.332521+00	expense	Multimedia	80.65		22	2019-11-19 21:02:16+00	\N	1
85	2019-11-19 21:03:00.229423+00	2019-11-19 21:03:00.229423+00	expense	Bułki	4.24		1	2019-11-19 21:02:35+00	\N	1
86	2019-11-19 21:03:44.696971+00	2019-11-19 21:03:44.696971+00	expense	Telefon	14.43		22	2019-11-19 21:03:19+00	\N	1
87	2019-11-19 21:04:35.006197+00	2019-11-19 21:04:35.006197+00	expense	Ubrania	299.00		12	2019-11-19 21:03:45+00	\N	1
88	2019-11-19 21:05:25.832905+00	2019-11-19 21:05:25.832905+00	expense	Leki	13.00		19	2019-11-19 21:04:35+00	\N	1
89	2019-11-19 21:07:03.41016+00	2019-11-19 21:07:03.41016+00	expense	czynsz	860.00		22	2019-11-19 21:05:26+00	\N	1
90	2019-11-19 21:13:36.110304+00	2019-11-19 21:13:36.110304+00	expense	Badanie krwi	67.80		19	2019-11-07 21:13:08+00	\N	1
91	2019-11-19 21:14:31.099473+00	2019-11-19 21:14:31.099473+00	expense	Pizza	52.80		8	2019-11-14 21:13:43+00	\N	1
92	2019-11-19 21:14:55.704477+00	2019-11-19 21:14:55.704477+00	expense	Party	70.00		8	2019-11-16 21:14:31+00	\N	1
93	2019-11-19 21:15:14.189598+00	2019-11-19 21:15:14.189598+00	expense	Cukiernia	28.00		\N	2019-11-17 21:14:56+00	\N	1
94	2019-11-19 21:16:18.639887+00	2019-11-19 21:16:18.639887+00	expense	Apteka	33.09		19	2019-11-18 21:15:49+00	\N	1
95	2019-11-19 21:22:17.894404+00	2019-11-19 21:22:17.894404+00	expense	Kredyt Szczecin	609.63		21	2019-11-10 21:16:19+00	\N	1
96	2019-11-19 21:22:55.879947+00	2019-11-19 21:22:55.879947+00	expense	Bilety jakdojade	18.00		14	2019-11-10 21:22:18+00	\N	1
97	2019-11-19 21:23:28.59921+00	2019-11-19 21:23:28.59921+00	income	Wynajem mieszkania Szczecin	850.00		\N	2019-11-19 21:22:56+00	\N	1
98	2019-11-19 21:23:52.147223+00	2019-11-19 21:23:52.147223+00	expense	Telefon	25.00		22	2019-11-15 21:23:29+00	\N	1
\.


--
-- Data for Name: budgets_item_payee; Type: TABLE DATA; Schema: public; Owner: ireallyneedit
--

COPY public.budgets_item_payee (id, item_id, payee_id) FROM stdin;
8	5	1
9	5	2
10	6	1
11	6	2
12	7	1
13	7	2
14	8	1
15	8	2
16	9	1
17	9	2
18	10	3
19	10	4
20	11	3
21	11	4
22	12	1
23	12	2
24	13	1
25	13	2
26	13	3
27	13	4
28	14	1
29	14	2
30	14	3
31	14	4
32	15	1
33	15	2
34	15	3
35	15	4
36	16	1
37	16	2
38	16	3
39	16	4
40	17	1
41	18	1
42	19	3
43	20	3
44	21	3
45	22	2
46	23	2
47	24	3
48	25	2
49	26	2
50	27	3
51	28	8
52	29	8
53	30	3
54	30	4
55	31	3
56	31	4
57	32	1
58	32	2
59	33	1
60	34	1
61	34	2
62	35	1
63	35	2
64	36	1
65	36	2
66	37	7
67	38	1
68	38	2
69	38	3
70	38	4
71	39	1
72	39	2
73	39	3
74	39	4
75	40	8
76	41	1
77	41	2
78	42	1
79	42	2
80	42	3
81	42	4
82	43	1
83	43	2
84	44	8
85	45	8
86	46	3
87	47	1
88	47	2
89	48	7
90	49	3
91	49	4
92	50	1
93	50	2
94	50	3
95	50	4
96	51	2
97	52	3
98	53	1
99	54	7
100	55	1
101	56	1
102	56	2
103	56	3
104	56	4
105	57	1
106	57	2
107	58	3
108	58	4
109	59	1
110	59	2
111	60	3
112	60	4
113	61	7
114	62	1
115	62	2
116	63	1
117	64	4
118	65	8
119	66	8
120	66	2
121	67	1
122	67	2
123	68	7
124	69	6
125	70	8
126	71	1
127	72	4
128	73	8
129	74	1
130	74	2
131	74	3
132	74	4
133	75	1
134	75	2
135	75	3
136	75	4
137	76	1
138	76	2
139	76	3
140	76	4
141	77	1
142	77	2
143	77	3
144	77	4
145	78	1
146	78	2
147	78	3
148	78	4
149	79	1
150	80	2
151	81	3
152	81	4
153	82	7
154	83	2
155	84	7
156	85	1
157	85	2
158	85	3
159	85	4
160	86	3
161	87	2
162	88	8
163	88	1
164	88	2
165	89	7
166	90	2
167	91	1
168	91	2
169	91	3
170	91	4
171	92	2
172	93	1
173	93	2
174	93	3
175	93	4
176	94	8
177	95	7
178	96	1
179	97	7
180	98	1
\.


--
-- Data for Name: budgets_payee; Type: TABLE DATA; Schema: public; Owner: ireallyneedit
--

COPY public.budgets_payee (id, created, modified, name) FROM stdin;
1	2019-10-26 15:24:35.04287+00	2019-10-26 15:24:35.04287+00	Kamil
2	2019-10-26 15:24:37.696269+00	2019-10-26 15:24:37.696269+00	Monika
3	2019-10-26 15:24:39.200578+00	2019-10-26 15:24:39.200578+00	Maja
4	2019-10-26 15:24:40.753839+00	2019-10-26 15:24:40.753839+00	Miki
6	2019-10-26 15:24:45.641347+00	2019-10-26 15:24:45.641347+00	Samochód
7	2019-10-26 15:24:49.714876+00	2019-10-26 15:24:49.714876+00	Mieszkanie
8	2019-10-26 15:24:51.733799+00	2019-10-26 15:24:51.733799+00	Wiktor
\.


--
-- Data for Name: budgets_target; Type: TABLE DATA; Schema: public; Owner: ireallyneedit
--

COPY public.budgets_target (id, created, modified, name, amount) FROM stdin;
1	2019-10-26 15:26:55.705741+00	2019-10-26 15:26:55.705741+00	Wakacje za granicą 2019	0.00
2	2019-10-26 15:27:11.384486+00	2019-10-26 15:27:11.384486+00	Nowa pralka	0.00
3	2019-10-26 15:27:18.842425+00	2019-10-27 17:33:26.547311+00	Nowy samochód	5000.00
\.


--
-- Data for Name: dashboard_userdashboardmodule; Type: TABLE DATA; Schema: public; Owner: ireallyneedit
--

COPY public.dashboard_userdashboardmodule (id, title, module, app_label, "user", "column", "order", settings, children, collapsed) FROM stdin;
1	Quick links	jet.dashboard.modules.LinkList	\N	1	0	0	{"draggable": false, "deletable": false, "collapsible": false, "layout": "inline"}	[{"title": "Powr\\u00f3t na stron\\u0119", "url": "/"}, {"title": "Zmie\\u0144 has\\u0142o", "url": "/admin/password_change/"}, {"title": "Wyloguj", "url": "/admin/logout/"}]	f
2	Aplikacje	jet.dashboard.modules.AppList	\N	1	1	0	{"models": null, "exclude": ["auth.*"]}		f
3	Administracja	jet.dashboard.modules.AppList	\N	1	2	0	{"models": ["auth.*"], "exclude": null}		f
4	Ostatnie akcje	jet.dashboard.modules.RecentActions	\N	1	0	1	{"limit": 10, "include_list": null, "exclude_list": null, "user": null}		f
5	Wiadomości o Django	jet.dashboard.modules.Feed	\N	1	1	1	{"feed_url": "http://www.djangoproject.com/rss/weblog/", "limit": 5}		f
6	Wsparcie	jet.dashboard.modules.LinkList	\N	1	2	1	{"draggable": true, "deletable": true, "collapsible": true, "layout": "stacked"}	[{"title": "Dokumentacja Django", "url": "http://docs.djangoproject.com/", "external": true}, {"title": "Lista mailingowa Django", "url": "http://groups.google.com/group/django-users", "external": true}, {"title": "Kana\\u0142 IRC Django", "url": "irc://irc.freenode.net/django", "external": true}]	f
7	Modele aplikacji	jet.dashboard.modules.ModelList	budgets	1	0	0	{"models": ["budgets.*"], "exclude": null}		f
8	Ostatnie akcje	jet.dashboard.modules.RecentActions	budgets	1	1	0	{"limit": 10, "include_list": ["budgets.*"], "exclude_list": null, "user": null}		f
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: ireallyneedit
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2019-10-26 15:19:25.401613+00	1	Budget object (1)	1	[{"added": {}}]	9	1
2	2019-10-26 15:24:18.574353+00	1	Budżet 2019	2	[]	9	1
3	2019-10-26 15:24:35.046053+00	1	Kamil	1	[{"added": {}}]	10	1
4	2019-10-26 15:24:37.69828+00	2	Monika	1	[{"added": {}}]	10	1
5	2019-10-26 15:24:39.210725+00	3	Maja	1	[{"added": {}}]	10	1
6	2019-10-26 15:24:40.758946+00	4	Miki	1	[{"added": {}}]	10	1
7	2019-10-26 15:24:43.499675+00	5	Wiktor	1	[{"added": {}}]	10	1
8	2019-10-26 15:24:45.646343+00	6	Samochód	1	[{"added": {}}]	10	1
9	2019-10-26 15:24:49.7168+00	7	Mieszkanie	1	[{"added": {}}]	10	1
10	2019-10-26 15:24:51.738064+00	8	Wiktor	1	[{"added": {}}]	10	1
11	2019-10-26 15:25:00.048709+00	5	Wiktor	3		10	1
12	2019-10-26 15:25:44.077994+00	1	Jedzenie	1	[{"added": {}}]	7	1
13	2019-10-26 15:25:47.474751+00	2	Picie	1	[{"added": {}}]	7	1
14	2019-10-26 15:25:50.459721+00	3	Zabawki	1	[{"added": {}}]	7	1
15	2019-10-26 15:25:53.075667+00	4	Alkohol	1	[{"added": {}}]	7	1
16	2019-10-26 15:26:00.226329+00	5	Wyjazdy	1	[{"added": {}}]	7	1
17	2019-10-26 15:26:17.781935+00	6	Naprawy samochodu	1	[{"added": {}}]	7	1
18	2019-10-26 15:26:31.343284+00	7	Opłaty eksploatacyjne	1	[{"added": {}}]	7	1
19	2019-10-26 15:26:40.352846+00	7	Opłaty eksploatacyjne	3		7	1
20	2019-10-26 15:26:55.709707+00	1	Wakacje za granicą 2019	1	[{"added": {}}]	11	1
21	2019-10-26 15:27:11.393881+00	2	Nowa pralka	1	[{"added": {}}]	11	1
22	2019-10-26 15:27:18.84474+00	3	Nowy samochód	1	[{"added": {}}]	11	1
23	2019-10-26 15:27:55.69422+00	8	Jedzenie na mieście	1	[{"added": {}}]	7	1
24	2019-10-26 15:28:19.484017+00	1	Kawa	1	[{"added": {}}]	8	1
25	2019-10-26 15:29:50.645798+00	1	Kawa	2	[]	8	1
26	2019-10-26 15:42:55.822104+00	9	Samochód	1	[{"added": {}}]	7	1
27	2019-10-26 15:43:20.527666+00	2	zbiórka na samochód	1	[{"added": {}}]	8	1
28	2019-10-26 19:39:39.128689+00	3	pieniądze ze sprzedaży samochodu	1	[{"added": {}}]	8	1
29	2019-10-26 21:05:02.047355+00	4	xxx	1	[{"added": {}}]	8	1
30	2019-10-26 21:07:35.570794+00	3	pieniądze ze sprzedaży samochodu	2	[{"changed": {"fields": ["budget"]}}]	8	1
31	2019-10-26 21:07:40.50047+00	2	zbiórka na samochód	2	[{"changed": {"fields": ["budget"]}}]	8	1
32	2019-10-26 21:07:46.133851+00	1	Kawa	2	[{"changed": {"fields": ["budget"]}}]	8	1
33	2019-10-27 17:33:26.551265+00	3	Nowy samochód	2	[{"changed": {"fields": ["amount"]}}]	11	1
34	2019-10-28 21:17:05.419699+00	10	Używki	1	[{"added": {}}]	7	1
35	2019-10-28 21:17:13.418595+00	11	Edukacja	1	[{"added": {}}]	7	1
36	2019-10-28 21:17:43.981771+00	4	Alkohol	3		7	1
37	2019-10-28 21:18:48.30626+00	4	xxx	3		8	1
38	2019-10-28 21:18:58.523467+00	3	pieniądze ze sprzedaży samochodu	3		8	1
39	2019-10-28 21:18:58.529363+00	2	zbiórka na samochód	3		8	1
40	2019-10-28 21:18:58.532443+00	1	Kawa	3		8	1
41	2019-10-28 21:22:46.602016+00	5	Piwo staropramen	1	[{"added": {}}]	8	1
42	2019-10-28 21:23:20.713269+00	6	Ser feta kostki	1	[{"added": {}}]	8	1
43	2019-10-28 21:23:30.337589+00	6	Ser feta kostki	2	[{"changed": {"fields": ["category"]}}]	8	1
44	2019-10-28 21:24:07.543936+00	7	Kawa seafredo 1kg	1	[{"added": {}}]	8	1
45	2019-10-28 21:24:41.170534+00	8	KAwa Tchibo 1kg	1	[{"added": {}}]	8	1
46	2019-10-28 21:25:16.814207+00	9	Chleb	1	[{"added": {}}]	8	1
47	2019-10-28 21:25:56.327981+00	10	Rogal 100g	1	[{"added": {}}]	8	1
48	2019-10-28 21:26:39.28402+00	11	Bułki	1	[{"added": {}}]	8	1
49	2019-10-28 21:28:08.39475+00	12	Skyr owocowy	1	[{"added": {}}]	8	1
50	2019-10-28 21:29:28.084916+00	13	Ogórek	1	[{"added": {}}]	8	1
51	2019-10-28 21:30:01.602431+00	14	Papryka	1	[{"added": {}}]	8	1
52	2019-10-28 21:30:28.107688+00	15	Serek	1	[{"added": {}}]	8	1
53	2019-10-28 21:30:42.105409+00	16	wafle 100g	1	[{"added": {}}]	8	1
54	2019-10-28 21:31:12.225874+00	14	Papryka	2	[{"changed": {"fields": ["amount"]}}]	8	1
55	2019-10-28 21:31:22.033711+00	8	Kawa Tchibo 1kg	2	[{"changed": {"fields": ["name"]}}]	8	1
56	2019-10-29 22:27:40.95669+00	12	Ubrania	1	[{"added": {}}]	7	1
57	2019-10-29 22:28:43.873197+00	17	kurtka zimowa	1	[{"added": {}}]	8	1
58	2019-10-29 22:29:09.890985+00	18	Skarpety	1	[{"added": {}}]	8	1
59	2019-10-29 22:29:51.868115+00	19	rękawiczki	1	[{"added": {}}]	8	1
60	2019-10-29 22:32:08.064992+00	19	rękawiczki	2	[]	8	1
61	2019-10-29 22:32:28.014575+00	20	rękawiczki	1	[{"added": {}}]	8	1
62	2019-10-29 22:33:29.760205+00	21	szalik	1	[{"added": {}}]	8	1
63	2019-10-29 22:33:48.179578+00	22	czapka	1	[{"added": {}}]	8	1
64	2019-10-29 22:34:04.961881+00	23	czapka	1	[{"added": {}}]	8	1
65	2019-10-29 22:34:26.68941+00	24	naszyjnik	1	[{"added": {}}]	8	1
66	2019-10-29 22:35:00.469996+00	25	chusta	1	[{"added": {}}]	8	1
67	2019-10-29 22:35:24.200498+00	26	czapka	1	[{"added": {}}]	8	1
68	2019-10-29 22:36:48.009652+00	27	piżama	1	[{"added": {}}]	8	1
69	2019-10-29 22:37:04.524617+00	28	spodnie	1	[{"added": {}}]	8	1
70	2019-10-29 22:37:38.942633+00	29	spodnie	1	[{"added": {}}]	8	1
71	2019-10-29 22:39:05.885403+00	13	Rozrywka	1	[{"added": {}}]	7	1
72	2019-10-29 22:42:04.819222+00	30	kino	1	[{"added": {}}]	8	1
73	2019-10-29 22:42:28.679631+00	31	kino - popcorn i napoje	1	[{"added": {}}]	8	1
74	2019-10-29 22:42:55.677836+00	32	Kawa McDonalds	1	[{"added": {}}]	8	1
75	2019-10-29 22:43:21.428734+00	14	Transport	1	[{"added": {}}]	7	1
76	2019-10-29 22:43:23.643664+00	33	bilety	1	[{"added": {}}]	8	1
77	2019-11-01 16:49:21.925575+00	34	piwo bezalkoholowe	1	[{"added": {}}]	8	1
78	2019-11-01 16:50:03.647819+00	35	Piwo bezalkoholowe Miłosław	1	[{"added": {}}]	8	1
79	2019-11-01 16:50:42.43683+00	36	Paluszki solone	1	[{"added": {}}]	8	1
80	2019-11-01 16:51:50.879691+00	15	Jedzenie-śmieci	1	[{"added": {}}]	7	1
81	2019-11-01 16:54:59.805079+00	16	Chemia	1	[{"added": {}}]	7	1
82	2019-11-01 16:56:38.603003+00	37	chusteczki mokre	1	[{"added": {}}]	8	1
83	2019-11-01 16:57:20.79398+00	38	słodycze i przekąski	1	[{"added": {}}]	8	1
84	2019-11-01 16:58:00.580278+00	39	jedzenie - biedronka	1	[{"added": {}}]	8	1
85	2019-11-01 17:01:25.16898+00	39	jedzenie - biedronka	2	[{"changed": {"fields": ["category"]}}]	8	1
86	2019-11-01 17:01:38.083922+00	22	czapka	2	[{"changed": {"fields": ["category"]}}]	8	1
87	2019-11-01 17:01:57.812563+00	16	wafle 100g	2	[{"changed": {"fields": ["category"]}}]	8	1
88	2019-11-01 17:02:31.795803+00	40	Kombinezon	1	[{"added": {}}]	8	1
89	2019-11-02 20:39:53.328169+00	11	Edukacja	2	[{"changed": {"fields": ["color"]}}]	7	1
122	2019-11-02 20:44:30.518259+00	16	Chemia	2	[{"changed": {"fields": ["color"]}}]	7	1
123	2019-11-02 20:47:01.06726+00	10	Używki	2	[{"changed": {"fields": ["color"]}}]	7	1
124	2019-11-02 20:47:22.450354+00	3	Zabawki	2	[{"changed": {"fields": ["color"]}}]	7	1
125	2019-11-02 20:47:48.33632+00	1	Jedzenie	2	[{"changed": {"fields": ["color"]}}]	7	1
126	2019-11-02 20:47:57.578218+00	8	Jedzenie na mieście	2	[{"changed": {"fields": ["color"]}}]	7	1
127	2019-11-02 20:48:09.058115+00	15	Jedzenie-śmieci	2	[{"changed": {"fields": ["color"]}}]	7	1
128	2019-11-02 20:48:16.788824+00	6	Naprawy samochodu	2	[{"changed": {"fields": ["color"]}}]	7	1
129	2019-11-02 20:48:26.336172+00	2	Picie	3		7	1
130	2019-11-02 20:48:45.502964+00	5	Wyjazdy	2	[{"changed": {"fields": ["color"]}}]	7	1
131	2019-11-02 20:49:04.155334+00	12	Ubrania	2	[{"changed": {"fields": ["color"]}}]	7	1
132	2019-11-03 20:45:59.155771+00	41	kawa i cistka	1	[{"added": {}}]	8	1
133	2019-11-03 20:46:55.049836+00	42	paliwo	1	[{"added": {}}]	8	1
134	2019-11-03 20:47:22.605062+00	43	kebab	1	[{"added": {}}]	8	1
135	2019-11-06 20:26:17.726378+00	44	Bebilon 1 1000g	1	[{"added": {}}]	8	1
136	2019-11-06 20:26:53.617616+00	17	Kosmetyki	1	[{"added": {}}]	7	1
137	2019-11-06 20:27:05.099256+00	45	Chusteczki Pampers	1	[{"added": {}}]	8	1
138	2019-11-06 20:27:43.489273+00	46	Gaza	1	[{"added": {}}]	8	1
139	2019-11-06 20:28:30.612066+00	47	Falla gdynia	1	[{"added": {}}]	8	1
140	2019-11-06 20:34:25.557535+00	48	Płyny do prania, pochłaniacz wilgoci, bref	1	[{"added": {}}]	8	1
141	2019-11-06 20:35:03.695801+00	49	cola, chipsy	1	[{"added": {}}]	8	1
142	2019-11-06 20:36:13.696807+00	50	jedzenie - biedronka	1	[{"added": {}}]	8	1
143	2019-11-06 20:37:02.296892+00	51	Płyn micelarny + płatki	1	[{"added": {}}]	8	1
144	2019-11-06 20:38:14.934084+00	18	Gadźety	1	[{"added": {}}]	7	1
145	2019-11-06 20:38:21.970443+00	52	Smartfon Huawei	1	[{"added": {}}]	8	1
146	2019-11-06 20:38:54.768337+00	53	Buty Lacoste	1	[{"added": {}}]	8	1
147	2019-11-06 20:39:45.900191+00	54	Gliceryna	1	[{"added": {}}]	8	1
148	2019-11-06 20:40:12.021273+00	54	Gliceryna	2	[{"changed": {"fields": ["date"]}}]	8	1
149	2019-11-06 21:48:32.239079+00	55	FV 17/11/2019	1	[{"added": {}}]	8	1
150	2019-11-07 11:31:45.814567+00	51	Płyn micelarny + płatki	2	[{"changed": {"fields": ["category"]}}]	8	1
151	2019-11-19 20:30:00.7186+00	56	Spożywcze Lidl	1	[{"added": {}}]	8	1
152	2019-11-19 20:30:33.74714+00	57	kawa 0.5	1	[{"added": {}}]	8	1
153	2019-11-19 20:30:59.015042+00	58	chipsy	1	[{"added": {}}]	8	1
154	2019-11-19 20:31:45.687436+00	58	chipsy	2	[{"changed": {"fields": ["category"]}}]	8	1
155	2019-11-19 20:32:03.457817+00	57	kawa 0.5	2	[{"changed": {"fields": ["category"]}}]	8	1
156	2019-11-19 20:32:31.681087+00	56	Spożywcze Lidl	2	[{"changed": {"fields": ["category"]}}]	8	1
157	2019-11-19 20:33:28.095853+00	59	paluszki	1	[{"added": {}}]	8	1
158	2019-11-19 20:33:50.049979+00	60	pączki	1	[{"added": {}}]	8	1
159	2019-11-19 20:34:15.031981+00	61	papier toaletowy	1	[{"added": {}}]	8	1
160	2019-11-19 20:34:34.634687+00	62	Piwo bezalkoholowe	1	[{"added": {}}]	8	1
161	2019-11-19 20:34:51.155658+00	61	papier toaletowy	2	[{"changed": {"fields": ["date"]}}]	8	1
162	2019-11-19 20:35:02.940758+00	59	paluszki	2	[{"changed": {"fields": ["date"]}}]	8	1
163	2019-11-19 20:35:20.85048+00	60	pączki	2	[{"changed": {"fields": ["date"]}}]	8	1
164	2019-11-19 20:35:37.724241+00	62	Piwo bezalkoholowe	2	[{"changed": {"fields": ["category"]}}]	8	1
165	2019-11-19 20:36:57.941336+00	63	żel i pianka do golenia	1	[{"added": {}}]	8	1
166	2019-11-19 20:37:19.622678+00	64	klej	1	[{"added": {}}]	8	1
167	2019-11-19 20:42:58.050179+00	19	Leczenie	1	[{"added": {}}]	7	1
168	2019-11-19 20:43:19.636611+00	65	Inhalator	1	[{"added": {}}]	8	1
169	2019-11-19 20:44:15.632787+00	66	Ibum forte i Orofar	1	[{"added": {}}]	8	1
170	2019-11-19 20:44:59.155956+00	67	Piwo bezalkoholowe Miłosław	1	[{"added": {}}]	8	1
171	2019-11-19 20:45:47.961806+00	68	Bobini Baby	1	[{"added": {}}]	8	1
172	2019-11-19 20:46:42.576364+00	69	Paliwo	1	[{"added": {}}]	8	1
173	2019-11-19 20:47:28.649827+00	70	Szczepionka	1	[{"added": {}}]	8	1
174	2019-11-19 20:49:05.499863+00	71	Antyperspirant Garnier	1	[{"added": {}}]	8	1
175	2019-11-19 20:49:29.180127+00	72	Dezodorant Adidas	1	[{"added": {}}]	8	1
176	2019-11-19 20:50:27.201691+00	73	Bebilon 1	1	[{"added": {}}]	8	1
177	2019-11-19 20:51:13.300364+00	74	Obiad w Chwila Moment	1	[{"added": {}}]	8	1
178	2019-11-19 20:52:37.690595+00	75	Zakupy	1	[{"added": {}}]	8	1
179	2019-11-19 20:53:20.784252+00	76	Zakupy	1	[{"added": {}}]	8	1
180	2019-11-19 20:53:56.055535+00	77	Zakupy	1	[{"added": {}}]	8	1
181	2019-11-19 20:54:31.4458+00	78	Zakupy	1	[{"added": {}}]	8	1
182	2019-11-19 20:57:37.191846+00	20	Podatki	1	[{"added": {}}]	7	1
183	2019-11-19 20:58:02.65847+00	79	ZUS	1	[{"added": {}}]	8	1
184	2019-11-19 20:58:59.196033+00	80	500+	1	[{"added": {}}]	8	1
185	2019-11-19 20:59:32.070925+00	81	Alimenty	1	[{"added": {}}]	8	1
186	2019-11-19 21:00:31.357453+00	21	Kredyty	1	[{"added": {}}]	7	1
187	2019-11-19 21:00:40.182094+00	82	Kredyt	1	[{"added": {}}]	8	1
188	2019-11-19 21:01:59.59309+00	22	Opłaty	1	[{"added": {}}]	7	1
189	2019-11-19 21:02:15.725203+00	83	Telefon	1	[{"added": {}}]	8	1
190	2019-11-19 21:02:35.361649+00	84	Multimedia	1	[{"added": {}}]	8	1
191	2019-11-19 21:03:00.261685+00	85	Bułki	1	[{"added": {}}]	8	1
192	2019-11-19 21:03:44.728607+00	86	Telefon	1	[{"added": {}}]	8	1
193	2019-11-19 21:04:35.040379+00	87	Ubrania	1	[{"added": {}}]	8	1
194	2019-11-19 21:05:25.870375+00	88	Leki	1	[{"added": {}}]	8	1
195	2019-11-19 21:07:03.438812+00	89	czynsz	1	[{"added": {}}]	8	1
196	2019-11-19 21:13:36.141611+00	90	Badanie krwi	1	[{"added": {}}]	8	1
197	2019-11-19 21:14:31.135805+00	91	Pizza	1	[{"added": {}}]	8	1
198	2019-11-19 21:14:55.733426+00	92	Party	1	[{"added": {}}]	8	1
199	2019-11-19 21:15:14.218481+00	93	Cukiernia	1	[{"added": {}}]	8	1
200	2019-11-19 21:16:18.670143+00	94	Apteka	1	[{"added": {}}]	8	1
201	2019-11-19 21:22:17.937865+00	95	Kredyt Szczecin	1	[{"added": {}}]	8	1
202	2019-11-19 21:22:55.919741+00	96	Bilety jakdojade	1	[{"added": {}}]	8	1
203	2019-11-19 21:23:28.631606+00	97	Wynajem mieszkania Szczecin	1	[{"added": {}}]	8	1
204	2019-11-19 21:23:52.180085+00	98	Telefon	1	[{"added": {}}]	8	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: ireallyneedit
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	budgets	category
8	budgets	item
9	budgets	budget
10	budgets	payee
11	budgets	target
12	jet	bookmark
13	jet	pinnedapplication
14	dashboard	userdashboardmodule
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: ireallyneedit
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-10-25 19:58:43.451202+00
2	auth	0001_initial	2019-10-25 19:58:43.549642+00
3	admin	0001_initial	2019-10-25 19:58:43.71478+00
4	admin	0002_logentry_remove_auto_add	2019-10-25 19:58:43.743965+00
5	admin	0003_logentry_add_action_flag_choices	2019-10-25 19:58:43.756273+00
6	contenttypes	0002_remove_content_type_name	2019-10-25 19:58:43.788159+00
7	auth	0002_alter_permission_name_max_length	2019-10-25 19:58:43.793687+00
8	auth	0003_alter_user_email_max_length	2019-10-25 19:58:43.814271+00
9	auth	0004_alter_user_username_opts	2019-10-25 19:58:43.831208+00
10	auth	0005_alter_user_last_login_null	2019-10-25 19:58:43.840727+00
11	auth	0006_require_contenttypes_0002	2019-10-25 19:58:43.843205+00
12	auth	0007_alter_validators_add_error_messages	2019-10-25 19:58:43.852223+00
13	auth	0008_alter_user_username_max_length	2019-10-25 19:58:43.86744+00
14	auth	0009_alter_user_last_name_max_length	2019-10-25 19:58:43.878196+00
15	auth	0010_alter_group_name_max_length	2019-10-25 19:58:43.88623+00
16	auth	0011_update_proxy_permissions	2019-10-25 19:58:43.895435+00
17	sessions	0001_initial	2019-10-25 19:58:43.909871+00
18	budgets	0001_initial	2019-10-25 21:49:57.868486+00
19	budgets	0002_auto_20191026_1512	2019-10-26 15:12:57.816138+00
20	budgets	0003_auto_20191026_1523	2019-10-26 15:23:52.142896+00
21	budgets	0004_auto_20191026_1525	2019-10-26 15:25:21.988227+00
22	budgets	0005_auto_20191026_1547	2019-10-26 15:47:17.327797+00
23	jet	0001_initial	2019-10-26 20:33:39.758663+00
24	jet	0002_delete_userdashboardmodule	2019-10-26 20:33:39.770028+00
25	budgets	0006_auto_20191026_2052	2019-10-26 20:52:10.383349+00
26	budgets	0007_auto_20191026_2128	2019-10-26 21:28:17.892198+00
27	budgets	0008_auto_20191026_2130	2019-10-26 21:30:41.029825+00
28	budgets	0009_auto_20191026_2131	2019-10-26 21:31:14.705174+00
29	dashboard	0001_initial	2019-10-27 05:31:14.055196+00
30	budgets	0010_target_amount	2019-10-27 17:30:39.193727+00
31	budgets	0011_auto_20191029_2230	2019-10-29 22:30:59.775898+00
32	budgets	0012_auto_20191102_2039	2019-11-02 20:39:13.168403+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: ireallyneedit
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
ph61i9kmlyc2t00unkvhi22irfrx51da	ZTM1NzkzM2FkMWVlMzEzZDk0NWUyZmNhOGViODIyZmQ3OTVjYjI4Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyZDRmYmQwYWIxNDYyNWNjMThhM2FhMjQ0ZmY0ZTMzZGRkNTMzZTg5In0=	2019-11-08 19:59:00.586819+00
k2hlljbkzbty7ubiibygcpkgnutgqleg	ZTM1NzkzM2FkMWVlMzEzZDk0NWUyZmNhOGViODIyZmQ3OTVjYjI4Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyZDRmYmQwYWIxNDYyNWNjMThhM2FhMjQ0ZmY0ZTMzZGRkNTMzZTg5In0=	2019-11-09 20:34:34.981748+00
wycjufxgrbblmnve8n5aikeaaowl8crq	ZTM1NzkzM2FkMWVlMzEzZDk0NWUyZmNhOGViODIyZmQ3OTVjYjI4Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyZDRmYmQwYWIxNDYyNWNjMThhM2FhMjQ0ZmY0ZTMzZGRkNTMzZTg5In0=	2019-11-09 20:35:06.62772+00
sbqvbis6ypetb6lwzw333wyojb7l8ndb	ZTM1NzkzM2FkMWVlMzEzZDk0NWUyZmNhOGViODIyZmQ3OTVjYjI4Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyZDRmYmQwYWIxNDYyNWNjMThhM2FhMjQ0ZmY0ZTMzZGRkNTMzZTg5In0=	2019-11-11 21:16:38.348534+00
zi7ym4er3ct2wbjpkorr28re9wv102jn	ZTM1NzkzM2FkMWVlMzEzZDk0NWUyZmNhOGViODIyZmQ3OTVjYjI4Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyZDRmYmQwYWIxNDYyNWNjMThhM2FhMjQ0ZmY0ZTMzZGRkNTMzZTg5In0=	2019-11-12 22:26:10.216318+00
k2z9nd8kptiwt35k8ftykkeah6tuavhu	ZTM1NzkzM2FkMWVlMzEzZDk0NWUyZmNhOGViODIyZmQ3OTVjYjI4Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyZDRmYmQwYWIxNDYyNWNjMThhM2FhMjQ0ZmY0ZTMzZGRkNTMzZTg5In0=	2019-11-19 21:43:23.195577+00
5lmsbep0ncw3a461e92vkudqmy1394vw	ZTM1NzkzM2FkMWVlMzEzZDk0NWUyZmNhOGViODIyZmQ3OTVjYjI4Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyZDRmYmQwYWIxNDYyNWNjMThhM2FhMjQ0ZmY0ZTMzZGRkNTMzZTg5In0=	2019-11-20 17:34:39.109907+00
emc4r5dxwikfmsv64vbfhi3fgakd8arc	ZTM1NzkzM2FkMWVlMzEzZDk0NWUyZmNhOGViODIyZmQ3OTVjYjI4Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyZDRmYmQwYWIxNDYyNWNjMThhM2FhMjQ0ZmY0ZTMzZGRkNTMzZTg5In0=	2019-11-21 11:26:50.934602+00
t2y7w1dyqvmn674n8yacumlqqemfryrz	ZTM1NzkzM2FkMWVlMzEzZDk0NWUyZmNhOGViODIyZmQ3OTVjYjI4Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyZDRmYmQwYWIxNDYyNWNjMThhM2FhMjQ0ZmY0ZTMzZGRkNTMzZTg5In0=	2019-11-30 20:56:14.88868+00
7g3b4n3w8yivg5f6kqhap71xv2d9iyfs	ZTM1NzkzM2FkMWVlMzEzZDk0NWUyZmNhOGViODIyZmQ3OTVjYjI4Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyZDRmYmQwYWIxNDYyNWNjMThhM2FhMjQ0ZmY0ZTMzZGRkNTMzZTg5In0=	2019-12-04 21:18:51.499863+00
\.


--
-- Data for Name: jet_bookmark; Type: TABLE DATA; Schema: public; Owner: ireallyneedit
--

COPY public.jet_bookmark (id, url, title, "user", date_add) FROM stdin;
\.


--
-- Data for Name: jet_pinnedapplication; Type: TABLE DATA; Schema: public; Owner: ireallyneedit
--

COPY public.jet_pinnedapplication (id, app_label, "user", date_add) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ireallyneedit
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ireallyneedit
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ireallyneedit
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ireallyneedit
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ireallyneedit
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ireallyneedit
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: budgets_budget_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ireallyneedit
--

SELECT pg_catalog.setval('public.budgets_budget_id_seq', 1, true);


--
-- Name: budgets_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ireallyneedit
--

SELECT pg_catalog.setval('public.budgets_category_id_seq', 22, true);


--
-- Name: budgets_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ireallyneedit
--

SELECT pg_catalog.setval('public.budgets_item_id_seq', 98, true);


--
-- Name: budgets_item_payee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ireallyneedit
--

SELECT pg_catalog.setval('public.budgets_item_payee_id_seq', 180, true);


--
-- Name: budgets_payee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ireallyneedit
--

SELECT pg_catalog.setval('public.budgets_payee_id_seq', 8, true);


--
-- Name: budgets_target_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ireallyneedit
--

SELECT pg_catalog.setval('public.budgets_target_id_seq', 3, true);


--
-- Name: dashboard_userdashboardmodule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ireallyneedit
--

SELECT pg_catalog.setval('public.dashboard_userdashboardmodule_id_seq', 8, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ireallyneedit
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 204, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ireallyneedit
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ireallyneedit
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 64, true);


--
-- Name: jet_bookmark_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ireallyneedit
--

SELECT pg_catalog.setval('public.jet_bookmark_id_seq', 1, false);


--
-- Name: jet_pinnedapplication_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ireallyneedit
--

SELECT pg_catalog.setval('public.jet_pinnedapplication_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: budgets_budget budgets_budget_name_9b164f35_uniq; Type: CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.budgets_budget
    ADD CONSTRAINT budgets_budget_name_9b164f35_uniq UNIQUE (name);


--
-- Name: budgets_budget budgets_budget_pkey; Type: CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.budgets_budget
    ADD CONSTRAINT budgets_budget_pkey PRIMARY KEY (id);


--
-- Name: budgets_category budgets_category_name_5504c5a6_uniq; Type: CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.budgets_category
    ADD CONSTRAINT budgets_category_name_5504c5a6_uniq UNIQUE (name);


--
-- Name: budgets_category budgets_category_pkey; Type: CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.budgets_category
    ADD CONSTRAINT budgets_category_pkey PRIMARY KEY (id);


--
-- Name: budgets_item_payee budgets_item_payee_item_id_payee_id_1ae791c1_uniq; Type: CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.budgets_item_payee
    ADD CONSTRAINT budgets_item_payee_item_id_payee_id_1ae791c1_uniq UNIQUE (item_id, payee_id);


--
-- Name: budgets_item_payee budgets_item_payee_pkey; Type: CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.budgets_item_payee
    ADD CONSTRAINT budgets_item_payee_pkey PRIMARY KEY (id);


--
-- Name: budgets_item budgets_item_pkey; Type: CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.budgets_item
    ADD CONSTRAINT budgets_item_pkey PRIMARY KEY (id);


--
-- Name: budgets_payee budgets_payee_name_cf4511d7_uniq; Type: CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.budgets_payee
    ADD CONSTRAINT budgets_payee_name_cf4511d7_uniq UNIQUE (name);


--
-- Name: budgets_payee budgets_payee_pkey; Type: CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.budgets_payee
    ADD CONSTRAINT budgets_payee_pkey PRIMARY KEY (id);


--
-- Name: budgets_target budgets_target_name_8cf47723_uniq; Type: CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.budgets_target
    ADD CONSTRAINT budgets_target_name_8cf47723_uniq UNIQUE (name);


--
-- Name: budgets_target budgets_target_pkey; Type: CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.budgets_target
    ADD CONSTRAINT budgets_target_pkey PRIMARY KEY (id);


--
-- Name: dashboard_userdashboardmodule dashboard_userdashboardmodule_pkey; Type: CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.dashboard_userdashboardmodule
    ADD CONSTRAINT dashboard_userdashboardmodule_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: jet_bookmark jet_bookmark_pkey; Type: CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.jet_bookmark
    ADD CONSTRAINT jet_bookmark_pkey PRIMARY KEY (id);


--
-- Name: jet_pinnedapplication jet_pinnedapplication_pkey; Type: CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.jet_pinnedapplication
    ADD CONSTRAINT jet_pinnedapplication_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: ireallyneedit
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: ireallyneedit
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: ireallyneedit
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: ireallyneedit
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: ireallyneedit
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: ireallyneedit
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: ireallyneedit
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: ireallyneedit
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: ireallyneedit
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: budgets_budget_name_9b164f35_like; Type: INDEX; Schema: public; Owner: ireallyneedit
--

CREATE INDEX budgets_budget_name_9b164f35_like ON public.budgets_budget USING btree (name varchar_pattern_ops);


--
-- Name: budgets_budget_user_id_1d8f40be; Type: INDEX; Schema: public; Owner: ireallyneedit
--

CREATE INDEX budgets_budget_user_id_1d8f40be ON public.budgets_budget USING btree (user_id);


--
-- Name: budgets_category_name_5504c5a6_like; Type: INDEX; Schema: public; Owner: ireallyneedit
--

CREATE INDEX budgets_category_name_5504c5a6_like ON public.budgets_category USING btree (name varchar_pattern_ops);


--
-- Name: budgets_item_budget_id_57dfb97f; Type: INDEX; Schema: public; Owner: ireallyneedit
--

CREATE INDEX budgets_item_budget_id_57dfb97f ON public.budgets_item USING btree (budget_id);


--
-- Name: budgets_item_category_id_72562973; Type: INDEX; Schema: public; Owner: ireallyneedit
--

CREATE INDEX budgets_item_category_id_72562973 ON public.budgets_item USING btree (category_id);


--
-- Name: budgets_item_payee_item_id_b1eddc1a; Type: INDEX; Schema: public; Owner: ireallyneedit
--

CREATE INDEX budgets_item_payee_item_id_b1eddc1a ON public.budgets_item_payee USING btree (item_id);


--
-- Name: budgets_item_payee_payee_id_0aa45454; Type: INDEX; Schema: public; Owner: ireallyneedit
--

CREATE INDEX budgets_item_payee_payee_id_0aa45454 ON public.budgets_item_payee USING btree (payee_id);


--
-- Name: budgets_item_target_id_e3bae3f3; Type: INDEX; Schema: public; Owner: ireallyneedit
--

CREATE INDEX budgets_item_target_id_e3bae3f3 ON public.budgets_item USING btree (target_id);


--
-- Name: budgets_payee_name_cf4511d7_like; Type: INDEX; Schema: public; Owner: ireallyneedit
--

CREATE INDEX budgets_payee_name_cf4511d7_like ON public.budgets_payee USING btree (name varchar_pattern_ops);


--
-- Name: budgets_target_name_8cf47723_like; Type: INDEX; Schema: public; Owner: ireallyneedit
--

CREATE INDEX budgets_target_name_8cf47723_like ON public.budgets_target USING btree (name varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: ireallyneedit
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: ireallyneedit
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: ireallyneedit
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: ireallyneedit
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: budgets_budget budgets_budget_user_id_1d8f40be_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.budgets_budget
    ADD CONSTRAINT budgets_budget_user_id_1d8f40be_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: budgets_item budgets_item_budget_id_57dfb97f_fk_budgets_budget_id; Type: FK CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.budgets_item
    ADD CONSTRAINT budgets_item_budget_id_57dfb97f_fk_budgets_budget_id FOREIGN KEY (budget_id) REFERENCES public.budgets_budget(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: budgets_item budgets_item_category_id_72562973_fk_budgets_category_id; Type: FK CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.budgets_item
    ADD CONSTRAINT budgets_item_category_id_72562973_fk_budgets_category_id FOREIGN KEY (category_id) REFERENCES public.budgets_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: budgets_item_payee budgets_item_payee_item_id_b1eddc1a_fk_budgets_item_id; Type: FK CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.budgets_item_payee
    ADD CONSTRAINT budgets_item_payee_item_id_b1eddc1a_fk_budgets_item_id FOREIGN KEY (item_id) REFERENCES public.budgets_item(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: budgets_item_payee budgets_item_payee_payee_id_0aa45454_fk_budgets_payee_id; Type: FK CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.budgets_item_payee
    ADD CONSTRAINT budgets_item_payee_payee_id_0aa45454_fk_budgets_payee_id FOREIGN KEY (payee_id) REFERENCES public.budgets_payee(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: budgets_item budgets_item_target_id_e3bae3f3_fk_budgets_target_id; Type: FK CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.budgets_item
    ADD CONSTRAINT budgets_item_target_id_e3bae3f3_fk_budgets_target_id FOREIGN KEY (target_id) REFERENCES public.budgets_target(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ireallyneedit
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

