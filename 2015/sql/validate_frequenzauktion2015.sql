use frequenzauktion;

-- = 181, 31?
select count(distinct runde), count(*) / count(distinct runde)
from frequenzauktion2015;

-- = 31?
select count(*) / 181 from frequenzauktion2015; 

select distinct hoechstbieter
from frequenzauktion2015
where hoechstbieter not in ('TEF DE', 'Vodafone', 'Telekom');

select runde, count(*) as counts
from frequenzauktion2015
group by runde
having count(*) != 31
order by 1;

select
ifnull(a.runde,b.runde) as runde,
sum(sumHoechstgebotPng) as sumHoechstgebotPng,
sum(sumHoechstgebotDb) as sumHoechstgebotDb,
sum(sumHoechstgebotPng) - sum(sumHoechstgebotDb) as diff

from 

(

	select			1	as runde,	1275630	 as sumHoechstgebotPng
	union select	2	as runde,	1468836	 as sumHoechstgebotPng
	union select	3	as runde,	1480091	 as sumHoechstgebotPng
	union select	4	as runde,	1491442	 as sumHoechstgebotPng
	union select	5	as runde,	1502976	 as sumHoechstgebotPng
	union select	6	as runde,	1514611	 as sumHoechstgebotPng
	union select	7	as runde,	1526548	 as sumHoechstgebotPng
	union select	8	as runde,	1538761	 as sumHoechstgebotPng
	union select	9	as runde,	1549007	 as sumHoechstgebotPng
	union select	10	as runde,	1557287	 as sumHoechstgebotPng
	union select	11	as runde,	1571790	 as sumHoechstgebotPng
	union select	12	as runde,	1588168	 as sumHoechstgebotPng
	union select	13	as runde,	1603277	 as sumHoechstgebotPng
	union select	14	as runde,	1616539	 as sumHoechstgebotPng
	union select	15	as runde,	1631879	 as sumHoechstgebotPng
	union select	16	as runde,	1647541	 as sumHoechstgebotPng
	union select	17	as runde,	1663412	 as sumHoechstgebotPng
	union select	18	as runde,	1675176	 as sumHoechstgebotPng
	union select	19	as runde,	1767775	 as sumHoechstgebotPng
	union select	20	as runde,	1816966	 as sumHoechstgebotPng
	union select	21	as runde,	1827232	 as sumHoechstgebotPng
	union select	22	as runde,	1835469	 as sumHoechstgebotPng
	union select	23	as runde,	1844018	 as sumHoechstgebotPng
	union select	24	as runde,	1852764	 as sumHoechstgebotPng
	union select	25	as runde,	1866375	 as sumHoechstgebotPng
	union select	26	as runde,	1880427	 as sumHoechstgebotPng
	union select	27	as runde,	1889925	 as sumHoechstgebotPng
	union select	28	as runde,	1899659	 as sumHoechstgebotPng
	union select	29	as runde,	1908943	 as sumHoechstgebotPng
	union select	30	as runde,	1916659	 as sumHoechstgebotPng
	union select	31	as runde,	1924512	 as sumHoechstgebotPng
	union select	32	as runde,	1953647	 as sumHoechstgebotPng
	union select	33	as runde,	1965933	 as sumHoechstgebotPng
	union select	34	as runde,	1993006	 as sumHoechstgebotPng
	union select	35	as runde,	2000971	 as sumHoechstgebotPng
	union select	36	as runde,	2009218	 as sumHoechstgebotPng
	union select	37	as runde,	2017577	 as sumHoechstgebotPng
	union select	38	as runde,	2026236	 as sumHoechstgebotPng
	union select	39	as runde,	2034895	 as sumHoechstgebotPng
	union select	40	as runde,	2043870	 as sumHoechstgebotPng
	union select	41	as runde,	2064504	 as sumHoechstgebotPng
	union select	42	as runde,	2111794	 as sumHoechstgebotPng
	union select	43	as runde,	2121047	 as sumHoechstgebotPng
	union select	44	as runde,	2130635	 as sumHoechstgebotPng
	union select	45	as runde,	2140456	 as sumHoechstgebotPng
	union select	46	as runde,	2150639	 as sumHoechstgebotPng
	union select	47	as runde,	2160706	 as sumHoechstgebotPng
	union select	48	as runde,	2171147	 as sumHoechstgebotPng
	union select	49	as runde,	2181839	 as sumHoechstgebotPng
	union select	50	as runde,	2190464	 as sumHoechstgebotPng
	union select	51	as runde,	2196433	 as sumHoechstgebotPng
	union select	52	as runde,	2202700	 as sumHoechstgebotPng
	union select	53	as runde,	2210709	 as sumHoechstgebotPng
	union select	54	as runde,	2214837	 as sumHoechstgebotPng
	union select	55	as runde,	2242715	 as sumHoechstgebotPng
	union select	56	as runde,	2254155	 as sumHoechstgebotPng
	union select	57	as runde,	2262554	 as sumHoechstgebotPng
	union select	58	as runde,	2275803	 as sumHoechstgebotPng
	union select	59	as runde,	2292136	 as sumHoechstgebotPng
	union select	60	as runde,	2304106	 as sumHoechstgebotPng
	union select	61	as runde,	2313496	 as sumHoechstgebotPng
	union select	62	as runde,	2322982	 as sumHoechstgebotPng
	union select	63	as runde,	2274500	 as sumHoechstgebotPng
	union select	64	as runde,	2309169	 as sumHoechstgebotPng
	union select	65	as runde,	2319029	 as sumHoechstgebotPng
	union select	66	as runde,	2390078	 as sumHoechstgebotPng
	union select	67	as runde,	2400256	 as sumHoechstgebotPng
	union select	68	as runde,	2410609	 as sumHoechstgebotPng
	union select	69	as runde,	2421083	 as sumHoechstgebotPng
	union select	70	as runde,	2431731	 as sumHoechstgebotPng
	union select	71	as runde,	2445413	 as sumHoechstgebotPng
	union select	72	as runde,	2453802	 as sumHoechstgebotPng
	union select	73	as runde,	2490977	 as sumHoechstgebotPng
	union select	74	as runde,	2559941	 as sumHoechstgebotPng
	union select	75	as runde,	2571011	 as sumHoechstgebotPng
	union select	76	as runde,	2614581	 as sumHoechstgebotPng
	union select	77	as runde,	2647258	 as sumHoechstgebotPng
	union select	78	as runde,	2666298	 as sumHoechstgebotPng
	union select	79	as runde,	2680452	 as sumHoechstgebotPng
	union select	80	as runde,	2688914	 as sumHoechstgebotPng
	union select	81	as runde,	2697292	 as sumHoechstgebotPng
	union select	82	as runde,	2745325	 as sumHoechstgebotPng
	union select	83	as runde,	2760016	 as sumHoechstgebotPng
	union select	84	as runde,	2768623	 as sumHoechstgebotPng
	union select	85	as runde,	2775330	 as sumHoechstgebotPng
	union select	86	as runde,	2723297	 as sumHoechstgebotPng
	union select	87	as runde,	2729799	 as sumHoechstgebotPng
	union select	88	as runde,	2736090	 as sumHoechstgebotPng
	union select	89	as runde,	2803831	 as sumHoechstgebotPng
	union select	90	as runde,	2810147	 as sumHoechstgebotPng
	union select	91	as runde,	2823406	 as sumHoechstgebotPng
	union select	92	as runde,	2839418	 as sumHoechstgebotPng
	union select	93	as runde,	2917733	 as sumHoechstgebotPng
	union select	94	as runde,	2925016	 as sumHoechstgebotPng
	union select	95	as runde,	2934766	 as sumHoechstgebotPng
	union select	96	as runde,	2942315	 as sumHoechstgebotPng
	union select	97	as runde,	2945890	 as sumHoechstgebotPng
	union select	98	as runde,	2949644	 as sumHoechstgebotPng
	union select	99	as runde,	2953586	 as sumHoechstgebotPng
	union select	100	as runde,	2957725	 as sumHoechstgebotPng
	union select	101	as runde,	2962071	 as sumHoechstgebotPng
	union select	102	as runde,	2969690	 as sumHoechstgebotPng
	union select	103	as runde,	2974481	 as sumHoechstgebotPng
	union select	104	as runde,	2979512	 as sumHoechstgebotPng
	union select	105	as runde,	2986339	 as sumHoechstgebotPng
	union select	106	as runde,	3042685	 as sumHoechstgebotPng
	union select	107	as runde,	3053918	 as sumHoechstgebotPng
	union select	108	as runde,	3070946	 as sumHoechstgebotPng
	union select	109	as runde,	3078593	 as sumHoechstgebotPng
	union select	110	as runde,	3089108	 as sumHoechstgebotPng
	union select	111	as runde,	3107238	 as sumHoechstgebotPng
	union select	112	as runde,	3124550	 as sumHoechstgebotPng
	union select	113	as runde,	3131944	 as sumHoechstgebotPng
	union select	114	as runde,	3153380	 as sumHoechstgebotPng
	union select	115	as runde,	3169587	 as sumHoechstgebotPng
	union select	116	as runde,	3177514	 as sumHoechstgebotPng
	union select	117	as runde,	3185716	 as sumHoechstgebotPng
	union select	118	as runde,	3194039	 as sumHoechstgebotPng
	union select	119	as runde,	3202688	 as sumHoechstgebotPng
	union select	120	as runde,	3208235	 as sumHoechstgebotPng
	union select	121	as runde,	3216509	 as sumHoechstgebotPng
	union select	122	as runde,	3245041	 as sumHoechstgebotPng
	union select	123	as runde,	3385716	 as sumHoechstgebotPng
	union select	124	as runde,	3391518	 as sumHoechstgebotPng
	union select	125	as runde,	3418636	 as sumHoechstgebotPng
	union select	126	as runde,	3434272	 as sumHoechstgebotPng
	union select	127	as runde,	3444030	 as sumHoechstgebotPng
	union select	128	as runde,	3462499	 as sumHoechstgebotPng
	union select	129	as runde,	3478069	 as sumHoechstgebotPng
	union select	130	as runde,	3493318	 as sumHoechstgebotPng
	union select	131	as runde,	3509008	 as sumHoechstgebotPng
	union select	132	as runde,	3524932	 as sumHoechstgebotPng
	union select	133	as runde,	3541232	 as sumHoechstgebotPng
	union select	134	as runde,	3732251	 as sumHoechstgebotPng
	union select	135	as runde,	3788541	 as sumHoechstgebotPng
	union select	136	as runde,	3799437	 as sumHoechstgebotPng
	union select	137	as runde,	3808804	 as sumHoechstgebotPng
	union select	138	as runde,	3876488	 as sumHoechstgebotPng
	union select	139	as runde,	3920358	 as sumHoechstgebotPng
	union select	140	as runde,	3934742	 as sumHoechstgebotPng
	union select	141	as runde,	3949187	 as sumHoechstgebotPng
	union select	142	as runde,	3964142	 as sumHoechstgebotPng
	union select	143	as runde,	3971697	 as sumHoechstgebotPng
	union select	144	as runde,	3977822	 as sumHoechstgebotPng
	union select	145	as runde,	3987791	 as sumHoechstgebotPng
	union select	146	as runde,	4044533	 as sumHoechstgebotPng
	union select	147	as runde,	4060396	 as sumHoechstgebotPng
	union select	148	as runde,	4076495	 as sumHoechstgebotPng
	union select	149	as runde,	4093249	 as sumHoechstgebotPng
	union select	150	as runde,	4101578	 as sumHoechstgebotPng
	union select	151	as runde,	4110195	 as sumHoechstgebotPng
	union select	152	as runde,	4116947	 as sumHoechstgebotPng
	union select	153	as runde,	4144037	 as sumHoechstgebotPng
	union select	154	as runde,	4181134	 as sumHoechstgebotPng
	union select	155	as runde,	4199850	 as sumHoechstgebotPng
	union select	156	as runde,	4211260	 as sumHoechstgebotPng
	union select	157	as runde,	4230948	 as sumHoechstgebotPng
	union select	158	as runde,	4248949	 as sumHoechstgebotPng
	union select	159	as runde,	4272452	 as sumHoechstgebotPng
	union select	160	as runde,	4295115	 as sumHoechstgebotPng
	union select	161	as runde,	4314145	 as sumHoechstgebotPng
	union select	162	as runde,	4342713	 as sumHoechstgebotPng
	union select	163	as runde,	4382283	 as sumHoechstgebotPng
	union select	164	as runde,	4420078	 as sumHoechstgebotPng
	union select	165	as runde,	4482037	 as sumHoechstgebotPng
	union select	166	as runde,	4503213	 as sumHoechstgebotPng
	union select	167	as runde,	4515794	 as sumHoechstgebotPng
	union select	168	as runde,	4576241	 as sumHoechstgebotPng
	union select	169	as runde,	4736507	 as sumHoechstgebotPng
	union select	170	as runde,	4767355	 as sumHoechstgebotPng
	union select	171	as runde,	4793814	 as sumHoechstgebotPng
	union select	172	as runde,	4954193	 as sumHoechstgebotPng
	union select	173	as runde,	4360506	 as sumHoechstgebotPng
	union select	174	as runde,	5063509	 as sumHoechstgebotPng
	union select	175	as runde,	5067409	 as sumHoechstgebotPng
	union select	176	as runde,	5071305	 as sumHoechstgebotPng
	union select	177	as runde,	5077286	 as sumHoechstgebotPng
	union select	178	as runde,	5081236	 as sumHoechstgebotPng
	union select	179	as runde,	5081236	 as sumHoechstgebotPng
	union select	180	as runde,	5081236	 as sumHoechstgebotPng
	union select	181	as runde,	5081236	 as sumHoechstgebotPng

) a

left join 

(

	select runde, sum(hoechstgebot) as sumHoechstgebotDb
	from frequenzauktion2015
	group by runde
    
) b 

on a.runde = b.runde

group by ifnull(a.runde,b.runde)
having sum(sumHoechstgebotPng) != sum(sumHoechstgebotDb)

order by diff 

