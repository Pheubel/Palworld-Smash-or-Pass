extends Node

const DEFINITION_DIR: String = "res://pals/definitions/"

#region Pals

const LAMBALL := preload("uid://yx4ta7njkwlc")
const CATTIVA := preload("uid://cuerpetxejtye")
const CHIKIPI := preload("uid://xqr5mrotpkm7")
const LIFMUNK := preload("uid://ba75sqo8802bc")
const FUACK := preload("uid://b1r6od5twqmox")
const FUACK_IGNIS := preload("uid://b0i270tsttcrx")
const VIXY := preload("uid://7ptvwrhyh26a")
const CELARAY := preload("uid://p0624ab2jh2t")
const CELARAY_LUX := preload("uid://bncaicvwkou7u")
const CREMIS := preload("uid://dxhfu5ggykmj2")
const CROAJIRO := preload("uid://ha6b33wh40qs")
const CROAJIRO_NOCT := preload("uid://nvpaw4g6vcv")
const HERBIL := preload("uid://dt25ojci0mxx8")
const TEAFANT := preload("uid://bscq1xt4pc8rc")
const GUMOSS := preload("uid://dsgw2tufy8thk")
const PUPPERAI := preload("uid://bgudfm1vkgqyf")
const CLOVEE := preload("uid://c770646rjx6nw")
const JOLTHOG := preload("uid://ckginmg24bljq")
const JOLTHOG_CRYST := preload("uid://db6gbbjlqju5g")
const DEPRESSO := preload("uid://r206how5vk1s")
const PENGULLET := preload("uid://cq1hy0cw6dwgk")
const PENGULLET_LUX := preload("uid://54gt432m52jk")
const PENKING := preload("uid://d330om20p6lb2")
const PENKING_LUX := preload("uid://cqwhhuyjpugs5")
const HOOCRATES := preload("uid://vmakou3wndwv")
const MELPACA := preload("uid://cry72teh8d6na")
const KINGPACA := preload("uid://daod7h8u7nsol")
const KINGPACA_CRYST := preload("uid://b8j4qip56bebd")
const DAEDREAM := preload("uid://cfpx40wfoort")
const TANZEE := preload("uid://beqpg8c6t0ri2")
const NOX := preload("uid://ths47apx2u8u")
const FLAMBELLE := preload("uid://c3q1aa7vho6wy")
const ROOBY := preload("uid://ckrr7mann1eb8")
const MAU := preload("uid://d32i3iaqo4rbi")
const MAU_CRYST := preload("uid://dpqwxy7bfnrtk")
const RUSHOAR := preload("uid://dajsf60obecao")
const FOXPARKS := preload("uid://bj3xmlwr1km47")
const FOXPARKS_CRYST := preload("uid://dtlnso3bilc2e")
const KILLAMARI := preload("uid://dx4ulgv3thf50")
const KILLAMARI_PRIMO := preload("uid://br36woa00e0ax")
const FUDDLER := preload("uid://bnb02w8fxa5pe")
const EIKTHYRDEER := preload("uid://dvg4nn6kmbawx")
const EIKTHYRDEER_TERRA := preload("uid://j5sngpi63sq")
const DIREHOWL := preload("uid://dbdq23uomj784")
const CAPRITY := preload("uid://cymqnveqhaosr")
const CAPRITY_NOCT := preload("uid://t6qrmy7oexih")
const SWEE := preload("uid://bdon3lo3ofl8w")
const SWEEPA := preload("uid://dd0g3cxem6176")
const TURTACLE := preload("uid://cln12amr2c11t")
const TURTACLE_TERRA := preload("uid://cuwel1qqp71hk")
const HANGYU := preload("uid://dw415suhlif4p")
const HANGYU_CRYST := preload("uid://bu5djn1ch6j4e")
const WOOLIPOP := preload("uid://dj7cd16u6qvve")
const WOOLIPOP_TERRA := preload("uid://duo8eldnqm6r5")
const MOZZARINA := preload("uid://c07wyv1pap2wg")
const AZUROBE := preload("uid://b87qvpo81jwpu")
const AZUROBE_CRYST := preload("uid://cujsyiacqhueo")
const SPARKIT := preload("uid://cks2sx4y54pv1")
const KELPSEA := preload("uid://u8se7voillpm")
const KELPSEA_IGNIS := preload("uid://clnuhjtjtx3w7")
const RIBBUNY := preload("uid://bldgir8ban535")
const RIBBUNY_BOTAN := preload("uid://dicf1pw22umfo")
const JELLIETTE := preload("uid://ewklwr75vihd")
const JELLROY := preload("uid://d4h7xbx7fbrt2")
const AMIONE := preload("uid://bgipvh1jan2hq")
const GLOOPIE := preload("uid://xmsil5v62o7x")
const GLOOPIE_PRIMO := preload("uid://cjen2agb6grok")
const GALECLAW := preload("uid://bak57878j5sks")
const WISPAW := preload("uid://cufefo0qe6pc8")
const NITEWING := preload("uid://jj41k3180nnm")
const TOMBAT := preload("uid://bvn5fa782pgrc")
const TOCOTOCO := preload("uid://dcwfqhlkxyxft")
const UNIVOLT := preload("uid://jj6mrmsx5nbv")
const UNIVOLT_CRYST := preload("uid://dm2lmnncx6bku")
const GOBFIN := preload("uid://10mul35qhkmv")
const GOBFIN_IGNIS := preload("uid://cs68hh3xm61ue")
const LOUPMOON := preload("uid://dqwga78vokn07")
const LOUPMOON_CRYST := preload("uid://em71mjtw2ump")
const CAWGNITO := preload("uid://ca3gwgrnhste8")
const ARSOX := preload("uid://ivf1773s5tln")
const MUFFLY := preload("uid://tenx45etasti")
const BRISTLA := preload("uid://dyk4jfgy3m7rw")
const CINNAMOTH := preload("uid://dgxgyj46ukq2l")
const PUFFOLT := preload("uid://yrebmjfjydfq")
const ELPHIDRAN := preload("uid://b5m3fv4xyqea4")
const ELPHIDRAN_AQUA := preload("uid://f30meborthoe")
const VANWYRM := preload("uid://dhuvokougc6aa")
const VANWYRM_CRYST := preload("uid://c7n0eae1iwsjg")
const FELBAT := preload("uid://m76qxaky12fj")
const VAELET := preload("uid://ctnkiwt1a8u54")
const BEEGARDE := preload("uid://j2p5mm6heuru")
const ELIZABEE := preload("uid://dpqh1a4ta5482")
const LOVANDER := preload("uid://c1e6d6wes4j32")
const GRINTALE := preload("uid://wbia067d6dbm")
const TARANTRISS := preload("uid://388arys0hsuu")
const POLAPUP := preload("uid://00oeo5abnia0")
const POLAPUP_TERRA := preload("uid://b84pu8tivo88i")
const LEEZPUNK := preload("uid://0tngycd43r3n")
const LEEZPUNK_IGNIS := preload("uid://dif6yvkfyno7p")
const GORIRAT := preload("uid://cr6s6li03jo8t")
const GORIRAT_TERRA := preload("uid://dbhn2ybevo85h")
const SURFENT := preload("uid://5swe8bwf0nht")
const SURFENT_TERRA := preload("uid://bs3mjeyoovl3r")
const ROBINQUILL := preload("uid://c5jmcoqxwjgjj")
const ROBINQUILL_TERRA := preload("uid://xknoslarb1x6")
const FLOPIE := preload("uid://dp6ci3cavyb05")
const WIXEN := preload("uid://ckwu57vwhn5u5")
const WIXEN_NOCT := preload("uid://cnhcve4op7yky")
const KATRESS := preload("uid://drx65yvwk7dp1")
const KATRESS_IGNIS := preload("uid://ca042m0661nir")
const HELZEPHYR := preload("uid://3gk5rn2q2cha")
const HELZEPHYR_LUX := preload("uid://vcc8nuxp2ser")
const ELGROVE := preload("uid://bcv8llrqdobug")
const ELGROVE_CRYST := preload("uid://denbhqve55w2f")
const LUNARIS := preload("uid://b718q71jap5r3")
const FENGLOPE := preload("uid://c0uoagsxwqrrh")
const FENGLOPE_LUX := preload("uid://dplacdcn4tm2r")
const DINOSSOM := preload("uid://d0kio47nm24ib")
const DINOSSOM_LUX := preload("uid://ddlp1ln46d2pl")
const BUSHI := preload("uid://b2o3fexhgw651")
const BUSHI_NOCT := preload("uid://dqg71geojhsw4")
const MUNCHILL := preload("uid://0i7mssgi7tuw")
const MAMMOREST := preload("uid://d35wtuti32u6q")
const MAMMOREST_CRYST := preload("uid://bmhjpfctqg8fw")
const FINSIDER := preload("uid://bys3rpws3ix4f")
const FINSIDER_IGNIS := preload("uid://cg4gr4ood46fq")
const PETALLIA := preload("uid://cuglmiwouwgtl")
const PETALLIA_IGNIS := preload("uid://dtud6cscqakc0")
const LEAFAN := preload("uid://cwkgq838naaic")
const INCINERAM := preload("uid://bdw4014gowv1f")
const INCINERAM_NOCT := preload("uid://bmmgc8x8sqvr3")
const DAZZI := preload("uid://bwwvwpo138nep")
const DAZZI_NOCT := preload("uid://cmh5frlhssnem")
const PYRIN := preload("uid://easaty8kjsds")
const PYRIN_NOCT := preload("uid://tb5vmey8hiva")
const RELAXAURUS := preload("uid://63l3xmoa3g7f")
const RELAXAURUS_LUX := preload("uid://5jp41vde8skt")
const FOXCICLE := preload("uid://dib5t3ha5dng4")
const BEAKON := preload("uid://bp02icf03uf5d")
const BEAKON_CRYST := preload("uid://cyfo67vt7jd3q")
const GHANGLER := preload("uid://balc4g2c0qfaw")
const GHANGLER_IGNIS := preload("uid://bouhay3i3e7un")
const RAYHOUND := preload("uid://bopalg1wdr0f0")
const RAYHOUND_CRYST := preload("uid://bq7hmtxrn3yqv")
const MENASTING := preload("uid://dlo1dbc2rcui3")
const MENASTING_TERRA := preload("uid://e1b43bj5w2hp")
const NEEDOLL := preload("uid://032csysdrv1p")
const NEEDOLL_NOCT := preload("uid://cynlcpk2m8m55")
const REINDRIX := preload("uid://dth23xanc1dyp")
const MOSSANDA := preload("uid://bmdgt6baqkltc")
const MOSSANDA_LUX := preload("uid://b0t5fj8piqndy")
const CHILLET := preload("uid://25jc6mawc0og")
const CHILLET_IGNIS := preload("uid://b0n28c0ul57l")
const RAGNAHAWK := preload("uid://vc8nekxxyap5")
const MOLDRON := preload("uid://c7lu32lglol64")
const MOLDRON_CRYST := preload("uid://b2a7nysidj083")
const PALUMBA := preload("uid://1nwcuwputtyg")
const DIGTOISE := preload("uid://dywujglgw0qjq")
const BRONCHERRY := preload("uid://c7jt8nmpabhxc")
const BRONCHERRY_AQUA := preload("uid://dba4dfrx4de0t")
const DUMUD := preload("uid://x3sg3taxpkn0")
const DUMUD_GILD := preload("uid://cpftbqtiyy85b")
const BRALOHA := preload("uid://55ea84ha6lp3")
const KITSUN := preload("uid://03lpl1ia5s73")
const KITSUN_NOCT := preload("uid://c0rl1exgcaf34")
const BLAZEHOWL := preload("uid://ba8rb7leocp8e")
const BLAZEHOWL_NOCT := preload("uid://w60qrluv4nt1")
const WARSECT := preload("uid://d37t53gklyy8l")
const WARSECT_TERRA := preload("uid://cgus0fvksqfwb")
const FROSTPLUME := preload("uid://bop58vapu7foh")
const MAJEX := preload("uid://dfk4ap4mcjq5a")
const SIBELYX := preload("uid://u0xelw3ea1mo")
const SIBELYX_PRIMO := preload("uid://dlrg2w35ein2s")
const MARAITH := preload("uid://d2fratgatlbam")
const SHROOMER := preload("uid://bgh6fnfymhrdy")
const SHROOMER_NOCT := preload("uid://dfdp7aelihsvw")
const ICELYN := preload("uid://dusumbjglc1i")
const GILDRA := preload("uid://bxq86fa7ox6yg")
const JORMUNTIDE := preload("uid://dq8qkput8hn83")
const JORMUNTIDE_IGNIS := preload("uid://i81gl26st73q")
const SUZAKU := preload("uid://dq50g16c43wlv")
const SUZAKU_AQUA := preload("uid://fdo7vitg6u13")
const DAZEMU := preload("uid://bcyn0xy4el6b6")
const QUIVERN := preload("uid://byx8edhs8vl1v")
const QUIVERN_BOTAN := preload("uid://b52h3yfqj584f")
const LULLU := preload("uid://caxiwe4r6rtw4")
const KIKIT := preload("uid://342le3l5g0d0")
const YAKUMO := preload("uid://cgo441eerhavg")
const SKUTLASS := preload("uid://2tcnixe2i6d5")
const SKUTLASS_IGNIS := preload("uid://dxr4jg7l5ff2k")
const REPTYRO := preload("uid://b3884gulmsil1")
const REPTYRO_CRYST := preload("uid://bk7jnkuaatam5")
const STARRYON := preload("uid://ckwfwqv20u5mw")
const STARRYON_PRIMO := preload("uid://tp7rlqkamib0")
const PIERDON := preload("uid://dnjpdq6srd33g")
const PIERDON_CRYST := preload("uid://ba6mjue25m5p6")
const CRYOLINX := preload("uid://b11f3fcb5emvf")
const CRYOLINX_TERRA := preload("uid://csnvyp47an2uh")
const SNUGLOO := preload("uid://dap1qgnspohc5")
const WUMPO := preload("uid://b5qfmgka0q5a6")
const WUMPO_BOTAN := preload("uid://chxw5yjaabso7")
const SOOTSEER := preload("uid://c2j44dy7opohf")
const CARNIBORA := preload("uid://b6dxe3j7xkqk0")
const BLAZAMUT := preload("uid://k2h6xuxk5v7i")
const BLAZAMUT_RYU := preload("uid://bbr78tt71dxbu")
const DUALITH := preload("uid://cf05h67cygw33")
const DUALITH_NOCT := preload("uid://dlac7g1px834g")
const ANUBIS := preload("uid://sedyaatsu30b")
const SEKHMET := preload("uid://v2trkwywubxo")
const PRIXTER := preload("uid://beeqoowurr83x")
const PRIXTER_LUX := preload("uid://cauewmecspa67")
const TETROISE := preload("uid://ddi1rld4nnw0t")
const TETROISE_PRIMO := preload("uid://cjalj4ahx8nm3")
const NYAFIA := preload("uid://c2lksp5r8idw7")
const MIMOG := preload("uid://cvec2kcj4r5fj")
const XENOVADER := preload("uid://fml0r3lg18b7")
const XENOGARD := preload("uid://cyaeml0ncpv7l")
const PRUNELIA := preload("uid://cck6hp1p2sa0g")
const NITEMARY := preload("uid://dkgo00b4n4xod")
const NITEMARY_BOTAN := preload("uid://d2px5uhnpauq7")
const SMOKIE := preload("uid://b3cerddqnra1f")
const SMOKIE_CRYST := preload("uid://bs1k5b6lkin5p")
const OMASCUL := preload("uid://q3xdjdbyldqw")
const WHALASKA := preload("uid://bydmktc1ashlb")
const WHALASKA_IGNIS := preload("uid://bwot47jdw8dkd")
const VERDASH := preload("uid://c6bth0tsix0p7")
const SPLATTERINA := preload("uid://hipeehy1ctu")
const GILDANE := preload("uid://dfcq7dmtdqv2l")
const DOGEN := preload("uid://c7avddr7uucjt")
const BULLDOSU := preload("uid://byl0mpuwwgu1h")
const CELESDIR := preload("uid://bn6q1qigtulww")
const CELESDIR_NOCT := preload("uid://1dsnnelqnn7k")
const ASTEGON := preload("uid://cw7x0d40rbop8")
const KNOCKLEM := preload("uid://bbdhrps420uqo")
const KNOCKLEM_IGNIS := preload("uid://dsr5xdgeb5r8w")
const SILVEGIS := preload("uid://dvter8vfn75xv")
const AZURMANE := preload("uid://c0e4ikybipl52")
const VALENTAIL := preload("uid://ch8q3u0526bii")
const SNOCK := preload("uid://bbslcookoyull")
const SNOCK_TERRA := preload("uid://cymknalw7sx3h")
const SOUFFLINE := preload("uid://ct8tuhwo7ln80")
const LAPIRON := preload("uid://bnnlvh5ugaewi")
const HOODLE := preload("uid://c8q6dm22niqvd")
const SLOWATT := preload("uid://1uj6cm1d0ld7")
const BAKEMI := preload("uid://b5dsmew0c4ps2")
const SOLMORA := preload("uid://bmfsjdaau4w7y")
const SOLMORA_LUX := preload("uid://pmxboad3s7gk")
const LAPURE := preload("uid://x4tinoxh6bop")
const EIDROLON := preload("uid://bmayc12m1q4jf")
const EIDROLON_IGNIS := preload("uid://b1035fkm1ahdr")
const DYNAMOFF := preload("uid://ctnut4tibyden")
const TROPICAW := preload("uid://bvbv1486jrgx4")
const FLARACLE := preload("uid://kavffjx6bjdp")
const OPHYDIA := preload("uid://coq7awubsstcl")
const DUPIN := preload("uid://bx3glemit5rek")
const ROUJAY := preload("uid://cqbk1pn2tax2t")
const VENUSA := preload("uid://brwfitmdl8o01")
const MYCORA := preload("uid://1kgec5gi7nwl")
const LOOMEN := preload("uid://cow830lcbp1gp")
const WISTELLA := preload("uid://qaf842rq61ta")
const SOLENNE := preload("uid://dlr2nhpof56lm")
const RENJISHI := preload("uid://bbifa3xhwlq4l")
const AEGIDRON := preload("uid://c4pun0052bfl4")
const GRIZZBOLT := preload("uid://b7euil7f5o3j0")
const LYLEEN := preload("uid://bj8hy15e88kjo")
const LYLEEN_NOCT := preload("uid://cbihcvt7j5g6s")
const ORSERK := preload("uid://gd3o8ilxaf5x")
const FALERIS := preload("uid://dw0r6mj7tui06")
const FALERIS_AQUA := preload("uid://csm1v130p8nuy")
const SHADOWBEAK := preload("uid://mjuegnijvuf3")
const SELYNE := preload("uid://dkg6pgnd3fe1p")
const BASTIGOR := preload("uid://cdlnum4kbq4m1")
const SHAOLONG := preload("uid://h1hpjkc0npld")
const SILVANCE := preload("uid://dqr5f3bulmr4m")
const DANDILORD := preload("uid://6c6r2f71hsd7")
const BELLANOIR := preload("uid://dcwkbuemxe5xd")
const BELLANOIR_LIBERO := preload("uid://bee2b7a8wkuev")
const XENOLORD := preload("uid://ctnjqm5rvey0w")
const HARTALIS := preload("uid://rbmeelxsu370")
const PALADIUS := preload("uid://5xemuxdfagks")
const NECROMUS := preload("uid://ciuqs8kijhi2c")
const FROSTALLION := preload("uid://c1tads3cwptux")
const FROSTALLION_NOCT := preload("uid://d13m3f1jy3wgs")
const NEPTILIUS := preload("uid://bmpq1buijntdm")
const JETRAGON := preload("uid://bxttok7hau3cg")
const PANTHALUS := preload("uid://yj7gwk605fuq")
const ASTRALYM := preload("uid://dtdpdy8d7k8jw")

#endregion


var pals: Array[PalResource] = [
	LAMBALL,
	CATTIVA,
	CHIKIPI,
	LIFMUNK,
	FUACK,
	FUACK_IGNIS,
	VIXY,
	CELARAY,
	CELARAY_LUX,
	CREMIS,
	CROAJIRO,
	CROAJIRO_NOCT,
	HERBIL,
	TEAFANT,
	GUMOSS,
	PUPPERAI,
	CLOVEE,
	JOLTHOG,
	JOLTHOG_CRYST,
	DEPRESSO,
	PENGULLET,
	PENGULLET_LUX,
	PENKING,
	PENKING_LUX,
	HOOCRATES,
	MELPACA,
	KINGPACA,
	KINGPACA_CRYST,
	DAEDREAM,
	TANZEE,
	NOX,
	FLAMBELLE,
	ROOBY,
	MAU,
	MAU_CRYST,
	RUSHOAR,
	FOXPARKS,
	FOXPARKS_CRYST,
	KILLAMARI,
	KILLAMARI_PRIMO,
	FUDDLER,
	EIKTHYRDEER,
	EIKTHYRDEER_TERRA,
	DIREHOWL,
	CAPRITY,
	CAPRITY_NOCT,
	SWEE,
	SWEEPA,
	TURTACLE,
	TURTACLE_TERRA,
	HANGYU,
	HANGYU_CRYST,
	WOOLIPOP,
	WOOLIPOP_TERRA,
	MOZZARINA,
	AZUROBE,
	AZUROBE_CRYST,
	SPARKIT,
	KELPSEA,
	KELPSEA_IGNIS,
	RIBBUNY,
	RIBBUNY_BOTAN,
	JELLIETTE,
	JELLROY,
	AMIONE,
	GLOOPIE,
	GLOOPIE_PRIMO,
	GALECLAW,
	WISPAW,
	NITEWING,
	TOMBAT,
	TOCOTOCO,
	UNIVOLT,
	UNIVOLT_CRYST,
	GOBFIN,
	GOBFIN_IGNIS,
	LOUPMOON,
	LOUPMOON_CRYST,
	CAWGNITO,
	ARSOX,
	MUFFLY,
	BRISTLA,
	CINNAMOTH,
	PUFFOLT,
	ELPHIDRAN,
	ELPHIDRAN_AQUA,
	VANWYRM,
	VANWYRM_CRYST,
	FELBAT,
	VAELET,
	BEEGARDE,
	ELIZABEE,
	LOVANDER,
	GRINTALE,
	TARANTRISS,
	POLAPUP,
	POLAPUP_TERRA,
	LEEZPUNK,
	LEEZPUNK_IGNIS,
	GORIRAT,
	GORIRAT_TERRA,
	SURFENT,
	SURFENT_TERRA,
	ROBINQUILL,
	ROBINQUILL_TERRA,
	FLOPIE,
	WIXEN,
	WIXEN_NOCT,
	KATRESS,
	KATRESS_IGNIS,
	HELZEPHYR,
	HELZEPHYR_LUX,
	ELGROVE,
	ELGROVE_CRYST,
	LUNARIS,
	FENGLOPE,
	FENGLOPE_LUX,
	DINOSSOM,
	DINOSSOM_LUX,
	BUSHI,
	BUSHI_NOCT,
	MUNCHILL,
	MAMMOREST,
	MAMMOREST_CRYST,
	FINSIDER,
	FINSIDER_IGNIS,
	PETALLIA,
	PETALLIA_IGNIS,
	LEAFAN,
	INCINERAM,
	INCINERAM_NOCT,
	DAZZI,
	DAZZI_NOCT,
	PYRIN,
	PYRIN_NOCT,
	RELAXAURUS,
	RELAXAURUS_LUX,
	FOXCICLE,
	BEAKON,
	BEAKON_CRYST,
	GHANGLER,
	GHANGLER_IGNIS,
	RAYHOUND,
	RAYHOUND_CRYST,
	MENASTING,
	MENASTING_TERRA,
	NEEDOLL,
	NEEDOLL_NOCT,
	REINDRIX,
	MOSSANDA,
	MOSSANDA_LUX,
	CHILLET,
	CHILLET_IGNIS,
	RAGNAHAWK,
	MOLDRON,
	MOLDRON_CRYST,
	PALUMBA,
	DIGTOISE,
	BRONCHERRY,
	BRONCHERRY_AQUA,
	DUMUD,
	DUMUD_GILD,
	BRALOHA,
	KITSUN,
	KITSUN_NOCT,
	BLAZEHOWL,
	BLAZEHOWL_NOCT,
	WARSECT,
	WARSECT_TERRA,
	FROSTPLUME,
	MAJEX,
	SIBELYX,
	SIBELYX_PRIMO,
	MARAITH,
	SHROOMER,
	SHROOMER_NOCT,
	ICELYN,
	GILDRA,
	JORMUNTIDE,
	JORMUNTIDE_IGNIS,
	SUZAKU,
	SUZAKU_AQUA,
	DAZEMU,
	QUIVERN,
	QUIVERN_BOTAN,
	LULLU,
	KIKIT,
	YAKUMO,
	SKUTLASS,
	SKUTLASS_IGNIS,
	REPTYRO,
	REPTYRO_CRYST,
	STARRYON,
	STARRYON_PRIMO,
	PIERDON,
	PIERDON_CRYST,
	CRYOLINX,
	CRYOLINX_TERRA,
	SNUGLOO,
	WUMPO,
	WUMPO_BOTAN,
	SOOTSEER,
	CARNIBORA,
	BLAZAMUT,
	BLAZAMUT_RYU,
	DUALITH,
	DUALITH_NOCT,
	ANUBIS,
	SEKHMET,
	PRIXTER,
	PRIXTER_LUX,
	TETROISE,
	TETROISE_PRIMO,
	NYAFIA,
	MIMOG,
	XENOVADER,
	XENOGARD,
	PRUNELIA,
	NITEMARY,
	NITEMARY_BOTAN,
	SMOKIE,
	SMOKIE_CRYST,
	OMASCUL,
	WHALASKA,
	WHALASKA_IGNIS,
	VERDASH,
	SPLATTERINA,
	GILDANE,
	DOGEN,
	BULLDOSU,
	CELESDIR,
	CELESDIR_NOCT,
	ASTEGON,
	KNOCKLEM,
	KNOCKLEM_IGNIS,
	SILVEGIS,
	AZURMANE,
	VALENTAIL,
	SNOCK,
	SNOCK_TERRA,
	SOUFFLINE,
	LAPIRON,
	HOODLE,
	SLOWATT,
	BAKEMI,
	SOLMORA,
	SOLMORA_LUX,
	LAPURE,
	EIDROLON,
	EIDROLON_IGNIS,
	DYNAMOFF,
	TROPICAW,
	FLARACLE,
	OPHYDIA,
	DUPIN,
	ROUJAY,
	VENUSA,
	MYCORA,
	LOOMEN,
	WISTELLA,
	SOLENNE,
	RENJISHI,
	AEGIDRON,
	GRIZZBOLT,
	LYLEEN,
	LYLEEN_NOCT,
	ORSERK,
	FALERIS,
	FALERIS_AQUA,
	SHADOWBEAK,
	SELYNE,
	BASTIGOR,
	SHAOLONG,
	SILVANCE,
	DANDILORD,
	BELLANOIR,
	BELLANOIR_LIBERO,
	XENOLORD,
	HARTALIS,
	PALADIUS,
	NECROMUS,
	FROSTALLION,
	FROSTALLION_NOCT,
	NEPTILIUS,
	JETRAGON,
	PANTHALUS,
	ASTRALYM,
]
var _pal_name_lookup: Dictionary[String, PalResource] = {}


func _ready() -> void:
	_build_lookup()


func get_pal(pal_name: String) -> PalResource:
	return _pal_name_lookup.get(pal_name)


func _build_lookup() -> void:
	for pal in pals:
		_pal_name_lookup.set(pal.resource_name, pal)
