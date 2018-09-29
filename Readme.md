#  fruit shop  demo 

本demo是一个简单的水果商店demo，包含用户管理、商品抢购、商品购买等功能。Demo在业务处理中，会使用到CCE集群，AOM/APM监控和拓扑，SFS存储，DCS缓存，RDS数据库（可用DDM接管RDS，demo支持对接DDM），DMS消息，ELB（可选）。同时开展压测时会使用到CPTS服务。
 
demo包含6个模块，各模块介绍：
web-consle为前台页面模块，负责页面展示。
product-manager为商品管理模块。
scene-init为预制抢购用户和抢购商品数量的模块，使用到抢购功能时需要关注。
rushtobuy-processor 为抢购后处理模块，负责处理抢购后的订单处理。
database-controller为数据库管理模块，前端模块访问数据库都会与数据库管理模块交互。
init-db为数据库初始化模块，为job任务，作用是在demo部署后提前预制数据库和表空间。
