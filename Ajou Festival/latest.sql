--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: SCHEMA "public"; Type: COMMENT; Schema: -; Owner: mtyqwphqnmtuia
--

COMMENT ON SCHEMA "public" IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "plpgsql" WITH SCHEMA "pg_catalog";


--
-- Name: EXTENSION "plpgsql"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "plpgsql" IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: information; Type: TABLE; Schema: public; Owner: mtyqwphqnmtuia; Tablespace: 
--

CREATE TABLE "information" (
    "id" integer NOT NULL,
    "title" character varying,
    "menu" "text",
    "location" "text",
    "x_loc" integer,
    "y_loc" integer,
    "date" integer,
    "day" character varying,
    "like" integer,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);


ALTER TABLE public.information OWNER TO mtyqwphqnmtuia;

--
-- Name: information_id_seq; Type: SEQUENCE; Schema: public; Owner: mtyqwphqnmtuia
--

CREATE SEQUENCE "information_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.information_id_seq OWNER TO mtyqwphqnmtuia;

--
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mtyqwphqnmtuia
--

ALTER SEQUENCE "information_id_seq" OWNED BY "information"."id";


--
-- Name: realtimes; Type: TABLE; Schema: public; Owner: mtyqwphqnmtuia; Tablespace: 
--

CREATE TABLE "realtimes" (
    "id" integer NOT NULL,
    "Title" character varying,
    "Content" "text",
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);


ALTER TABLE public.realtimes OWNER TO mtyqwphqnmtuia;

--
-- Name: realtimes_id_seq; Type: SEQUENCE; Schema: public; Owner: mtyqwphqnmtuia
--

CREATE SEQUENCE "realtimes_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.realtimes_id_seq OWNER TO mtyqwphqnmtuia;

--
-- Name: realtimes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mtyqwphqnmtuia
--

ALTER SEQUENCE "realtimes_id_seq" OWNED BY "realtimes"."id";


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: mtyqwphqnmtuia; Tablespace: 
--

CREATE TABLE "schema_migrations" (
    "version" character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO mtyqwphqnmtuia;

--
-- Name: users; Type: TABLE; Schema: public; Owner: mtyqwphqnmtuia; Tablespace: 
--

CREATE TABLE "users" (
    "id" integer NOT NULL,
    "name" character varying,
    "email" character varying,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "password_digest" character varying
);


ALTER TABLE public.users OWNER TO mtyqwphqnmtuia;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: mtyqwphqnmtuia
--

CREATE SEQUENCE "users_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO mtyqwphqnmtuia;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mtyqwphqnmtuia
--

ALTER SEQUENCE "users_id_seq" OWNED BY "users"."id";


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mtyqwphqnmtuia
--

ALTER TABLE ONLY "information" ALTER COLUMN "id" SET DEFAULT "nextval"('"information_id_seq"'::"regclass");


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mtyqwphqnmtuia
--

ALTER TABLE ONLY "realtimes" ALTER COLUMN "id" SET DEFAULT "nextval"('"realtimes_id_seq"'::"regclass");


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mtyqwphqnmtuia
--

ALTER TABLE ONLY "users" ALTER COLUMN "id" SET DEFAULT "nextval"('"users_id_seq"'::"regclass");


--
-- Data for Name: information; Type: TABLE DATA; Schema: public; Owner: mtyqwphqnmtuia
--

COPY "information" ("id", "title", "menu", "location", "x_loc", "y_loc", "date", "day", "like", "created_at", "updated_at") FROM stdin;
69	좋은 대희	 	\N	26	15	27	낮	1	2016-05-18 13:43:33.173122	2016-05-22 08:19:21.256143
24	[영문학생회] 마린룩	 	\N	27	37	27	밤	0	2016-05-18 13:20:57.758326	2016-05-22 11:52:33.349979
46	[산업공학과학생회] 무한리필	 목살스테이크, 제육볶음, 스위트콘, 컵라면, 어묵탕, 김치전, 편육	\N	25	58	26	밤	5	2016-05-18 13:34:38.508833	2016-05-22 12:13:45.872059
75	[공과대학서포터즈] 게임 행사	  1000원으로 드론 받아가자!!	\N	28	30	26	낮	4	2016-05-18 13:53:00.346829	2016-05-22 12:40:45.336969
84	머스타드	 	\N	23	44	25	낮	22	2016-05-18 14:08:12.227906	2016-05-22 08:52:56.047555
26	[금공학생회] 클럽	신나는 음악으로 볼륨업! \r\n풍부한 술! 맛있는 안주! Hot한 분위기! \r\nSNS에 금융공학과 주점에서 V하고 찍은 사진을 올릴 경우 서비스 제공	\N	29	37	27	밤	7	2016-05-18 13:22:37.276175	2016-05-22 11:51:51.921448
74	이데알레	 	\N	10	48	27	밤	0	2016-05-18 13:47:50.569654	2016-05-22 11:53:55.32206
30	[영문학생회] 마린룩	 	\N	26	37	26	밤	2	2016-05-18 13:25:13.948137	2016-05-22 11:56:02.971
55	줄리메	 	\N	21	48	27	밤	0	2016-05-18 13:38:05.418371	2016-05-22 12:05:11.257836
70	[샘터야학] 야간매점	8시 이전 입장시 핫타임! 콘치즈 무료 증정!\r\n\r\n 야간매점 - 골빔면, 까르보불닭, 치쏘야 판매! 	\N	4	42	26	밤	3	2016-05-18 13:43:58.087047	2016-05-20 12:17:40.943809
68	[아주팝오케스트라] 바베큐파티	 	\N	13	53	27	밤	2	2016-05-18 13:43:28.314295	2016-05-22 11:57:00.507107
35	[간호학과학생회] 반짝이는 주점	 넘나 맛나는 혜자 안주!	\N	25	48	27	밤	0	2016-05-18 13:27:11.121873	2016-05-22 12:01:36.486132
63	[기계과학생회] 원피스	소주 한명 1000원! \r\n기계공학과 학생회가 제공하는 최고의 가성비 주점\r\n메뉴 정보 : 수육 제육 두부김치 훈제오리 등	\N	12	53	26	밤	3	2016-05-18 13:40:40.708507	2016-05-22 12:25:25.92354
61	[경영대학생회] 쇼미 더 머니	 일단 오시면 즐겁습니다.	\N	16	48	27	밤	1	2016-05-18 13:40:05.096063	2016-05-22 11:57:35.611492
62	[이비즈학생회] 클럽 in 감옥	염통꼬치 + 소세지 / 제육볶음 / 볶음 라면 / 오뎅탕 / 황도 / 계란말이 / 두부김치 \r\n다른 주점에는 없는 참이슬 후레쉬 \r\n직접 제조한 과일 소주 판매	\N	16	54	27	밤	0	2016-05-18 13:40:33.573353	2016-05-22 11:57:51.417441
47	[환경안전공학과학생회] 크리스마스	소주/콘버터구이/보쌈/삼겹,소세지구이	\N	19	58	26	밤	1	2016-05-18 13:35:17.762602	2016-05-20 12:17:54.993645
42	[교통 학생회]	 	\N	18	58	27	밤	3	2016-05-18 13:33:03.825688	2016-05-22 11:58:59.908512
71	[RPM] 레드카펫	숙주데리야끼볶음 10000 순대야채볶음 8,000 어묵탕(우동사리포함) 6000 두부김치 6,000 비빔국수 6,000 우동 4,000	\N	0	42	26	밤	8	2016-05-18 13:44:47.48641	2016-05-22 07:38:03.475238
17	비스트로	 	\N	16	54	25	밤	16	2016-05-18 12:29:41.046424	2016-05-22 12:20:50.235209
49	줄리메	 	\N	21	48	26	밤	1	2016-05-18 13:36:26.951816	2016-05-22 11:59:47.412089
51	응화생 학생회	 	\N	21	54	26	밤	2	2016-05-18 13:37:06.80292	2016-05-22 12:00:04.097106
31	[전자공학과 학생회]	 	\N	30	47	27	밤	0	2016-05-18 13:25:40.80694	2016-05-22 11:59:35.857166
33	일레븐	 	\N	30	54	27	밤	0	2016-05-18 13:26:01.270458	2016-05-22 12:00:01.005272
39	[미디어 학생회] 감성주점	대표메뉴 - 제육, 번호세트(원하시는 상대방의 번호를 가져다드립니다)\r\n27일부터 미디어 학생회 주점 "The 마셩, 반드시 짝을 구하라" 가 시작됩니다.\r\n남 테이블과 여 테이블 합석 시 안주서비스!	\N	27	50	27	밤	0	2016-05-18 13:29:53.3074	2016-05-22 12:01:19.102134
53	늘사랑	 	\N	19	43	26	밤	4	2016-05-18 13:37:36.411814	2016-05-22 12:13:26.299121
40	[꼼:뭐 먹을 꼼?] 고품격 주점	 : 옥수수를 덮친 치즈\r\n: 오지는오징어김치전 ~~등등 많아요ㅎㅎ\r\n이벤트는 top secret!! 궁금하시면 와서 즐기세요 다양한 상품이 기다리고있습니다 ^^	\N	25	54	27	밤	0	2016-05-18 13:30:32.340208	2016-05-22 12:02:04.367406
44	[산업공학과학생회] 무한리필	목살스테이크, 제육볶음, 스위트콘, 컵라면, 어묵탕, 김치전, 편육	\N	24	58	27	밤	0	2016-05-18 13:33:35.597005	2016-05-22 12:04:27.650374
34	벗	 	\N	26	42	27	밤	0	2016-05-18 13:26:35.026856	2016-05-22 12:03:19.792676
50	늘사랑	 	\N	20	42	27	밤	1	2016-05-18 13:36:29.498307	2016-05-22 12:03:11.948537
59	[아리랑영화패]	 제육볶음, 치즈 계란말이, 콘치즈, 옥수수전, 후르츠칵테일, 오뎅탕, 불닭게티\r\n\r\n영화 명대사 미션\r\n달성하면 무조건 서비스:)	\N	16	48	26	밤	0	2016-05-18 13:39:21.469476	2016-05-22 12:11:31.720049
54	화공, 신소재 학생회	 	\N	19	52	27	밤	1	2016-05-18 13:37:45.624023	2016-05-22 12:05:47.720525
37	일레븐	 	\N	30	54	26	밤	1	2016-05-18 13:28:17.89845	2016-05-22 12:10:00.587307
56	응화생 학생회	 	\N	21	54	27	밤	1	2016-05-18 13:38:27.177313	2016-05-22 12:05:28.206677
52	물리학과 학생회	 	\N	19	46	27	밤	0	2016-05-18 13:37:20.216403	2016-05-22 12:06:03.722138
36	[전자학생회]	 	\N	30	47	26	밤	2	2016-05-18 13:27:57.422078	2016-05-22 12:09:40.942566
41	[인액터스] 결혼식피로연	안재욱 결혼식 피로연\r\n청포도 소주 판매!\r\n야광봉 판매!	\N	26	43	26	밤	1	2016-05-18 13:32:00.461927	2016-05-22 12:11:07.276472
80	아주대 재학생 및 졸업생	 	\N	15	44	25	낮	14	2016-05-18 13:59:21.09687	2016-05-22 12:47:03.898619
169	[더사리] 물풍선	물풍선	\N	3	26	26	낮	0	2016-05-22 11:25:30.101556	2016-05-22 12:14:43.478711
166	[더사리] 물풍선	물풍선	\N	3	26	25	낮	0	2016-05-22 11:25:04.693235	2016-05-22 12:14:31.31591
170	[더사리] 물풍선	물풍선	\N	3	26	27	낮	0	2016-05-22 11:25:55.666532	2016-05-22 12:14:48.342445
16	[심리학과학생회] 오페라의 유령	최고의 혜자주점	\N	16	48	25	밤	26	2016-05-18 12:25:46.861422	2016-05-22 12:20:39.648266
67	[PTP]	 가위바위보 이기면 소주 한병 무료 , 소주 세병 시키면 한병 무료!	\N	10	42	26	밤	8	2016-05-18 13:43:00.027551	2016-05-20 12:47:16.907408
81	[파란만장] Fix The Fixed	 #힙합 #음악 #공연 #술 #안주 #혁신적사고 #코로나 #모히또 #꼬치 #정비공 #신선한남자들 #여긴주점이아냐 #이태원에온걸까? #고정관념을부셔줄게 #FixTheFixed #newnew	\N	6	38	27	밤	0	2016-05-18 14:00:17.668482	2016-05-20 12:20:40.769013
58	화공, 신소재 학생회	 	\N	18	52	26	밤	1	2016-05-18 13:39:00.106938	2016-05-20 12:18:35.697838
78	수비드	 	\N	33	15	27	낮	1	2016-05-18 13:59:04.903983	2016-05-22 08:19:16.588111
48	[송현빈과 아이들] 냉소면	오로지 한 메뉴로만 승부합니다. 쯔유소스로 만든 냉소면 드시러오세요	\N	21	32	27	낮	3	2016-05-18 13:36:12.840793	2016-05-22 08:19:18.533457
73	파란만장	 	\N	6	38	26	밤	1	2016-05-18 13:45:31.022841	2016-05-20 12:18:40.568334
79	사회학과 학생회	 	\N	2	42	27	밤	0	2016-05-18 13:59:07.953984	2016-05-18 13:59:26.306051
82	[대학학술연합] 손금 관상	 당신의 이야기를 들어드립니다.	\N	21	44	27	낮	1	2016-05-18 14:05:05.466107	2016-05-22 12:11:51.657605
171	[2.5g] 탁구	 	\N	6	26	25	낮	0	2016-05-22 12:21:09.242956	2016-05-22 12:21:50.486357
85	CCC	 	\N	16	23	27	낮	0	2016-05-18 14:09:38.90024	2016-05-18 14:10:09.381315
89	유디스퀘어	 	\N	31	15	25	낮	0	2016-05-18 14:13:48.801112	2016-05-22 12:27:09.069403
129	CCC	 	\N	16	23	26	낮	0	2016-05-18 15:09:11.783455	2016-05-18 15:09:11.783455
138	[애드브레인] 무더위 속 힐링	달달한 다쿠아즈 판매 / 무더위 속 달달함의 미학 \r\n어린시절을 떠올리며 / 무더위 속 힐링	\N	32	18	26	낮	0	2016-05-18 15:13:26.399364	2016-05-22 09:47:47.466388
126	[수비드] 삼겹살꼬치&닭꼬치	촉촉하고 바삭한 삼겹살 꼬치와, 달콤 매콤한 닭꼬치 까지!! \r\n삼겹살꼬치 3000원 닭꼬치 2500원 입니다.	\N	34	15	25	낮	3	2016-05-18 15:07:23.909668	2016-05-22 12:26:44.203804
125	[수비드] 삼겹살꼬치&닭꼬치	촉촉하고 바삭한 삼겹살 꼬치와, 달콤 매콤한 닭꼬치 까지!! \r\n삼겹살꼬치 3000원 닭꼬치 2500원 입니다.	\N	33	15	26	낮	1	2016-05-18 15:07:08.945667	2016-05-22 09:59:26.448538
116	[고슴도치] 원고전시/시럽아트	 창작만화동아리의 만화 원고 전시회/달콤한 시럽으로 그린 시럽아트와 핫케이크를 판매합니다.	\N	23	44	27	낮	0	2016-05-18 14:57:55.897952	2016-05-22 10:04:20.568584
127	[대학학술연합] 손금 관상	 당신의 이야기를 들어드립니다.	\N	23	44	26	낮	0	2016-05-18 15:08:06.858258	2016-05-22 12:38:48.409774
130	CCC	 	\N	16	23	25	낮	0	2016-05-18 15:09:33.979764	2016-05-18 15:09:33.979764
114	문갱	 	\N	23	18	27	낮	0	2016-05-18 14:36:02.943833	2016-05-18 15:09:53.835084
92	HAVESOME	 	\N	20	15	27	낮	0	2016-05-18 14:14:37.016312	2016-05-18 14:15:40.926511
7	늘사랑	 	\N	19	43	25	밤	6	2016-05-18 12:01:30.729454	2016-05-22 09:25:52.682098
94	[바투] 와인에이드	 상큼한 와인에이드	\N	19	15	26	낮	0	2016-05-18 14:16:05.318618	2016-05-22 12:32:36.510647
6	[인액터스] 결혼식피로연	안재욱 결혼식 피로연\r\n청포도 소주 판매!\r\n야광봉 판매!	\N	25	43	25	밤	4	2016-05-18 11:58:19.211687	2016-05-22 12:08:01.663497
100	[팝오케스트라] 샹그리아	 과일로 만든 샹그리아	\N	24	37	25	낮	9	2016-05-18 14:19:57.121972	2016-05-22 12:44:07.54167
103	[용트림] 먹거리 간식	메뉴 :또띠아롤 (치킨,베이컨)\r\n베이컨치즈 떡말이\r\n자몽에이슬에이드 팝니다.~	\N	36	20	27	낮	0	2016-05-18 14:22:53.095091	2016-05-20 12:07:44.859551
15	물리학과 학생회	 	\N	19	46	25	밤	3	2016-05-18 12:22:43.980629	2016-05-22 12:20:16.935313
128	[대학학술연합] 손금 관상	 당신의 이야기를 들어드립니다.	\N	21	44	25	낮	5	2016-05-18 15:08:41.688564	2016-05-22 12:11:26.254301
3	[영문학과학생회] 마린룩 	 	\N	26	37	25	밤	12	2016-05-18 11:46:28.976378	2016-05-22 12:14:35.814034
4	[의대학생회] 태양의 후예	 돼지고기숙주볶음, 부대라면, 만두김치전	\N	29	37	25	밤	12	2016-05-18 11:50:01.887517	2016-05-22 12:14:56.861753
113	[화학과학생회] 맥주게임	시원한 맥주!\r\n게임을 이기면 맥주가 1000원!\r\n맥주 타임어택!! 빨리 마셔라!	\N	19	18	27	낮	0	2016-05-18 14:34:41.886581	2016-05-20 12:00:50.972142
8	[경영학생회] 하와이	맛있는 칵테일 소주와 다양한 안주!\r\n다양한 이벤트를 통한 서비스를 드립니다~	\N	30	47	25	밤	6	2016-05-18 12:04:00.096662	2016-05-22 12:17:02.695135
131	[HAVESOME] 수제핫도그 & 음료	 쟌슨빌소세지핫도그/ 커피/ 뱅쇼/ 스파클링 샹그리아	\N	20	15	26	낮	0	2016-05-18 15:10:27.051929	2016-05-20 12:01:51.719154
86	머스타드	 	\N	25	44	26	낮	0	2016-05-18 14:09:39.490305	2016-05-22 12:39:00.7876
90	바우	 	\N	25	15	26	낮	0	2016-05-18 14:14:11.920465	2016-05-22 12:28:55.923276
118	[AURA] 시크릿 맞추기 게임	 간단한 게임 참여하기/학교앞 음식점 다양한 쿠폰 받아가기!!\r\n 간단한 포스트잇 작성시 추첨을 통한 상품까지!	\N	18	37	27	낮	0	2016-05-18 15:01:57.855957	2016-05-22 09:40:08.021996
5	[소울] 라이브주점	 	\N	32	37	25	밤	6	2016-05-18 11:51:35.822207	2016-05-22 12:15:24.653691
97	가이아	  	\N	12	22	27	낮	0	2016-05-18 14:17:26.780187	2016-05-18 14:22:30.055222
11	[경제학과학생회] 태후	 맛있는 곱창!	\N	25	48	25	밤	6	2016-05-18 12:13:32.398853	2016-05-22 12:17:46.773964
12	줄리메	 	\N	21	48	25	밤	7	2016-05-18 12:16:16.661413	2016-05-22 12:18:43.445877
13	응화생 학생회	 	\N	21	54	25	밤	4	2016-05-18 12:18:58.29744	2016-05-22 12:18:24.616304
21	[누비아주] 8090	 아이싱~ 막걸리 /\r\n아주대에서 가장 핫한 누비클럽 개최 /\r\n멋지고 예쁜 외국인 친구들과 함께 하는 누비주점 	\N	10	48	25	밤	5	2016-05-18 12:38:29.427469	2016-05-22 12:22:07.095952
14	화공, 신소재 학생회	 	\N	19	52	25	밤	6	2016-05-18 12:20:02.822164	2016-05-22 12:20:02.677931
101	[팝오케스트라] 샹그리아	 과일로 만든 샹그리아	\N	23	37	26	낮	2	2016-05-18 14:20:57.240614	2016-05-22 12:40:17.567327
93	[바투] 와인에이드	 상큼한 와인에이드	\N	18	15	25	낮	1	2016-05-18 14:15:36.580788	2016-05-22 12:26:12.498371
121	좋은대희	 	\N	28	15	25	낮	1	2016-05-18 15:04:19.097328	2016-05-22 12:28:18.24639
91	바우	 	\N	25	15	27	낮	0	2016-05-18 14:14:33.455279	2016-05-22 12:29:06.089486
133	[IVF] 물물교환	 니꺼 내꺼 바꺼!!! 지겨운 나의 물건을 바꿀 수 있는 기회!!! \r\n새로운 물건을 만나보세요~ 많이 구경하러 오세요~!!	\N	25	18	26	낮	0	2016-05-18 15:11:10.364285	2016-05-22 12:30:56.763395
139	[가이아] 솜솜가이아	 달달한 솜사탕&아메리카노	\N	14	22	25	낮	4	2016-05-18 15:13:29.344013	2016-05-22 12:38:24.809882
119	[경영학과] 좋은대희	 	\N	28	15	26	낮	0	2016-05-18 15:03:25.547079	2016-05-22 12:32:10.586316
122	[공과대학서포터즈] 게임 행사	 1000원으로 드론 받아가자!!	\N	28	28	25	낮	7	2016-05-18 15:05:45.257719	2016-05-22 12:41:16.201657
88	바우	 	\N	24	15	25	낮	2	2016-05-18 14:12:17.369084	2016-05-22 12:42:06.714715
137	[가이아] 솜솜가이아	 달달한 솜사탕&아메리카노	\N	12	22	26	낮	0	2016-05-18 15:13:09.455429	2016-05-20 12:08:51.62139
115	김소희	 	\N	26	44	27	낮	1	2016-05-18 14:37:38.110184	2016-05-18 15:49:12.305815
120	[인액터스 하얀지팡이팀] 상담카페 	 마음의 약방에 들어와서 힐링약 받아가세요😊😀	\N	13	44	27	낮	0	2016-05-18 15:03:31.543219	2016-05-20 12:06:40.67625
140	[간호대학생회] 카페	 퐁크러쉬가 넘나 맛있는 혜자 카페	\N	26	20	25	낮	13	2016-05-18 15:14:04.356307	2016-05-20 15:44:29.092227
147	[HAVESOME] 수제핫도그&음료	쟌슨빌소세지핫도그/ 커피/ 뱅쇼/ 스파클링 샹그리아	\N	20	15	27	낮	0	2016-05-20 12:05:57.964323	2016-05-22 09:56:43.082947
23	[샘터야학] 야간매점	 8시 이전 입장시 핫타임! 콘치즈 무료 증정!\r\n\r\n 야간매점 - 골빔면, 까르보불닭, 치쏘야 판매! 	\N	3	42	25	밤	7	2016-05-18 12:59:15.34815	2016-05-22 12:21:37.574278
149	[총동문회] 동문기업 전시회	선배들은 어떤 일을 하고 있나 알아보고, 어떤 도움을 받을 수 있을지 무엇이든 물어보세요!	\N	0	0	27	낮	0	2016-05-20 12:11:55.565233	2016-05-20 12:11:55.565233
65	[사이버보안 학생회] 어벤져스	메뉴정보 : 오리훈제, 김치전, 두부김치, 육개장, 물만두, 황도, 쥐포오징어\r\n메뉴가격 : 4천원~8천원\r\n어벤져스 컨셉으로 서빙과 요리하는 친구들이 각 마블영웅을 대표하여 활동할겁니다. 귀엽게 봐주세요ㅎㅎ	\N	13	46	27	밤	0	2016-05-18 13:41:20.729122	2016-05-22 11:57:17.138355
146	[HAVESOME] 수제핫도그&음료	쟌슨빌소세지핫도그/ 커피/ 뱅쇼/ 스파클링 샹그리아	\N	20	15	27	낮	0	2016-05-20 12:03:02.480776	2016-05-22 09:56:55.2528
150	[총동문회] 동문기업 전시회	선배들은 어떤 일을 하고 있나 알아보고, 어떤 도움을 받을 수 있을지 무엇이든 물어보세요!	\N	0	0	25	낮	0	2016-05-20 12:12:02.375396	2016-05-20 12:12:02.375396
143	[소프트웨어과] 핫도그 장인	촉촉한 빵위에~ 녹아내린 치즈~! 그리고 톡톡 터지는 소시지까지!!\r\n매콤한 볼케이노 소스와 달콤한 케첩이 준비되어 있습니다~!\r\n무더운 여름을 날려줄 청포도 슬러시도 준비되어있습니다.	\N	14	15	27	낮	0	2016-05-20 11:52:32.299412	2016-05-22 12:36:27.00659
152	[유니피스] 평화전시	유니피스 전시전 관람하시고 시원한 아이스티도 무료로 드시고 가세요~!	\N	6	45	26	낮	0	2016-05-20 12:16:50.975156	2016-05-22 12:17:27.400712
60	[건설시스템공학과학생회] 조선시대	주점 이름 - 조선삽잡이 (아주대학교 건설시스템공학과(구 토목공학과)) \r\n술 좀 아는 진짜 삽쟁이들의 술판이 다가온다.	\N	14	54	26	밤	1	2016-05-18 13:40:03.973872	2016-05-20 12:16:34.010245
111	[화학과학생회] 맥주게임	시원한 맥주!\r\n게임을 이기면 맥주가 1000원!\r\n맥주 타임어택!! 빨리 마셔라!	\N	21	18	25	낮	3	2016-05-18 14:33:11.568185	2016-05-22 12:30:08.927562
134	[IVF] 물물교환장터	 니꺼 내꺼 바꺼!!! 지겨운 나의 물건을 바꿀 수 있는 기회!!! \r\n새로운 물건을 만나보세요~ 많이 구경하러 오세요~!!	\N	24	18	25	낮	19	2016-05-18 15:11:50.134804	2016-05-22 12:31:12.364521
142	[수비드] 삼겹살꼬치&닭꼬치	촉촉하고 바삭한 삼겹살 꼬치와, 달콤 매콤한 닭꼬치 까지!! \r\n삼겹살꼬치 3000원 닭꼬치 2500원 입니다.	\N	33	15	27	낮	0	2016-05-20 11:49:18.865493	2016-05-22 09:58:50.009953
123	[소프트웨어과] 핫도그 장인	촉촉한 빵위에~ 녹아내린 치즈~! 그리고 톡톡 터지는 소시지까지!!\r\n매콤한 볼케이노 소스와 달콤한 케첩이 준비되어 있습니다~!\r\n무더운 여름을 날려줄 청포도 슬러시도 준비되어있습니다.	\N	15	15	26	낮	1	2016-05-18 15:06:23.927175	2016-05-22 12:41:08.055707
9	[정치외교과] 센과 치히로의 행방불명	유바바를 잡으면 소주 한병이 공짜! /\r\n가오나시를 만나면 각종 상품이 가득! /\r\n냉탕과온탕사이 냉묵밥에서 김치찌개까지 다양한 안주!	\N	28	54	25	밤	4	2016-05-18 12:06:49.873509	2016-05-22 12:24:11.509044
108	[청춘 스튜디오] 폴라로이드 with 솜사탕	 즐거운 축제! \r\n솜사탕 하나씩 들고 소중한 사람들과 폴라로이드 사진으로 추억을 남겨보세요!	\N	28	18	26	낮	0	2016-05-18 14:27:59.205786	2016-05-22 09:40:30.709529
96	[시즈닝] 막걸리 탄산주	막걸리 2000원\r\n망고 소다 탄산주 2000원\r\n야광팔찌 1000원 (음료구매시 500원)	\N	19	44	25	낮	0	2016-05-18 14:17:08.171149	2016-05-22 12:49:31.26687
144	[ABBA]구속측정	남자 1등 5만 / 2등 3만 / 3등 1만\r\n여자 1등 3만 / 2등 2만 / 3등 1만\r\n제구왕 야구공 1개	\N	3	45	25	낮	1	2016-05-20 11:54:39.503274	2016-05-22 12:16:29.363199
124	[소프트웨어과] 핫도그 장인	촉촉한 빵위에~ 녹아내린 치즈~! 그리고 톡톡 터지는 소시지까지!!\r\n매콤한 볼케이노 소스와 달콤한 케첩이 준비되어 있습니다~!\r\n무더운 여름을 날려줄 청포도 슬러시도 준비되어있습니다.	\N	14	15	25	낮	1	2016-05-18 15:06:50.584173	2016-05-22 12:37:18.995019
102	[용트림] 먹거리 간식	메뉴 :또띠아롤 (치킨,베이컨)\r\n베이컨치즈 떡말이\r\n자몽에이슬에이드 팝니다.~	\N	36	20	26	낮	1	2016-05-18 14:21:57.016919	2016-05-22 08:42:58.680173
98	[시즈닝] 막걸리 탄산주	막걸리 2000원\r\n망고 소다 탄산주 2000원\r\n야광팔찌 1000원 (음료구매시 500원)	\N	19	44	26	낮	0	2016-05-18 14:18:19.191276	2016-05-22 12:39:16.582656
132	[HAVESOME] 수제핫도그 & 음료	 쟌슨빌소세지핫도그/ 커피/ 뱅쇼/ 스파클링 샹그리아	\N	20	15	25	낮	11	2016-05-18 15:10:39.027722	2016-05-22 12:07:13.895809
106	[청춘 스튜디오] 폴라로이드 with 솜사탕	 즐거운 축제! \r\n솜사탕 하나씩 들고 소중한 사람들과 폴라로이드 사진으로 추억을 남겨보세요!	\N	28	18	25	낮	1	2016-05-18 14:25:54.106278	2016-05-22 09:40:48.877248
110	[화모니] 컵빙수	컵빙수(초코,딸기)\r\n빙수에 맛을 더하는 \r\n캘리그리피 문구까지 함께 드려요:) 	\N	17	44	26	낮	0	2016-05-18 14:31:35.57807	2016-05-22 12:39:32.870118
112	[화학과학생회] 맥주게임	시원한 맥주!\r\n게임을 이기면 맥주가 1000원!\r\n맥주 타임어택!! 빨리 마셔라!	\N	20	18	26	낮	1	2016-05-18 14:34:19.306919	2016-05-22 12:41:32.314919
10	[행정학과학생회] 앙~행정띠!	제육, 양념치킨, 쏘야 드실분? /안주 완전 혜자스럽다ㄷㄷ;; /세트메뉴 시키면 천원씩 할인...!!	\N	27	50	25	밤	7	2016-05-18 12:11:20.968329	2016-05-22 12:17:24.904769
151	[유니피스] 평화전시	유니피스 전시전 관람하시고 시원한 아이스티도 무료로 드시고 가세요~!	\N	6	45	25	낮	0	2016-05-20 12:16:19.826112	2016-05-22 12:17:54.935216
64	[누비아주] 8090	아이싱~ 막걸리 \r\n아주대에서 가장 핫한 누비클럽 개최 \r\n멋지고 예쁜 외국인 친구들과 함께 하는 누비주점 	\N	12	48	26	밤	0	2016-05-18 13:40:56.673128	2016-05-22 12:21:23.993626
148	[총동문회] 동문기업 전시회	선배들은 어떤 일을 하고 있나 알아보고, 어떤 도움을 받을 수 있을지 무엇이든 물어보세요!	\N	5	0	26	낮	0	2016-05-20 12:11:47.975551	2016-05-22 12:47:14.818984
109	[화모니] 컵빙수	컵빙수(초코,딸기)\r\n빙수에 맛을 더하는 \r\n캘리그리피 문구까지 함께 드려요:) 	\N	17	44	25	낮	8	2016-05-18 14:29:02.968425	2016-05-22 12:48:57.684111
157	[애드브레인] 무더위 속 힐링	달달한 다쿠아즈 판매 / 무더위 속 달달함의 미학 \r\n어린시절을 떠올리며 / 무더위 속 힐링	\N	33	18	25	낮	3	2016-05-20 12:22:16.478064	2016-05-22 12:32:10.529578
38	[건축학과학생회] 아키텍쳐달려(어른이 운동회)	대표메뉴 - 순대철판볶음\r\n이름에 ㄱㅊ 들어가면 안주 하나 무료\r\n시간대별 다양한 이벤트와 상품 증정	\N	26	50	26	밤	1	2016-05-18 13:28:46.534782	2016-05-20 12:20:12.071759
83	[굿토피아] 헤어초크&브로우바	 축제엔 헤어초크로 패셔너블하게! 브로우바로 훈남,훈녀로 재탄생! \r\n소중한 앞머리가 풀렸을 땐 고데기하러 굿토피아 부스 가자! / 각종 이벤트 및 혜택 기대하세요♡	\N	14	44	26	낮	5	2016-05-18 14:05:22.008333	2016-05-22 12:38:06.999389
18	[소프트웨어학생회] 소웨	 버터는목살없이목살아.. 제육이주먹밥만나느라샤샤샤♡ 오완전김치전을뒤집어놓으셨다. +라면뽀글이 만두 황도/이벤트타임 맥주2+1/	\N	19	58	25	밤	5	2016-05-18 12:32:45.736426	2016-05-20 14:11:50.279732
161	[VRAjouWorld] VR어트랙션 	VR놀이기구 1인 4천원!!\r\n조조할인 / 얼리버드할인 / 솔로할인 \r\n폴라로이드 등 각종 다양한 이벤트 \r\n경험해보지 못한 스릴감 !! 직접 느껴보세요 	\N	33	36	26	낮	0	2016-05-20 12:29:21.173704	2016-05-22 12:09:26.446883
162	[VRAjouWorld] VR어트랙션	VR놀이기구 1인 4천원!!\r\n조조할인 / 얼리버드할인 / 솔로할인 \r\n폴라로이드 등 각종 다양한 이벤트 \r\n경험해보지 못한 스릴감 !! 직접 느껴보세요 	\N	33	36	27	낮	0	2016-05-20 12:29:59.974832	2016-05-22 12:10:20.474709
156	[청춘포차] 추억팔이/감성팔이/술팔이	#안주이벤트#\r\n불고기(택1) + 화채 주문시 뽀글이 공짜!!\r\n#주류이벤트#\r\n소주 두병 = 5000원 / 소주한병 + 맥주두병 = 10000원	\N	14	42	26	밤	4	2016-05-20 12:20:21.769089	2016-05-22 03:53:22.482744
57	[물리학과학생회]	 소주 2병 + 랜덤소주 1병 + 음료 1캔 단 돈 만원! / 싸고 맛있고 배부른 안주 \r\nSNS 홍보 = 1000원 할인 /☆여학생만 있는 테이블 간단한 서비스☆	\N	19	46	26	밤	1	2016-05-18 13:38:36.195908	2016-05-22 12:19:26.279788
20	[기계과학생회] 원피스	소주 한명 1000원! \r\n기계공학과 학생회가 제공하는 최고의 가성비 주점\r\n메뉴 정보 : 수육 제육 두부김치 훈제오리 등	\N	13	50	25	밤	11	2016-05-18 12:36:54.669132	2016-05-22 12:21:06.743349
22	[알콜로사는사람들]	대표메뉴: 제육볶음 돼지껍데기 오뎅탕 김치전 콘치즈 두부김치\r\n소주 3000원 / 직접 제조하는 술 (칵테일) 판매\r\n1. 여자 3명 이상 존재하는 일행에게는 소주 1병 무료\r\n2. 자체적 소주 무료 이벤트 진행!! -참참참 잘하면 소주가 공짜!!	\N	13	42	25	밤	624	2016-05-18 12:57:13.84219	2016-05-22 12:21:51.705597
159	[정통대학생회] 고전게임/먹거리	정보통신대학 학생회 STAFF와 고전게임 한판! 맛있는 간식거리는 덤!	\N	24	32	26	낮	0	2016-05-20 12:26:00.218827	2016-05-22 12:44:11.180924
160	[VRAjouWorld] VR어트랙션 	VR놀이기구 1인 4천원!!\r\n조조할인 / 얼리버드할인 / 솔로할인 \r\n폴라로이드 등 각종 다양한 이벤트 \r\n경험해보지 못한 스릴감 !! 직접 느껴보세요 	\N	34	36	25	낮	2	2016-05-20 12:28:56.012857	2016-05-22 12:44:42.833534
164	[간호대학생회] 카페	퐁크러쉬가 넘나 맛있는 혜자 카페	\N	26	20	26	낮	0	2016-05-20 12:50:08.537228	2016-05-20 12:52:03.922321
27	[약학대학생회] 주막	 계란말이/쏘야/옥수수전/부추전/오뎅탕/ 라면/제육/복불복 주먹밥/마른안주/황도/두부김치/모히또	\N	31	37	27	밤	0	2016-05-18 13:23:04.261397	2016-05-22 11:50:50.929433
19	[유스호스텔] 세포의포차-샤샤샤❤	 있어서 미안해 친구들 데려와요 샤샤샤❤\r\n메뉴는 제육볶음, 김치전, 계란찜, 두부김치, 쏘시지야채볶음 \r\n여러가지 셋트메뉴에는 서비스까지 나온다는 사실!! \r\n귀엽게 샤샤샤❤를 외치며 룰렛을 돌리면 각종 서비스가 팡팡! 쏟아집니다ㅎㅎ	\N	24	58	25	밤	5	2016-05-18 12:34:41.744948	2016-05-22 11:19:37.812387
77	[볼랜드] 에볼랜드	 "꿈과 낭만이 가득한 환상 주점, \r\n           ★에볼랜드★\r\n#5.27.FRI  #특별 야간 개장"	\N	11	42	27	밤	0	2016-05-18 13:57:22.79796	2016-05-22 07:47:14.715459
163	[코스비] 음료	맛잇다	\N	30	44	26	낮	0	2016-05-20 12:31:10.850667	2016-05-22 12:46:08.145732
32	[약학대학생회] 주막	 계란말이/쏘야/옥수수전/부추전/오뎅탕/ 라면/제육/복불복 주먹밥/마른안주/황도/두부김치/모히또	\N	32	37	26	밤	2	2016-05-18 13:25:48.394102	2016-05-22 11:58:00.085894
165	[ABBA] 구속측정	남자 1등 5만 / 2등 3만 / 3등 1만\r\n여자 1등 3만 / 2등 2만 / 3등 1만\r\n제구왕 야구공 1개	\N	3	45	26	낮	0	2016-05-22 07:37:23.340324	2016-05-22 12:17:04.43985
29	[의대학생회] 태양의 후예	 돼지고기숙주볶음, 부대라면, 만두김치전	\N	29	37	26	밤	1	2016-05-18 13:23:46.736767	2016-05-22 11:57:26.203506
45	[꼼:뭐 먹을 꼼?] 고품격 주점	 : 옥수수를 덮친 치즈\r\n: 오지는오징어김치전 ~~등등 많아요ㅎㅎ\r\n이벤트는 top secret!! 궁금하시면 와서 즐기세요 다양한 상품이 기다리고있습니다 ^^	\N	25	52	26	밤	3	2016-05-18 13:34:00.844866	2016-05-22 12:01:45.05307
158	[정통대학생회] 고전게임/먹거리	정보통신대학 학생회 STAFF와 고전게임 한판! 맛있는 간식거리는 덤!	\N	24	32	25	낮	1	2016-05-20 12:24:49.399794	2016-05-22 12:43:30.378051
\.


--
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mtyqwphqnmtuia
--

SELECT pg_catalog.setval('"information_id_seq"', 171, true);


--
-- Data for Name: realtimes; Type: TABLE DATA; Schema: public; Owner: mtyqwphqnmtuia
--

COPY "realtimes" ("id", "Title", "Content", "created_at", "updated_at") FROM stdin;
1	환영합니다	축제 정보 웹서비스입니다. 방문해주셔서 환영합니다. 실시간으로 전하는 정보는 이곳에 표시됩니다.	2016-05-17 10:15:22.790885	2016-05-17 10:15:22.790885
2	멋쟁이사자처럼	방문을 환영합니다!	2016-05-17 10:47:58.254902	2016-05-17 10:47:58.254902
\.


--
-- Name: realtimes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mtyqwphqnmtuia
--

SELECT pg_catalog.setval('"realtimes_id_seq"', 2, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: mtyqwphqnmtuia
--

COPY "schema_migrations" ("version") FROM stdin;
20160508083021
20160508083420
20160508121206
20160510115143
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: mtyqwphqnmtuia
--

COPY "users" ("id", "name", "email", "created_at", "updated_at", "password_digest") FROM stdin;
1	Ajou_Univ_Admin	likelion.aju@gmail.com	2016-05-17 10:12:07.381324	2016-05-17 10:12:07.381324	$2a$10$/VkeCsAyDh.dvu8EIYjjc.b9s3DxuhJ5tT5f0VNUh3yfaZdgC7TKa
2	Ajou_APLUS	aplus@ajou.ac.kr	2016-05-17 10:12:07.465451	2016-05-17 10:12:07.465451	$2a$10$DAyMO1DX2JdDpvt4upd/7u7Z3V01X2gas5PpAVG3hal8uvL8nIUq2
3	Ajou_Univ_Admin	likelion.aju@gmail.com	2016-05-17 10:12:21.579804	2016-05-17 10:12:21.579804	$2a$10$bZp19jt7t8.Yc0j156lzl.yoare9ztzDeB6Vqe4NvMbNhkPwMPyIG
4	Ajou_APLUS	aplus@ajou.ac.kr	2016-05-17 10:12:21.706576	2016-05-17 10:12:21.706576	$2a$10$ila8cT4ljiE4vD6ZaFjgYOh0x6H9bmzObFiDdnVrzx/BKDjtcPyjm
5	Ajou_Univ_Admin	likelion.aju@gmail.com	2016-05-17 10:15:22.692455	2016-05-17 10:15:22.692455	$2a$10$bxUrLF3EffxQP4NJB.xMjOd0nfaFFQ9gfX11hljxzTapmvpcAJjSe
6	Ajou_APLUS	aplus@ajou.ac.kr	2016-05-17 10:15:22.779657	2016-05-17 10:15:22.779657	$2a$10$3OfWLF3IaqlAW7jaclSkQ.nVtU7c61WUKTjBFrWOOWMIUlYI1l73K
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mtyqwphqnmtuia
--

SELECT pg_catalog.setval('"users_id_seq"', 6, true);


--
-- Name: information_pkey; Type: CONSTRAINT; Schema: public; Owner: mtyqwphqnmtuia; Tablespace: 
--

ALTER TABLE ONLY "information"
    ADD CONSTRAINT "information_pkey" PRIMARY KEY ("id");


--
-- Name: realtimes_pkey; Type: CONSTRAINT; Schema: public; Owner: mtyqwphqnmtuia; Tablespace: 
--

ALTER TABLE ONLY "realtimes"
    ADD CONSTRAINT "realtimes_pkey" PRIMARY KEY ("id");


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: mtyqwphqnmtuia; Tablespace: 
--

ALTER TABLE ONLY "users"
    ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: mtyqwphqnmtuia; Tablespace: 
--

CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" USING "btree" ("version");


--
-- PostgreSQL database dump complete
--

