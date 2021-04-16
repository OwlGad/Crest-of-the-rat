weekly11 = ReplayInfo.new("weekly11", [
    "343487-20661105",
    "14422-20660958",
    "481907-20660901",
    "354255-20661293",
    "453279-20660876",
    "534677-20660866",
    "343487-20662188",
    "479696-20662198",
    "332143-20662538",
    "362746-20661893",
    "14422-20661982",
    "362746-20663002",
    "332143-20663038",
    "534677-20662733",
    "14422-20663529",
    "14422-20664735",
    "332143-20666201",
])

ycs_dino_devestation = ReplayInfo.new("ycs_dino_devestation", [
    "534677-20358748",
    "453279-20358512",
    "453279-20368153",
    "453279-20342563",
    "509709-20336290",
    "282034-20334065",
    "534677-20328742",
    "106930-20327304",
    "122221-20321965",
    "534677-20302578",
    "509709-20298155",
    "481907-20297741",
    "106930-20294493",
    "332143-20285453",
    "479696-20282953",
    "122221-20245875",
    "481907-20242298",
    "453279-20218752",
    "509709-20216464",
    "474911-20209140",
    "332143-20205828",
    "481907-20276153",
    "474911-20275626",
    "123-20274886",
    "349034-20273099",
    "453279-20263864",
    "106930-20263685",
    "282034-20258524",
    "192142-20257417",
    "332143-20247226",
    "123-20199561",
    "14422-20199440",
    "192142-20193869",
    "106930-20186553",
    "343043-20183028",
    "509709-20181680",
    "205781-20175212",
    "453279-20168782",
    "356-20167424",
    "479696-20167096",
    "441001-20166224I",
])

# note: missing replay
weekly12 = ReplayInfo.new("weekly12", [
    "77474-20835283",
    "332143-20835190",
    "453279-20835247",
    "332143-20835986",
    "349034-20836022",
    "163270-20835724&",
    "453279-20836359",
    "349034-20836864",
    "453279-20836986",
    "332143-20837515",
    "205781-20836741",
    "205781-20837511",
    "205781-20838212",
    "453279-20838314",
    "488933-20838937",
    "488933-20839571",
])

# madness; missing replay
exu_1_year_anniversary = ReplayInfo.new("exu_1_year_anniversary", [
    "479696-20858956",
    "205781-20859136",
    "349034-20859188",
    "441001-20858945",
    "343487-20859256",
    "481907-20859026",
    "205781-20859722",
    "343487-20860117",
    "509709-20860803",
    "205781-20861010",
    "205781-20861351",
])

weekly10 = ReplayInfo.new("weekly10", [
    "77474-20488301",
    "332143-20488300",
    "452058-20488555",
    "77474-20488753",
    "406828-20488198",
    "334828-20488224",
    "77474-20489166",
    "441001-20488658",
    "205781-20488795",
    "349034-20488681",
    "282034-20489985",
    "332143-20490309",
    "349034-20490343",
    "354255-20490321",
    "343487-20490749",
    "406828-20490771",
    "343487-20491406",
    "77474-20491966",
    "77474-20493014",
    "406828-20493741",
])

weeklies10_12 = weekly10.merge("weeklies10_12", weekly11, weekly12)

weekly13 = ReplayInfo.new("weekly13", [
    "205781-21013134",
    "481907-21013038",
    "441001-21013148",
    "453279-21014399",
    "282034-21014491",
    "481907-21015199",
    "481907-21015647",
    "474911-21014762",
    "481907-21016447",
    "205781-21016633",
])

weekly14 = ReplayInfo.new("weekly14", [
    "212949-21200034",
    "205781-21200325",
    "481907-21200024",
    "106930-21200581",
    "332143-21200551",
    "462598-21200495",
    "479696-21200217",
    "205781-21201254",
    "332143-21201562",
    "349034-21201625",
    "481907-21201648",
    "474911-21201841",
    "349034-21202442",
    "122221-21202457",
    "212949-21202196",
    "106930-21202638",
    "462598-21202875",
    "84755-21203061",
    "481907-21203519",
    "332143-21203186",
    "122221-21203311",
    "332143-21203186",
    "84755-21205047",
    "84755-21205547",
])

weeklies10_14 = weeklies10_12.merge("weeklies10_14", weekly13, weekly14)

weekly15 = ReplayInfo.new("weekly15", [
    "349034-21634823",
    "3335-21634931",
    "205781-21635190",
    "488933-21635287",
    "349034-21635729",
    "453279-21635484",
    "349034-21637789",
    "205781-21637490",
    "481907-21638233",
    "481907-21639529",
    "488933-21636552",
    "349034-21640219",
    "349034-21640580",
])

weekly16 = ReplayInfo.new("weekly16", [
    "123-22032884",
    "447576-22032812",
    "406828-22032890",
    "441001-22032838",
    "481907-22032842",
    "3335-22033316",
    "422058-22033316",
    "481907-22033844",
    "447576-22033713",
    "447576-22034512",
    "481907-22035212",
    "447576-22035695",
])

weekly17 = ReplayInfo.new("weekly17", [
    "223396-22215973",
    "469397-22216302",
    "559346-22216315",
    "441001-22216065",
    "212949-22216123",
    "559346-22217307",
    "14422-22216053",
    "481907-22217205",
    "14422-22218072",
    "481907-22218301",
    "212949-22218904",
    "14422-22220837",
])

#older tournament
ycs_codename = ReplayInfo.new("ycs_codename", [
    "481907-19519717",
    "332143-19520187",
    "223396-19519906",
    "191318-19520284",
    "453279-19520806",
    "270948-19521280",
    "14422-19521422",
    "123-19522145",
    "106930-19529897",
    "343043-19536169",
    "441001-19539875",
    "349034-19551371",
    "14422-19553349",
    "123-19563347",
    "223396-19563936",
    "191318-19564783",
    "453279-19567939",
    "344433-19573139",
    "462598-19574377",
    "481907-19575989",
    "488933-19570468",
    "270948-19587941",
    "406828-19590891",
    "453279-19592838",
    "106930-19596152",
    "509709-19596541",
    "191318-19597977",
    "192142-19598612",
    "123-19612205",
    "270948-19618696",
    "441001-19619190",
    "441001-19619742",
    "481907-19621768",
    "354255-19624980",
    "123-19625704",
    "106930-19626568",
    "452058-19634312",
    "282034-19634438",
    "441001-19634585",
    "509709-19633962",
    "332143-19635001",
    "349034-19643012",
    "191318-19653178",
    "191318-19653291",
    "332143-19657159",
    "106930-19659774",
    "453279-19660526",
    "509709-19664193",
    "343043-19678836",
    "282034-19679733",
    "332143-19702985",
    "332143-19712813",
])

weekly7 = ReplayInfo.new("weekly7", [
    "481907-19809221",
    "481907-19810062",
    "332143-19809772",
    "349034-19809531",
    "123-19810899",
    "332143-19811196",
    "192142-19811165",
    "349034-19811326",
    "349034-19813276",
    "349034-19815703",
])

weekly8 = ReplayInfo.new("weekly8", [
    "14422-19977494",
    "349034-19977321",
    "362746-19977489",
    "481907-19977315",
    "481907-19978164",
    "205781-19978175",
    "488933-19978066",
    "481907-19979299",
    "362746-19979100",
    "332143-19979491",
    "332143-19980452",
    "488933-19980008",
    "332143-19981206",
    "14422-19980990",
    "332143-19981718",
])

weekly9 = ReplayInfo.new("weekly9", [
    "106930-20144071",
    "479696-20144568",
    "106930-20146149",
    "3335-20147579",
    "3335-20148700",
    "441001-20166224",
    "479696-20167096",
    "356-20167424",
    "453279-20168782",
])

ladder = ReplayInfo.new("ladder", [
    "205781-20945615", #8-26-2020
    "453279-20958986", #8-26-2020
    "343043-20975731", #8-27-2020
    "205781-20979077", #8-27-2020
    "205781-20979462", #8-27-2020
    "205781-20987072", #8-27-2020
    "453279-20987617", #8-27-2020
    
    "349034-20996905", #8-28-2020
    "349034-20997284", #8-28-2020
    "343043-21006633", #8-28-2020 (1 dud, 1 single)
    "343043-21005563", #8-28-2020
    
    "344433-21042427", #8-29-2020
    
    "453279-21054712", #8-30-2020
    
    "205781-21112869", #9-01-2020
    "205781-21113434", #9-01-2020
    "349034-21126735", #9-01-2020
    
    "122221-21135632", #9-02-2020
    "453279-21143155", #9-02-2020
    
    "205781-21191410", #9-04-2020
    "205781-21191991", #9-04-2020
    
    "343043-21270921", #9-07-2020
    
    "453279-21292423", #9-08-2020
    "332143-21304988", #9-08-2020
    
    "453279-21317270", #9-09-2020
    "344433-21321837", #9-09-2020
    
    "332143-21348609", #9-10-2020
    
    "332143-21420481", #9-12-2020
    
    "332143-21460559", #9-13-2020
    
    "205781-21483672", #9-15-2020
    "453279-21533599", #9-15-2020
    "205781-21536179", #9-15-2020
    
    "453279-21556624", #9-16-2020
    
    "353260-21593040", #9-17-2020
    
    "453279-21651313", #9-19-2020
    
    "353260-21682034", #9-20-2020
    
    "453279-22457884", #10-19-2020
    
    "353260-23095094", #11-11-2020
    "353260-23091179", #11-11-2020
    "353260-23091179", #11-11-2020
    
    "488933-23203470", #11-15-2020
    
    "453279-23222379", #11-16-2020
    "453279-23222647", #11-16-2020
    
    "454893-23243632", #11-17-2020
    "453279-23255095", #11-17-2020
    "453279-23256165", #11-17-2020

    "453279-23394120", #11-22-2020
    
    "453279-23602382", #11-30-2020
    
    "453279-23839581", #12-14-2020(!)
    "453279-23991912", #12-14-2020
    
    "453279-24003265", #12-15-2020
    
    "178256-24028220", #12-16-2020
    
    "488933-24124462", #12-19-2020
    
    "353260-24241967", #12-23-2020
    "453279-24244654", #12-23-2020
    
    "453279-24354944", #12-27-2020
    
    # the rest
    "123-24408756",
    "353260-24586638",
    "353260-24587445",
    "453279-24725093",
    "349034-24725512",
    "453279-24733425",
    "453279-24833732",
    "453279-24834668",
    "453279-25029327",
    "123-25065964",
    "123-25070800",
    "178256-25101924",
    "123-25103948",
    "178256-25114369",
    "349034-25147845",
    "349034-25148643",
    "90388-25151151",
    "349034-25154031",
    "349034-25156014",
    "349034-25210252",
    "123-25215956",
    "123-25216671",
    "123-25217019",
    "123-25217780",
    "353260-25225152",
    "353260-25227913",
    "349034-25236821",
    "349034-25237749",
    "178256-25511700",
    "178256-25512133",
    "453279-25549831",
    "178256-25556771",
    "123-25614116",
    "453279-25649465",
    "178256-25660636",
    "698280-25693223",
    "453279-25707223",
    "453279-25708210",

])

weekly5 = ReplayInfo.new("weekly5", [
    "270948-19120520",
    "14422-19120474",
    "192142-19120470",
    "205781-19120662",
    "481907-19121105",
    "123-19121224",
    "123-19120527",
    "106930-19121466",
    "106930-19121837",
    "453279-19121729",
    "488933-19121413",
    "122221-19121394",
    "14422-19121832",
    "481907-19121712",
    "356-19122470",
    "106930-19122502",
    "123-19122360",
    "192142-19122941",
    "192142-19123054",
    "481907-19123440",
    "122221-19122604",
    "282034-19123864",
    "192142-19124147",
    "106930-19124328",
    "14422-19124650",
    "205781-19126662",
    "106930-19127268",
    "106930-19128116",
])

weekly4 = ReplayInfo.new("weekly4", [
    "205781-18739560",
    "481907-18739488",
    "349034-18740189",
    "148837-18739727",
    "349034-18740916",
    "481907-18741303",
    "122221-18741156",
    "106930-18741159",
    "148837-18741188",
    "148837-18741774",
    "14422-18741945",
    "349034-18741897",
    "481907-18742383",
    "106930-18742929",
    "122221-18743338",
    "14422-18744079",
    "349034-18745094",

])

ycs_llama = ReplayInfo.new("ycs_llama", [
    "282034-18758605",
    "106930-18759286",
    "191318-18760315",
    "223396-18760486",
    "148837-18761875",
    "481907-18764471",
    "84755-18767638",
    "349034-18772157",
    "349034-18773083",
    "122221-18773840",
    "441001-18781682",
    "441001-18758607",
    "354255-18783581",
    "168427-18792401",
    "344433-18797940",
    "488933-18799208",
    "205781-18800314",
    "453279-18806924",
    "192142-18807748",
    "191318-18815057",
    "122221-18816195",
    "481907-18817327",
    "349034-18819710",
    "282034-18831883",
    "223396-18837622",
    "123-18836185",
    "123-18836598",
    "123-18837622",
    "191318-18842045",
    "453279-18842765",
    "406828-18848684",
    "282034-18849338",
    "84755-18850116",
    "84755-18850342",
    "192142-18857449",
    "106930-18864367",
    "481907-18870969",
    "106930-18874145",
    "45393-18877125",
    "84755-18889133",
    "453279-18889668",
    "282034-18894348",
    "192142-18896285",
    "488933-18901782",
    "106930-18903196",
    "481907-18904287",
    "191318-18903163",
    "453279-18912282",
    "205781-18913095",
    "282034-18930235",
    "84755-18933644",
    "191318-18934924",
    "191318-18944928",
])

weekly3 = ReplayInfo.new("weekly3", [
    "205781-18538779",
    "481907-18538762",
    "481907-18539341",
    "488261-18539556",
    "356-18539060",
    "148837-18539245",
    "148837-18540160",
    "481907-18539701",
    "349034-18540427",
    "555075-18540773",
    "191318-18540605",
    "356-18540571",
    "349034-18541381",
    "481907-18540884",
    "191318-18541935",
    "349034-18542354",
    "191318-18542802",
    "148837-18542928",
    "148837-18543783",
    "148837-18544519",
    "191318-18545831",
])

weekly2 = ReplayInfo.new("weekly2", [
    "481907-18326672",
    "192142-18327054",
    "148837-18327440",
    "106930-18327611",
    "453279-18327628",
    "205781-18327432",
    "481907-18328267",
    "406828-18327913",
    "148837-18328699",
    "106930-18329332",
    "406828-18329368",
    "282034-18329440",
    "354255-18330086",
    "191318-18330579",
    "205781-18330176",
    "462598-18332312",
    "148837-18333052",
    "205781-18332159",
    "205781-18333848",
    "106930-18333786",
    "148837-18334789",
    "453279-18335273",
])

weekly1 = ReplayInfo.new("weekly1", [
    "205781-18104685",
    "481907-18104461",
    "148837-18104899",
    "406828-18105873",
    "462598-18105117",
    "191318-18105368",
    "205781-18105941",
    "148837-18106691",
    "481907-18108251",
    "191318-18108585",
    "406828-18108624",
    "205781-18109659",
    "148837-18110011",
    "148837-18111166",
    "148837-18111730",
    "148837-18112978",
    "191318-18114025",
])

weekly18 = ReplayInfo.new("weekly18", [
    "14422-22394519",
    "123-22394632",
    "123-22394916",
    "454893-22394699",
    "469397-22394524",
    "349034-22394534",
    "77474-22394597",
    "123-22395687",
    "14422-22396537",
    "349034-22396414",
    "454893-22396861",
    "469397-22397049",
    "123-22397924",
    "123-22398381",
    "454893-22399270",
])

weekly19 = ReplayInfo.new("weekly19", [
    "667872-22576381",
    "509709-22576326",
    "14422-22576314",
    "212949-22576564",
    "349034-22576309",
    "509709-22577311",
    "163270-22576321",
    "14422-22577249",
    "349034-22578111",
    "481907-22578401",
    "481907-22579472",
    "349034-22580396",
])

ycs_king_of_games = ReplayInfo.new("ycs_king_of_games", [
    "14422-22599196",
    "459961-22599315",
    "3335-22601407",
    "220263-22602209",
    "441001-22615932",
    "481907-22624160",
    "609994-22605285",
    "609994-22624654",
    "453279-22625448",
    "354255-22625698",
    "349034-22627377",
    "223396-22636889",
    "77474-22641044",
    "334828-22652489",
    "453279-22653061",
    "509709-22654574",
    "469397-22655749",
    "469397-22655870",
    "14422-22655807",
    "123-22656226",
    "609994-22675925",
    "583777-22676307",
    "349034-22682481",
    "220263-22684802",
    "667872-22685729",
    "356-22706521",
    "488933-22709790",
    "509709-22711152",
    "441001-22711061",
    "334828-22712344",
    "453279-22711526",
    "349034-22711484",
    "3335-22733894",
    "122221-22739154",
    "354255-22744462",
    "123-22767588",
    "481907-22768769",
    "509709-22769725",
    "349034-22769260",
    "3335-22768806",
    "488933-22781415",
    "122221-22782560",
    "220263-22788257",
    "123-22812927",
    "123-22813260",
    "123-22814617",
    "406828-22815684",
    "453279-22815289",
    "459961-22815660",
    "481907-22823247",
    "349034-22825117",
    "453279-22841799",
    "334828-22845868",
    "453279-22869963",
    "349034-22895991",
])

weekly20 = ReplayInfo.new("weekly20", [
    "349034-23154256",
    "137565-23154226",
    "453279-23155141",
    "469397-23154205",
    "77474-23154381",
    "90388-23154558",
    "481907-23155701",
    "3335-23154349",
    "481907-23156264",
    "454893-23156910",
    "77474-23156717",
    "90388-23158888",
])

weekly21 = ReplayInfo.new("weekly21", [
    "14422-23344473",
    "220263-23344438",
    "488261-23345552",
    "122221-23345189",
    "353260-23344546",
    "14422-23345012",
    "14422-23346055",
    "122221-23346229",
    "453279-23346058",
    "454893-23346438",
    "453279-23346791",
    "454893-23347249",
    "454893-23348712",
    "453279-23349457",
])

weekly22 = ReplayInfo.new("weekly22", [
    "137565-23530527",
    "481907-23530487",
    "349034-23530478",
    "454893-23530572",
    "453279-23530574",
    "509709-23530575",
    "454893-23531893",
    "349034-23532035",
    "454893-23532824",
    "349034-23534133",
    "469397-23535374",
    "349034-23535172",
    "349034-23536245",
])

eucs_1 = ReplayInfo.new("eucs_1", [
    "481907-23552527",
    "469397-23552415",
    "3335-23552440",
    "441001-23552462",
    "509709-23552692",
    "77474-23553074",
    "3335-23553525",
    "481907-23554870",
    "459961-23554906",
    "441001-23554678",
    "441001-23555830",
    "77474-23556642",
    "77474-23557004",
    "441001-23557224",
    "509709-23557613",
    "441001-23559215",
    "481907-23560439",
    "77474-23561239",
])

weekly23 = ReplayInfo.new("weekly23", [
    "481907-23702214",
    "349034-23702182",
    "220263-23702207",
    "698280-23702256",
    "698280-23703105",
    "122221-23702589",
    "349034-23703456",
    "3335-23703431",
    "469397-23704419",
    "349034-23705111",
    "467554-23703803",
    "467554-23707351",
    "349034-23708369",
])

ycs_unleash_extinction = ReplayInfo.new("unleash_extinction", [
    "481907-23726417",
    "14422-23726329",
    "349034-23734197",
    "488933-23735260",
    "90388-23738411",
    "469397-23746345",
    "354255-23750031",
    "447576-23752770",
    "220263-23754322",
    "220263-23755495",
    "453279-23775184",
    "441001-23777203",
    "447576-23782266",
    "123-23782652",
    "123-23783078",
    "481907-23783474",
    "14422-23783611",
    "90388-23783274",
    "356-23787301",
    "3335-23788193",
    "178256-23802466",
    "344433-23804742",
    "609994-23811245",
    "469397-23836538",
    "354255-23840786",
    "698280-23842179",
    "90388-23843567",
    "122221-23868386",
    "481907-23870081",
    "220263-23870722",
    "220263-23871418",
    "467554-23883454",
    "334828-23891593",
    "667872-23897847",
    "447576-23902387",
    "609994-23903691",
    "3335-23904558",
    "453279-23921626",
    "354255-23921061",
    "14422-23923786",
    "447576-23924665",
    "467554-23925918",
    "3335-23926682",
    "90388-23935797",
    "220263-23938533",
    "469397-23945612",
    "452058-23950848",
    "453279-23953579",
    "447576-23954489",
    "344433-23955422",
    "3335-23954532",
    "90388-23957987",
    "467554-23956542",
    "349034-23966617",
    "356-23982717",
    "14422-23986761",
    "3335-23991505",
    "447576-24015485",
    "3335-24017514",
    "3335-24018871",
])

weekly24 = ReplayInfo.new("weekly24", [
    "123-24109050",
    "467554-24109073",
    "77474-24110120",
    "14422-24109065",
    "334828-24109931",
    "220263-24111171",
    "349034-24110929",
    "467554-24110887",
    "77474-24111482",
    "14422-24112854",
    "349034-24112727",
    "349034-24112727",
    "123-24114460",
    "14422-24113802",
    "77474-24115207",
    "77474-24115867",
    "77474-24116494",
    "14422-24116917",
])

eucs_2 = ReplayInfo.new("eucs_2", [
    "349034-24132197",
    "467554-24132574",
    "77474-24132306",
    "77474-24133688",
    "467554-24133426",
    "178256-24133620",
    "481907-24134358",
    "362746-24134998",
    "467554-24134663",
    "481907-24135024",
    "178256-24135223",
    "467554-24135833",
    "469397-24135084",
    "469397-24137309",
    "349034-24139169",
    "349034-24140950",
    "481907-24141484",
    "481907-24142379",
])

eucs_3 = ReplayInfo.new("eucs_3", [
    "331437-24326624",
    "14422-24326568",
    "14422-24327280",
    "362746-24328461",
    "698280-24326977",
    "698280-24328275",
    "698280-24328543",
    "698280-24328740",
    "331437-24329487",
    "362746-24330385",
    "123-24329721",
    "467554-24329636",
    "123-24331593",
    "467554-24332154",
    "123-24332708",
    "123-24332938",
    "406828-24333869",
    "123-24335194",
    "362746-24333360",
    "123-24336112",
    "123-24336844",
])

weekly25 = ReplayInfo.new("weekly25", [
    "77474-24498648",
    "406828-24498885",
    "469397-24498955",
    "331437-24499711",
    "353260-24501127",
    "331437-24502913",
    "123-24500595",
    "123-24503469",
])

eucs_4 = ReplayInfo.new("eucs_4", [
    "353260-24522889",
    "349034-24522790",
    "123-24523016",
    "349034-24524682",
    "77474-24526492",
    "469397-24526392",
    "349034-24526435",
    "123-24527063",
    "467554-24528081",
    "406828-24529900",
    "509709-24530263",
    "349034-24530491",
    "353260-24529856",
    "349034-24531158",
    "349034-24533646",
])

weekly26 = ReplayInfo.new("weekly26", [
    "14422-24701098",
    "469397-24701195",
    "481907-24701158",
    "349034-24701210",
    "14422-24701791",
    "90388-24702364",
    "123-24702721",
    "77474-24701752",
    "353260-24702215",
    "353260-24703651",
    "481907-24703685",
    "77474-24704875",
    "123-24707436",
])

weekly27 = ReplayInfo.new("weekly27", [
    "481907-24896900",
    "212949-24897112",
    "453279-24896966",
    "469397-24896913",
    "349034-24896878",
    "137565-24897499",
    "3335-24898468",
    "481907-24898036",
    "453279-24898472",
    "137565-24898781",
    "205781-24899740",
    "453279-24899570",
    "453279-24900337",
])

eucs_5 = ReplayInfo.new("eucs_5", [
    "349034-24920637",
    "481907-24920887",
    "205781-24920627",
    "349034-24921689",
    "77474-24920716",
    "14422-24921944",
    "137565-24922507",
    "469397-24922389",
    "77474-24923462",
    "77474-24924023",
    "349034-24923913",
    "353260-24923915",
    "481907-24926181",
    "481907-24927289",
    "481907-24927790",
    "481907-24928704",
    "349034-24929575",
])

weekly28 = ReplayInfo.new("weekly28", [
    "123-25095025",
    "469397-25094988",
    "123-25095772",
    "205781-25095343",
    "122221-25096290",
    "77474-25096174",
    "14422-25096099",
    "77474-25097189",
    "14422-25097588",
    "77474-25098909",
    "123-25098956",
])

eucs_6 = ReplayInfo.new("eucs_6", [
    "353260-25118101",
    "77474-25117671",
    "123-25118164",
    "205781-25117644",
    "698280-25119399",
    "123-25119387",
    "397758-25118986",
    "349034-25119344",
    "698280-25119399",
    "469397-25119340",
    "205781-25120728",
    "205781-25122124",
    "123-25122124",
    "469397-25120987",
    "469397-25122980",
    "353260-25125107",
    "353260-25126053",
    "123-25126783",
])

weekly29 = ReplayInfo.new("weekly29", [
    "406828-25296782",
    "14422-25297108",
    "178256-25296899",
    "349034-25296784",
    "123-25297415",
    "14422-25298067",
    "453279-25298309",
    "481907-25296796",
    "123-25298352",
    "453279-25299838",
])

eucs_7 = ReplayInfo.new("eucs_7", [
    "481907-25322186",
    "397758-25321739",
    "349034-25321628",
    "353260-25321694",
    "481907-25322650",
    "3335-25323198",
    "397758-25322857",
    "481907-25324292",
    "349034-25322741",
    "77474-25324314",
    "469397-25325205",
    "77474-25325796",
    "349034-25325311",
    "469397-25326235",
    "349034-25327438",
    "353260-25327925",
    "481907-25329473",
    "349034-25330562",
])

weekly30 = ReplayInfo.new("weekly30", [
    "3335-25502738",
    "469397-25502979",
    "353260-25502852",
    "205781-25503245",
    "3335-25504686",
    "205781-25505370",
    "205781-25506288",
    "3335-25507041",
    "205781-25507041",
])

eucs_8 = ReplayInfo.new("eucs_8", [
    "397758-25527126",
    "122221-25527906",
    "406828-25527527",
    "3335-25527149",
    "397758-25528617",
    "353260-25529303",
    "469397-25528807",
    "123-25529518",
    "353260-25530276",
    "349034-25530046",
    "123-25530262",
    "123-25531679",
    "349034-25532695",
    "77474-25534048",
    "123-25535241",
])

weekly31 = ReplayInfo.new("weekly31", [
    "353260-25716006",
    "469397-25715902",
    "607658-25715907",
    "453279-25715807",
    "481907-25715840",
    "481907-25716557",
    "123-25716218",
    "77474-25716058",
    "469397-25717041",
    "465364-25716990",
    "353260-25717579",
    "469397-25717881",
    "353260-25718303",
    "469397-25718754",
])

eucs_9 = ReplayInfo.new("eucs_9", [
    "353260-25739422",
    "122221-25739616",
    "205781-25739892",
    "122221-25740853",
    "14422-25740924",
    "123-25741181",
    "743885-25740294",
    "353260-25742081",
    "205781-25742412",
    "743885-25742422",
    "469397-25743166",
    "205781-25744506",
    "205781-25744869",
])

weekly32 = ReplayInfo.new("weekly32", [
    "481907-25923599",
    "469397-25923595",
    "406828-25923616",
    "14422-25924232",
    "465364-25923882",
    "205781-25923594",
    "743885-25925096",
    "205781-25925150",
    "14422-25925961",
    "469397-25924967",
    "205781-25926537",
    "469397-25927389",
])

eucs_10 = ReplayInfo.new("eucs_10", [
    "349034-25947385",
    "191318-25947361",
    "123-25947585",
    "349034-25948169",
    "123-25948429",
    "743885-25949140",
    "465364-25948244",
    "123-25949743",
    "453279-25949985",
    "743885-25950786",
    "191318-25949954",
    "453279-25950797",
    "469397-25953067",
    "469397-25954039",
    "453279-25954942",
])

weekly33 = ReplayInfo.new("weekly33", [
    "123-26124667",
    "353260-26124932",
    "191318-26124925",
    "469397-26125916",
    "191318-26126449",
    "743885-26126722",
    "469397-26127316",
    "469397-26127773",
    "123-26128997",
])

eucs_11 = ReplayInfo.new("eucs_11", [
    "191318-26147432",
    "397758-26147377",
    "469397-26147784",
    "205781-26147606",
    "469397-26148830",
    "353260-26147681",
    "397758-26149309",
    "205781-26149622",
    "205781-26150311",
    "123-26150610",
    "77474-26150495",
    "191318-26150350",
    "467554-26150317",
    "469397-26151447",
    "123-26151418",
    "441001-26152055",
    "26154036",
    "205781-26155198",
    "123-26156684",
    "191318-26156980",
])

weekly34 = ReplayInfo.new("weekly34", [
    "453279-26314829",
    "123-26314942",
    "14422-26314897",
    "406828-26314894",
    "191318-26316356",
    "349034-26315045",
    "453279-26315932",
    "14422-26315989",
    "349034-26317221",
    "191318-26316962",
    "349034-26318252",
])

eucs_12 = ReplayInfo.new("eucs_12", [
    "465364-26335755",
    "123-26336203",
    "137565-26335715",
    "123-26336618",
    "467554-26335804",
    "349034-26335815",
    "137565-26336690",
    "191318-26336915",
    "467554-26337036",
    "14422-26336829",
    "122221-26337472",
    "467554-26338074",
    "122221-26338508",
    "353260-26337350",
    "349034-26339063",
    "191318-26339471",
    "14422-26340766",
    "353260-26339662",
    "14422-26341373",
    "123-26341335",
    "353260-26341364",
    "14422-26342093",
    "14422-26343639",
    "353260-26344838",
])

weekly35 = ReplayInfo.new("weekly35", [
    "603805-26511948",
    "453279-26511880",
    "191318-26511861",
    "349034-26511941",
    "441001-26512008",
    "14422-26512446",
    "353260-26512271",
    "123-26512634",
    "467554-26512094",
    "14422-26513382",
    "123-26513591",
    "467554-26513640",
    "14422-26514533",
    "191318-26511861",
    "603805-26514321",
    "467554-26515182",
    "467554-26516902",
])

eucs_13 = ReplayInfo.new("eucs_13", [
    "349034-26538937",
    "603805-26538944",
    "353260-26538983",
    "349034-26539790",
    "465364-26540205",
    "123-26540206",
    "743885-26540720",
    "757761-26540748",
    "397758-26541991",
    "353260-26541993",
    "123-26542629",
    "353260-26543632",
    "123-26545842",
])

ladder_season_1 = ReplayInfo.new("ladder_season_1", [
    "205781-25797961",
    "353260-25820827",
    "122221-25821846",
    "349034-25823503",
    "453279-25822850",
    "453279-25823615",
    "465364-25828293",
    "14422-25835465",
    "122221-25844190",
    "453279-25847468",
    "607658-25857492",
    "454893-25875508",
    "453279-25881307",
    "453279-25881636",
    "122221-25882821",
    "743885-25897035",
    "469397-25911257",
    "353260-25915250",
    "453279-25916792",
    "353260-25918181",
    "14422-25919436",
    "205781-25940510",
    "740725-25941141",
    "740725-25941684",
    "453279-25965036",
    "488933-25966580",
    "353260-25969402",
    "743885-25975771",
    "453279-25996486",
    "453279-25998177",
    "14422-26013607",
    "453279-26029401",
    "14422-26034042",
    "205781-26038474",
    "453279-26058752",
    "106930-26064063",
    "122221-26068397",
    "123-26088340",
    "178256-26089214",
    "178256-26090096",
    "453279-26093337",
    "453279-26094402",
    "123-26101878",
    "453279-26110209",
    "178256-26115217",
    "122221-26113923",
    "123-26119946",
    "353260-26025247",
    "353260-26099974",
    "453279-26143833",
    "453279-26166343",
    "106930-26171993",
    "14422-26181452",
    "14422-26181452",
    "453279-26194134",
    "123-26197855",
    "205781-26200433",
    "122221-26206375",
    "14422-26236137",
    "349034-26240200",
    "349034-26241328",
    "349034-26241914",
    "349034-26242127",
    "205781-26291168",
    "122221-26304639",
    "123-26197855",
    "349034-26308872",
    "349034-26309280",
    "453279-26308802",
    "205781-26310576",
    "191318-26311009",
    "469397-26332548",
    "178256-26333009",
    "353260-26359308",
    "353260-26383854",
    "353260-26384617",
    "205781-26390876",
    "14422-26411910",
    "743885-26416153",
    "353260-26439990",
    "349034-26441014",
    "349034-26441925",
    "178256-26468424",
    "122221-26470832",
    "191318-26477548",
    "453279-26502999",
    "349034-26506258",
    "123-26518897",
    "14422-26519731",
    "14422-26549926",
    "147294-26552062",
    "123-26552671",
    "123-26553406",
    "349034-26565547",
    "349034-26567184",
    "453279-26598341",
    "453279-26599068",
    "205781-26600602",
    "191318-26601657",
    "453279-26605561",
    "14422-26606924",
    "349034-26643591",
    "453279-26643618",
    "349034-26672649",
    "14422-26673988",
    "205781-26673913",
])

ycs_british = ReplayInfo.new("ycs_british", [
    "441001-27201759",
    "406828-27201688",
    "452058-27201545",
    "488933-27202077",
    "757761-27207345",
    "469397-27207966",
    "453279-27208528",
    "486894-27210276",
    "603805-27221374",
    "14422-27225710",
    "205781-27230041",
    "349034-27235066",
    "488933-27246485",
    "453279-27250577",
    "353260-27255398",
    "123-27257269",
    "14422-27258006",
    "467554-27261442",
    "469397-27266225",
    "349034-27268662",
    "509709-27275883",
    "757761-27285730",
    "698280-27287175",
    "743885-27288932",
    "14422-27288144",
    "453279-27290477",
    "205781-27291454",
    "349034-27291692",
    "469397-27295876",
    "509709-27297223",
    "77474-27299609",
    "481907-27316226",
    "406828-27317315",
    "486894-27326781",
    "123-27328903",
    "597586-27333900",
    "597586-27333900",
    "467554-27337005",
    "14422-27337840",
    "453279-27340216",
    "191318-27350285",
    "486894-27356404",
    "481907-27356720",
    "191318-27376415",
    "743885-27376746",
    "603805-27377816",
    "486894-27379484",
    "77474-27381707",
    "77474-27382168",
    "481907-27386891",
    "757761-27395114",
    "453279-27396168",
    "467554-27398833",
    "603805-27411115",
    "349034-27411107",
    "123-27412078",
    "486894-27411487",
    "743885-27425037",
    "41123-27427170",
    "191318-27428973",
    "453279-27430396",
    "698280-27431901",
    "603805-27434359",
    "698280-27434121",
    "743885-27434130",
    "603805-27435951",
    "14422-27439352",
    "698280-27458201",
    "603805-27462960",
    "743885-27464715",
    "469397-27465851",
    "453279-27465812",
    "453279-27467272",
])