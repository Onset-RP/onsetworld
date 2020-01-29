WorldLoaded = false

local DoorConfig = {
  [6]=180,
  [17]=180,
  [18]=180,
  [19]=180,
  [26]=180,
  [27]=180,
  [28]=180,
  [29]=180,
  [30]=180,
  [31]=180,
  [32]=180,
  [33]=180,
  [34]=180,
  [35]=0,
  [36]=270,
  [37]=270,
  [38]=270,
  [39]=270
}

function World_LoadWorld()
  if WorldLoaded then return end
  if IsPackageStarted('sandbox') then return error('ERROR: Not loading world since sandbox package is enabled, this package should only be used when sandbox is disabled.') end
  WorldLoaded = true

  print('Server: Attempting to load world.')

  local _table = File_LoadJSONTable('world.json')
  if _table ~= nil then
    for _,v in pairs(_table) do
      if v['modelID'] ~= nil then
        World_CreateObject(v['modelID'], v['x'], v['y'], v['z'], v['rx'], v['ry'], v['rz'], v['sx'], v['sy'], v['sz'])
      else
        World_CreateDoor(v['doorID'], v['x'], v['y'], v['z'], v['yaw'])
      end
    end

    print('Server: World loaded!')
  else
    print('Server: No world.json found in root server directory, one will be made next time the server saves.')
  end
end
AddEvent('OnPackageStart', World_LoadWorld)

objectdistfar = {47,48,55,56,57,75,1667,76,73,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,72,93,94,95,96,70,71,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,113,115,116,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,174,178,179,180,186,187,188,189,193,194,195,196,197,198,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,327,328,329,330,331,333,334,335,336,337,338,339,340,341,342,368,369,370,371,376,377,378,379,380,381,382,383,384,385,386,387,388,389,390,391,392,393,394,395,396,397,494,578,579,600,601,613,614,622,623,645,646,647,648,649,650,691,692,693,694,695,696,697,698,699,700,701,702,706,717,718,721,722,723,724,725,726,727,737,738,741,742,743,744,745,746,747,748,749,814,815,816,817,847,848,849,850,851,852,853,854,855,856,857,858,859,860,861,862,869,870,871,873,874,875,873,874,875,876,877,878,887,888,889,890,891,895,896,897,898,899,900,901,902,903,904,910,911,956,957,1082,1308,1309,1310,1311,1318,1319,1320,1321,1322,1322,1323,1234,1325,1326,1327,1328,1329,1330,1331,1332,1333,1334,1335,1336,1337,1338,1339,1340,1341,1394,1395,1402,1403,1404,1405,1406,1407,1449,1463,1587,1588,1589,1590,1591,1592,1593,1594,1595,1596,1597,1598,1599,1600,1601,1602,1603,1604,1605,1584}

objectdistmid = {1,2,3,39,53,40,41,1664,1665,1666,42,44,45,49,1527,1528,1529,1530,1531,1532,1533,50,52,63,64,65,66,67,68,69,74,171,172,173,175,176,177,190,191,192,343,344,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360,361,362,363,364,365,366,367,372,373,374,375,490,492,493,500,501,502,503,504,505,506,507,508,509,510,511,515,516,517,518,557,558,559,560,561,562,563,564,565,566,567,568,569,570,571,572,573,574,575,576,580,581,582,584,585,586,587,588,589,590,591,592,593,599,602,603,504,604,605,606,607,608,609,610,611,612,613,614,629,633,634,635,636,637,638,639,640,641,642,643,644,652,653,654,655,656,657,658,659,660,661,703,704,705,720,728,729,739,740,750,751,752,753,758,759,760,761,762,763,764,765,766,767,770,771,734,772,774,775,776,777,778,779,780,781,782,783,784,785,786,787,788,789,790,791,818,819,863,864,865,866,867,868,872,879,537,880,881,882,883,884,885,886,905,906,907,908,909,912,913,958,9589,960,961,962,963,964,968,969,971,972,973,974,975,976,977,978,979,981,982,983,984,985,986,987,988,995,996,997,998,999,1005,1006,1007,1008,1009,1010,1012,1013,1014,1015,1016,1063,1072,1088,1089,1090,1093,1094,1095,1096,1097,1098,1099,1100,1101,1102,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1124,1125,1160,1161,1162,1163,1164,1165,1166,183,184,1167,1169,1170,1171,1172,1290,1291,1293,1294,1295,1312,1313,1314,1315,1316,1317,1359,1360,1361,1362,1363,1364,1365,1366,1367,1368,1369,1370,1371,1372,1374,1375,1376,1377,1378,1379,1794,1380,1381,1382,1383,1384,1385,1386,1387,1388,1389,1390,1391,1392,1397,1398,1399,1400,1401,1409,1410,1418,1419,1420,1202,1203,554}
objectdistshort = {4,5,6,7,8,9,54,10,11,12,13,1642,1643,1800,1711,1582,1574,1802,1801,519,520,1810,1811,1644,1512,1525,1645,1646,1647,1648,1649,1650,1714,1721,1651,651,1652,1653,112,114,1654,117,1655,1656,1657,1562,1674,1675,1673,1563,1567,1559,1560,1558,1658,1659,1660,1661,1662,1663,1611,1612,1613,1614,1615,1616,1617,1618,1619,1620,1621,1622,1776,1623,1624,1625,1626,1627,1628,1629,1630,1631,1632,1633,1634,1635,1636,1637,1638,1639,524,1640,1641,980,14,15,16,17,18,19,1425,20,21,990,991,992,993,994,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,43,46,51,54,58,59,60,61,62,185,168,169,170,181,398,399,400,401,1168,402,403,404,405,406,407,521,522,523,408,409,410,411,412,413,414,415,416,970,417,418,419,420,421,422,423,424,425,426,427,428,429,773,430,431,432,433,434,435,436,437,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,480,481,482,483,484,485,486,487,488,489,491,495,496,497,498,499,263,512,513,514,525,965,526,527,528,529,530,989,531,532,533,534,535,536,538,539,540,541,542,543,544,545,546,547,754,755,756,757,548,549,550,551,552,553,555,556,577,583,594,595,596,597,598,615,616,617,618,619,620,326,332,621,624,625,626,627,628,630,631,632,735,662,663,664,665,666,667,668,669,670,671,672,673,674,675,1003,1000,1001,1002,1004,676,677,678,679,680,681,682,683,1011,684,685,686,687,688,689,690,707,708,709,710,711,719,730,731,732,733,768,769,793,794,795,796,797,798,799,800,801,802,803,804,805,806,807,808,809,810,811,812,813,820,821,822,823,824,825,826,827,828,829,830,831,832,833,834,835,836,837,838,839,840,841,842,843,844,845,846,914,915,916,917,918,919,920,921,922,923,924,925,926,927,928,929,230,931,932,933,934,935,936,938,939,940,941,942,943,944,945,946,947,948,949,950,951,952,953,954,955,1017,1018,1019,1020,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1039,1040,1041,1042,1043,1044,1045,1046,1047,1048,1049,1050,1051,1052,1422,1053,1054,1055,1056,1057,1058,1059,1060,1061,1062,1064,1065,1066,1067,1068,1069,1070,1071,1073,1074,1075,1076,1077,1078,1079,1080,1081,1083,1084,1085,1086,1087,1091,1092,1103,1104,1105,1106,1107,1108,1109,1123,1126,1127,1128,1129,1130,1131,1132,1133,1134,1135,1136,1137,1138,1139,1140,1141,1142,1143,1144,1145,1146,1147,1148,1149,1150,1151,1152,1153,1154,1155,1156,1157,1158,1159,1173,1174,1175,1176,1177,1178,1179,1180,1181,1182,182,1183,1184,1185,1186,1187,1188,1189,1190,1191,1192,1193,1194,1195,1196,1197,1198,1199,199,200,1200,1201,1204,1205,1206,1207,1208,1209,1210,1211,1212,1213,1214,1215,736,1216,1217,1218,1219,1220,1221,1222,1223,1224,1225,1226,1227,1228,1229,1230,1231,1232,1233,1234,1235,1236,1237,1238,1239,1240,1241,1242,1243,1244,1245,1246,1247,1248,1249,1250,1251,1252,1253,1254,1255,1256,1257,1258,1259,1260,1261,1262,1263,1264,1265,1266,1267,1268,1269,1270,1271,1272,1273,1274,1275,1276,1277,1278,1279,1280,1281,1282,1283,1284,1285,1286,1287,1288,1289,1296,1297,1298,1299,1300,1301,1302,1303,1304,1305,1306,1307,1342,1343,1344,1345,1346,1347,1348,1349,1350,1351,1352,1353,1354,1355,1356,1357,1358,1373,1393,1396,1439,1408,1411,1440,1412,1413,1414,1415,1416,1417,1421,1423,1424,1446,1448,1450,1460,1461,1466,1467,1468,1797,1796,1812,1813}

function World_CreateObject(objectID, x, y, z, rx, ry, rz, sx, sy, sz)
  local _object = CreateObject(objectID, x, y, z)
  if _object then
    if (rx ~= nil and sx ~= nil) then
      SetObjectRotation(_object, rx, ry, rz)
      SetObjectScale(_object, sx, sy, sz)
    end

    for i,v in pairs(objectdistfar) do
        if objectID == v then
            SetObjectStreamDistance(_object, 50000)
        end
    end

    for i,v in pairs(objectdistmid) do
        if objectID == v then
            SetObjectStreamDistance(_object, 8000)
        end
    end

    for i,v in pairs(objectdistshort) do
        if objectID == v then
            SetObjectStreamDistance(_object, 3000)
        end
    end
  end
end

function World_CreateDoor(doorID, x, y, z, yaw)
  local _AddYaw = DoorConfig[tonumber(doorID)]
  if _AddYaw == nil then
    _AddYaw = 90
  end

  CreateDoor(doorID, x, y, z, yaw + _AddYaw)
end