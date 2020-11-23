set names utf8;
drop database if exists yiqing;
create database yiqing charset=utf8;
use yiqing;
create table user(
    userId  int  primary key AUTO_INCREMENT,
    userName varchar(10) unique,
    userPwd  varchar(315),
    userPayPwd varchar(315),
    usernumber bigint(11),
    img int(3),
    userSex bool
);
create table crop(
    crop varchar(10),
    number int(3)
);
create table news(
    nid int primary key AUTO_INCREMENT,
    ncrop int(2),
    ntitle varchar(50),
    nimg  varchar(111),
    npinlub int(4),
    nwhere varchar(12)
);
create table shangcheng(
    crop varchar(10),
    number int(3)
);
create table shangping(
    nid int primary key AUTO_INCREMENT,
    crup int (2),
    title varchar(100),
    img  int(3),
    price varchar(9),
    people int(9),
    place varchar(5)
);
insert into shangping values('','2','口罩一次性男女防晒防异味防尘防雾霾防紫外线50只盒装饰防护口罩','1.jpg','37.50',"100",'上海');
insert into shangping values('','2','一次性口罩三层50只装防护尘飞沫男女夏季薄款医学透气加厚鼻囗罩','2.jpg','35.00',"840",'郑州');
insert into shangping values('','2','一次性民用口罩 95+熔喷布双S无纺布','3.jpg','6.60',"560",'杭州');
insert into shangping values('','2','带钻口罩女夏满钻时尚网红抖音同款镶钻装饰个性水钻钻石女神面罩','4.jpg','11.90',"1340",'杭州');
insert into shangping values('','2','一次性新款防护彩色成人儿童口罩亲肤无纺布高密熔喷特价包邮','5.jpg','13.80',"130",'山东');
insert into shangping values('','2','KN95一次性男女口罩透气现货防尘防雾霾工业粉尘防护面罩口鼻罩','6.jpg','39.50',"5020",'湖北');
insert into shangping values('','2','爱丽口罩网红同款成人白色超立体3d透气不闷薄款超透气防飞溅口罩','7.jpg','7.50',"742",'山西');

insert into user values('',"王小明",'1310019','130019',2487383879,2,1);
insert into crop values('最新消息','1');
insert into crop values('国内疫情','2');
insert into crop values('官外疫情','3');
insert into crop values('防疫措施','4');
insert into shangcheng values('所有物品','1');
insert into shangcheng values('口罩','2');
insert into shangcheng values('防护服','3');
insert into shangcheng values('消毒水','4');
insert into news values('','2','张文宏再谈疫情形势：疫苗上市以后 国际疫情明年夏季可能会有转机','1.png','18','新华网客户端');
insert into news values('','3',"北美观察丨“地下疫情”曝光 美国第三波疫情来势汹汹","2-1.png;2-2.png;2-3.png",'28','央视记者 顾乡');
insert into news values('','3',"欧洲疫情强势反弹：西班牙确诊超百万 英或有数万人死亡","3-1.png",'22','中国新闻网');
insert into news values('','3',"疫情达“临界点”，“封城”将至？一天新增近35万例，全球疫情大反弹...","4-1.png",'13','光明网');
insert into news values('','3',"全球新冠感染超4千万 疫情仍在加速蔓延！美国、印度疫情仍严峻","5-1.png;5-2.png;5-3.png",'97','排头国际');
insert into news values('','3',"意大利疫情突然反弹，7000师生确诊，学校被迫停课，中方火速发声","6-1.png",'0','中国新闻网');
insert into news values('','3',"今年秋冬疫情会大规模暴发？专家：不认同，最危险的是12月至春节","7-1.png",'33','健康时报');
insert into news values('','3',"戴口罩！全球第二波疫情已暴发","8-1.png",'21','南充播报');
insert into news values('','2',"最新疫情！昨天0时至24时，全国新增新冠肺炎确诊病例2590例","9-1.png",'12','中国新闻网');
insert into news values('','2'," 最新疫情消息：我国本土再次发生聚集性传染，疫情可能会反扑吗？","10-1.png",'45','中国新闻网');
insert into news values('','2'," 这可能是最完整的国内新冠肺炎疫情发展脉络","11-1.png",'0','社会网络与数据挖掘');
insert into news values('','2'," 国内最新疫情速报：31省区市新增确诊病例31例，其中本土1例","12-1.png",'21','中国新闻网');
insert into news values('','2',"「防疫」新冠疫情最新消息：截至8月7日，国内7省出现确诊，值得警惕","13-1.png",'16','中国新闻网');
insert into news values('','2',"全国疫情通报！新增确诊病例17例，10例为本土病例，湖北5，吉林3，辽宁1，黑龙江1，7例境外输入均在内蒙古","14-1.png",'14','中国新闻网');
insert into news values('','2',"全国疫情通报！新增确诊病例28例，境外输入4例，上海2，陕西1，甘肃1，本土病例24例，北京21，河北2，天津1","16-1.png",'0','中国新闻网');
insert into news values('','2',"全国疫情通报！新增确诊病例40例，其中境外输入8例，本土病例32例，其中北京27例，河北4例，四川1例","17-1.png",'32','中国新闻网');
insert into news values('','2',"全国疫情通报！新增确诊病例7例，6例本土病例在吉林，1例境外输入在上海；新增本土疑似病例1例，在吉林","18-1.png",'22','中国新闻网');
insert into news values('','4',"古人智慧！预防疫情的九种方法","20-1.png;20-2.png;20-3.png",'32','崆峒养生汇');
insert into news values('','4',"献上六份最全防疫指南，请收好并转发给爱的人","19-1.png",'4','条山高速公安交警');
insert into news values('','4'," 除了戴好口罩，你还应怎样防疫？","21-1.png",'34','冰视频');
insert into news values('','4',"万众一心，战胜疫情，几个防疫措施要记好","22-1.png",'50','光明网');
insert into news values('','4',"自己总结的防疫小方法","23-1.png",'99','红网');
insert into news values('','4',"居家防疫消毒千万别过度！这些预防性消毒方法要掌握","24-1.png",'7','光明网');
insert into news values('','4',"开学在即，这份开学防疫指南，请老师转给家长！","25-1.png",'10','茶沉浮');
insert into news values('','2','张文宏再谈疫情形势：疫苗上市以后 国际疫情明年夏季可能会有转机','1.png','18','新华网客户端');
insert into news values('','3',"北美观察丨“地下疫情”曝光 美国第三波疫情来势汹汹","2-1.png;2-2.png;2-3.png",'28','央视记者 顾乡');
insert into news values('','3',"欧洲疫情强势反弹：西班牙确诊超百万 英或有数万人死亡","3-1.png",'22','中国新闻网');
insert into news values('','3',"疫情达“临界点”，“封城”将至？一天新增近35万例，全球疫情大反弹...","4-1.png",'13','光明网');
insert into news values('','3',"全球新冠感染超4千万 疫情仍在加速蔓延！美国、印度疫情仍严峻","5-1.png;5-2.png;5-3.png",'97','排头国际');
insert into news values('','3',"意大利疫情突然反弹，7000师生确诊，学校被迫停课，中方火速发声","6-1.png",'0','中国新闻网');
insert into news values('','3',"今年秋冬疫情会大规模暴发？专家：不认同，最危险的是12月至春节","7-1.png",'33','健康时报');
insert into news values('','3',"戴口罩！全球第二波疫情已暴发","8-1.png",'21','南充播报');
insert into news values('','2',"最新疫情！昨天0时至24时，全国新增新冠肺炎确诊病例2590例","9-1.png",'12','中国新闻网');
insert into news values('','2'," 最新疫情消息：我国本土再次发生聚集性传染，疫情可能会反扑吗？","10-1.png",'45','中国新闻网');
insert into news values('','2'," 这可能是最完整的国内新冠肺炎疫情发展脉络","11-1.png",'0','社会网络与数据挖掘');
insert into news values('','2'," 国内最新疫情速报：31省区市新增确诊病例31例，其中本土1例","12-1.png",'21','中国新闻网');
insert into news values('','2',"「防疫」新冠疫情最新消息：截至8月7日，国内7省出现确诊，值得警惕","13-1.png",'16','中国新闻网');
insert into news values('','2',"全国疫情通报！新增确诊病例17例，10例为本土病例，湖北5，吉林3，辽宁1，黑龙江1，7例境外输入均在内蒙古","14-1.png",'14','中国新闻网');
insert into news values('','2',"全国疫情通报！新增确诊病例28例，境外输入4例，上海2，陕西1，甘肃1，本土病例24例，北京21，河北2，天津1","16-1.png",'0','中国新闻网');
insert into news values('','2',"全国疫情通报！新增确诊病例40例，其中境外输入8例，本土病例32例，其中北京27例，河北4例，四川1例","17-1.png",'32','中国新闻网');
insert into news values('','2',"全国疫情通报！新增确诊病例7例，6例本土病例在吉林，1例境外输入在上海；新增本土疑似病例1例，在吉林","18-1.png",'22','中国新闻网');
insert into news values('','4',"古人智慧！预防疫情的九种方法","20-1.png;20-2.png;20-3.png",'32','崆峒养生汇');
insert into news values('','4',"献上六份最全防疫指南，请收好并转发给爱的人","19-1.png",'4','条山高速公安交警');
insert into news values('','4'," 除了戴好口罩，你还应怎样防疫？","21-1.png",'34','冰视频');
insert into news values('','4',"万众一心，战胜疫情，几个防疫措施要记好","22-1.png",'50','光明网');
insert into news values('','4',"自己总结的防疫小方法","23-1.png",'99','红网');
insert into news values('','4',"居家防疫消毒千万别过度！这些预防性消毒方法要掌握","24-1.png",'7','光明网');
insert into news values('','4',"开学在即，这份开学防疫指南，请老师转给家长！","25-1.png",'10','茶沉浮');
insert into news values('','2','张文宏再谈疫情形势：疫苗上市以后 国际疫情明年夏季可能会有转机','1.png','18','新华网客户端');
insert into news values('','3',"北美观察丨“地下疫情”曝光 美国第三波疫情来势汹汹","2-1.png;2-2.png;2-3.png",'28','央视记者 顾乡');
insert into news values('','3',"欧洲疫情强势反弹：西班牙确诊超百万 英或有数万人死亡","3-1.png",'22','中国新闻网');
insert into news values('','3',"疫情达“临界点”，“封城”将至？一天新增近35万例，全球疫情大反弹...","4-1.png",'13','光明网');
insert into news values('','3',"全球新冠感染超4千万 疫情仍在加速蔓延！美国、印度疫情仍严峻","5-1.png;5-2.png;5-3.png",'97','排头国际');
insert into news values('','3',"意大利疫情突然反弹，7000师生确诊，学校被迫停课，中方火速发声","6-1.png",'0','中国新闻网');
insert into news values('','3',"今年秋冬疫情会大规模暴发？专家：不认同，最危险的是12月至春节","7-1.png",'33','健康时报');
insert into news values('','3',"戴口罩！全球第二波疫情已暴发","8-1.png",'21','南充播报');
insert into news values('','2',"最新疫情！昨天0时至24时，全国新增新冠肺炎确诊病例2590例","9-1.png",'12','中国新闻网');
insert into news values('','2'," 最新疫情消息：我国本土再次发生聚集性传染，疫情可能会反扑吗？","10-1.png",'45','中国新闻网');
insert into news values('','2'," 这可能是最完整的国内新冠肺炎疫情发展脉络","11-1.png",'0','社会网络与数据挖掘');
insert into news values('','2'," 国内最新疫情速报：31省区市新增确诊病例31例，其中本土1例","12-1.png",'21','中国新闻网');
insert into news values('','2',"「防疫」新冠疫情最新消息：截至8月7日，国内7省出现确诊，值得警惕","13-1.png",'16','中国新闻网');
insert into news values('','2',"全国疫情通报！新增确诊病例17例，10例为本土病例，湖北5，吉林3，辽宁1，黑龙江1，7例境外输入均在内蒙古","14-1.png",'14','中国新闻网');
insert into news values('','2',"全国疫情通报！新增确诊病例28例，境外输入4例，上海2，陕西1，甘肃1，本土病例24例，北京21，河北2，天津1","16-1.png",'0','中国新闻网');
insert into news values('','2',"全国疫情通报！新增确诊病例40例，其中境外输入8例，本土病例32例，其中北京27例，河北4例，四川1例","17-1.png",'32','中国新闻网');
insert into news values('','2',"全国疫情通报！新增确诊病例7例，6例本土病例在吉林，1例境外输入在上海；新增本土疑似病例1例，在吉林","18-1.png",'22','中国新闻网');
insert into news values('','4',"古人智慧！预防疫情的九种方法","20-1.png;20-2.png;20-3.png",'32','崆峒养生汇');
insert into news values('','4',"献上六份最全防疫指南，请收好并转发给爱的人","19-1.png",'4','条山高速公安交警');
insert into news values('','4'," 除了戴好口罩，你还应怎样防疫？","21-1.png",'34','冰视频');
insert into news values('','4',"万众一心，战胜疫情，几个防疫措施要记好","22-1.png",'50','光明网');
insert into news values('','4',"自己总结的防疫小方法","23-1.png",'99','红网');
insert into news values('','4',"居家防疫消毒千万别过度！这些预防性消毒方法要掌握","24-1.png",'7','光明网');
insert into news values('','4',"开学在即，这份开学防疫指南，请老师转给家长！","25-1.png",'10','茶沉浮');
insert into news values('','2','张文宏再谈疫情形势：疫苗上市以后 国际疫情明年夏季可能会有转机','1.png','18','新华网客户端');
insert into news values('','3',"北美观察丨“地下疫情”曝光 美国第三波疫情来势汹汹","2-1.png;2-2.png;2-3.png",'28','央视记者 顾乡');
insert into news values('','3',"欧洲疫情强势反弹：西班牙确诊超百万 英或有数万人死亡","3-1.png",'22','中国新闻网');
insert into news values('','3',"疫情达“临界点”，“封城”将至？一天新增近35万例，全球疫情大反弹...","4-1.png",'13','光明网');
insert into news values('','3',"全球新冠感染超4千万 疫情仍在加速蔓延！美国、印度疫情仍严峻","5-1.png;5-2.png;5-3.png",'97','排头国际');
insert into news values('','3',"意大利疫情突然反弹，7000师生确诊，学校被迫停课，中方火速发声","6-1.png",'0','中国新闻网');
insert into news values('','3',"今年秋冬疫情会大规模暴发？专家：不认同，最危险的是12月至春节","7-1.png",'33','健康时报');
insert into news values('','3',"戴口罩！全球第二波疫情已暴发","8-1.png",'21','南充播报');
insert into news values('','2',"最新疫情！昨天0时至24时，全国新增新冠肺炎确诊病例2590例","9-1.png",'12','中国新闻网');
insert into news values('','2'," 最新疫情消息：我国本土再次发生聚集性传染，疫情可能会反扑吗？","10-1.png",'45','中国新闻网');
insert into news values('','2'," 这可能是最完整的国内新冠肺炎疫情发展脉络","11-1.png",'0','社会网络与数据挖掘');
insert into news values('','2'," 国内最新疫情速报：31省区市新增确诊病例31例，其中本土1例","12-1.png",'21','中国新闻网');
insert into news values('','2',"「防疫」新冠疫情最新消息：截至8月7日，国内7省出现确诊，值得警惕","13-1.png",'16','中国新闻网');
insert into news values('','2',"全国疫情通报！新增确诊病例17例，10例为本土病例，湖北5，吉林3，辽宁1，黑龙江1，7例境外输入均在内蒙古","14-1.png",'14','中国新闻网');
insert into news values('','2',"全国疫情通报！新增确诊病例28例，境外输入4例，上海2，陕西1，甘肃1，本土病例24例，北京21，河北2，天津1","16-1.png",'0','中国新闻网');
insert into news values('','2',"全国疫情通报！新增确诊病例40例，其中境外输入8例，本土病例32例，其中北京27例，河北4例，四川1例","17-1.png",'32','中国新闻网');
insert into news values('','2',"全国疫情通报！新增确诊病例7例，6例本土病例在吉林，1例境外输入在上海；新增本土疑似病例1例，在吉林","18-1.png",'22','中国新闻网');
insert into news values('','4',"古人智慧！预防疫情的九种方法","20-1.png;20-2.png;20-3.png",'32','崆峒养生汇');
insert into news values('','4',"献上六份最全防疫指南，请收好并转发给爱的人","19-1.png",'4','条山高速公安交警');
insert into news values('','4'," 除了戴好口罩，你还应怎样防疫？","21-1.png",'34','冰视频');
insert into news values('','4',"万众一心，战胜疫情，几个防疫措施要记好","22-1.png",'50','光明网');
insert into news values('','4',"自己总结的防疫小方法","23-1.png",'99','红网');
insert into news values('','4',"居家防疫消毒千万别过度！这些预防性消毒方法要掌握","24-1.png",'7','光明网');
insert into news values('','4',"开学在即，这份开学防疫指南，请老师转给家长！","25-1.png",'10','茶沉浮');