# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Vote.delete_all

projects = [
  {name: "做到", total: 2399, people: 1582, url: "https://fullstack.xinshengdaxue.com/works/562"},
  {name: "Fitness健身俱乐部", total: 2004, people: 1545, url: "https://fullstack.xinshengdaxue.com/works/588"},
  {name: "品味食验室", total: 1626, people: 886, url: "https://fullstack.xinshengdaxue.com/works/556"},
  {name: "品质男装，只为男人", total: 1392, people: 1268, url: "https://fullstack.xinshengdaxue.com/works/628"},
  {name: "艺汇", total: 1342, people: 1158, url: "https://fullstack.xinshengdaxue.com/works/608"},
  {name: "美哲宝", total: 1282, people: 874, url: "https://fullstack.xinshengdaxue.com/works/571"},
  {name: "效能空间", total: 1116, people: 877, url: "https://fullstack.xinshengdaxue.com/works/670"},
  {name: "Metso", total: 1093, people: 841, url: "https://fullstack.xinshengdaxue.com/works/580"},
  {name: "J & A SELECT", total: 1056, people: 290, url: "https://fullstack.xinshengdaxue.com/works/558"},
  {name: "猫伊工坊", total: 1025, people: 773, url: "https://fullstack.xinshengdaxue.com/works/598"}, # 10
  {name: "卖萌网", total: 1022, people: 837, url: "https://fullstack.xinshengdaxue.com/works/583"},
  {name: "微缩世界", total: 1016, people: 704, url: "https://fullstack.xinshengdaxue.com/works/591"},
  {name: "一休工作室", total: 992, people: 784, url: "https://fullstack.xinshengdaxue.com/works/584"},
  {name: "季风", total: 945, people: 813, url: "https://fullstack.xinshengdaxue.com/works/604"},
  {name: "幸福小站", total: 943, people: 759, url: "https://fullstack.xinshengdaxue.com/works/609"},
  {name: "商店大赛加油站", total: 896, people: 432, url: "https://fullstack.xinshengdaxue.com/works/642"},
  {name: "极简生活法", total: 896, people: 324, url: "https://fullstack.xinshengdaxue.com/works/572"},
  {name: "思想便当", total: 751, people: 519, url: "https://fullstack.xinshengdaxue.com/works/594"},
  {name: "翻越高考", total: 744, people: 308, url: "https://fullstack.xinshengdaxue.com/works/625"},
  {name: "Select.", total: 668, people: 212, url: "https://fullstack.xinshengdaxue.com/works/579"}, # 20
  {name: "元气少女慢跑社区 BosGalRun™", total: 628, people: 444, url: "https://fullstack.xinshengdaxue.com/works/581"},
  {name: "JDstore", total: 623, people: 343, url: "https://fullstack.xinshengdaxue.com/works/582"},
  {name: "Craftent 之 ibag (爱包坊）", total: 620, people: 436, url: "https://fullstack.xinshengdaxue.com/works/574"},
  {name: "南山先生", total: 439, people: 287, url: "https://fullstack.xinshengdaxue.com/works/557"},
  {name: "猎人学院", total: 395, people: 179, url: "https://fullstack.xinshengdaxue.com/works/576"},
  {name: "A thinking reed", total: 388, people: 216, url: "https://fullstack.xinshengdaxue.com/works/605"},
  {name: "大绿色:大自然的颜色", total: 368, people: 232, url: "https://fullstack.xinshengdaxue.com/works/570"},
  {name: "晨光布艺", total: 354, people: 138, url: "https://fullstack.xinshengdaxue.com/works/559"},
  {name: "野兽饮食", total: 350, people: 206, url: "https://fullstack.xinshengdaxue.com/works/603"},
  {name: "羁绊之爪", total: 347, people: 223, url: "https://fullstack.xinshengdaxue.com/works/566"}, # 30
  {name: "极客生活馆", total: 339, people: 255, url: "https://fullstack.xinshengdaxue.com/works/621"},
  {name: "Big Kid", total: 324, people: 280, url: "https://fullstack.xinshengdaxue.com/works/671"},
  {name: "绘生活:漫空间", total: 272, people: 128, url: "https://fullstack.xinshengdaxue.com/works/565"},
  {name: "聚聚", total: 268, people: 136, url: "https://fullstack.xinshengdaxue.com/works/563"},
  {name: "SweeTart", total: 255, people: 63, url: "https://fullstack.xinshengdaxue.com/works/560"},
  {name: "名酒商城", total: 241, people: 133, url: "https://fullstack.xinshengdaxue.com/works/602"},
  {name: "程爱", total: 226, people: 174, url: "https://fullstack.xinshengdaxue.com/works/632"},
  {name: "YummyMap", total: 223, people: 159, url: "https://fullstack.xinshengdaxue.com/works/638"},
  {name: "潜在世界", total: 221, people: 73, url: "https://fullstack.xinshengdaxue.com/works/599"},
  {name: "乐富支付Mpos", total: 214, people: 70, url: "https://fullstack.xinshengdaxue.com/works/627"}, # 40
  {name: "非读不可", total: 206, people: 82, url: "https://fullstack.xinshengdaxue.com/works/635"},
  {name: "禅 食", total: 184, people: 92, url: "https://fullstack.xinshengdaxue.com/works/616"},
  {name: "七城工作室", total: 182, people: 50, url: "https://fullstack.xinshengdaxue.com/works/590"},
  {name: "MusicStore", total: 177, people: 81, url: "https://fullstack.xinshengdaxue.com/works/600"},
  {name: "Wilderness Camp", total: 160, people: 44, url: "https://fullstack.xinshengdaxue.com/works/561"},
  {name: "真读", total: 149, people: 109, url: "https://fullstack.xinshengdaxue.com/works/614"},
  {name: "寻踏水的痕迹", total: 148, people: 36, url: "https://fullstack.xinshengdaxue.com/works/620"},
  {name: "跑过", total: 139, people: 71, url: "https://fullstack.xinshengdaxue.com/works/656"},
  {name: "Dream House", total: 138, people: 42, url: "https://fullstack.xinshengdaxue.com/works/611"},
  {name: "米家", total: 137, people: 45, url: "https://fullstack.xinshengdaxue.com/works/613"} #50
]

projects.each do |project|
  Vote.create!(Vote.init(project))
end
