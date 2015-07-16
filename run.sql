SELECT uid,mid,blog_content FROM HDATA.weibo_content
WHERE 
blog_time LIKE '%2015-06-29%'
AND
REGEXP_LIKE(blog_content, 

  '((
a股|交易|现货|市场|原油|股票|中国|投资|个股|风险|股市|做空|数据|公司|分享|交易所|武装|投资者|重点|证监会|行情|收取|走势|重大|证券|重要|财经|经手费|利好|非农|专业|控制|收费|利润|暴跌|交易结算|过户费|救市|相关|下调|证券交易所|证券交易|新闻|收费标准|金额|交易过户|标准|期指|全球|成交金额|沪深|结算|中国证券|传闻|盘面|机会|利用|经济|关注|证券登记|调整|登记|资金|成交|赚钱|牛市|分析师|降低|国家|反弹|下跌|保护自己|金融|更好|技巧|发表|重金|方法|重点关注|盘面分析|股民|推荐|把握|行情软件|软件|调降|传授|无头苍蝇|市场风险|索罗斯|黑幕|揭晓|管理|外资|双向|降幅|融资|刚刚|大盘|基金|证券公司|资讯|人士|双边|银行|客户|头条|杠杆|政府|指数|东方财富|震荡|财富网|研究|消息|政策|上市|创业板|机构|允许|中国股市|费用|发布|创业|三大|正式|来自|实施|券商|中金|今日头条|交易日|监管|板块|美国|散户|崩溃|兴业证券|管理层|未来|通过|沪市|早盘|大跌|信心|融资融券|股指期货|财经网|股灾|港股|收盘|亿元|问题|跌幅|资产|考虑|秦山|期货|希腊|上涨|强制平仓|高晓松|降幅|流动性|收益|持续|报道|影响|参与|万亿|ipo|证监|泡沫|抄底|开始|出现|作用|资本市场|国家队|黄金|迎来|观察|江苏|再度|柳传志|华尔街|香港|面值|转让|策略|短期|深市|沪指|格局|最大|情况|开盘|希望|实现|回归|后市|发自|发展|决定|仓位|经济学家|中国经济|人民币|遭遇|连续|进入|跌停|相信|流入|搜狐|恐慌|反转|出台|公告|不足|上演|融资渠道|市场数据|凤凰财经|频道|部门|逆转|这些|请问|见闻|自主|综合|组合|等待|盘中|涨幅|测算|根本|改革|操作|护盘|成为|大势|势力|剧烈|准备|价值|上市公司|印花税|金牌|过去|达到|资本|行动|股价|突发|猜想|波动|新规|成功|央行|场外|出手|减持|价格|严重|财经频道|看新闻|配资|连发|还原|转发|调低|记者|规模|表态|虽然|股份|罕见|经历|筑底|直接|活跃|暴涨|时候|救援|措施|失守|多方|发行|历史|力量|业务|证券时报|通讯社|涨停板|收益率|封涨停|大逆转|霹雳|逻辑|进场|财富|解释|行为|脆弱|股东|翻身|翻红|状态|概率|本轮|最终|摊牌|拉升|投票|抓紧|惊天|急跌|快速|底部|幅度|市值|安全|发起|力度|出炉|关键|江苏银行|中国政府|深成指|新三板|手续费|上交所|跳水|跌破|负责|解读|表现|维稳|结构|系列|私募|申请|熊市|涨停|流动|榨干|概念|期盼|大涨|大佬|博弈|募资|报复性反弹|金融危机|量化投资|迄今为止|攻守兼备|心惊肉跳|处理方式|南方基金|交易费用|二线蓝筹|中国联通|港股通|新财富|新浪网|市盈率|高盛|高点|高开|面临|静态|防御|量化|重挫|迹象|趋势|短线|狙击|支持|换手|损失|急挫|崩盘|展期|小幅|土地|国债|原因|利空|全面|低于|企稳|上升

) *){3,}')

AND
mid>(SELECT max(mid) FROM HDATA.weibo_content ) *RANDOM()
LIMIT 1000        
;
 
