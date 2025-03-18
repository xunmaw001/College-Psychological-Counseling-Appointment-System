
var projectName = '高校心理咨询预约系统';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.jsp'
}, 
]


var indexNav = [

{
	name: '公告信息',
	url: './pages/gonggaoxinxi/list.jsp'
}, 
{
	name: '心理医生信息',
	url: './pages/xinliyishengxinxi/list.jsp'
}, 

]

var adminurl =  "http://localhost:8080/jspmc663g/index.jsp";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"学生","menuJump":"列表","tableName":"xuesheng"}],"menu":"学生管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"心理医生","menuJump":"列表","tableName":"xinliyisheng"}],"menu":"心理医生管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"公告信息","menuJump":"列表","tableName":"gonggaoxinxi"}],"menu":"公告信息管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"心理医生信息","menuJump":"列表","tableName":"xinliyishengxinxi"}],"menu":"心理医生信息管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"预约咨询","menuJump":"列表","tableName":"yuyuezixun"}],"menu":"预约咨询管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"学生评价","menuJump":"列表","tableName":"xueshengpingjia"}],"menu":"学生评价管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"管理员","tableName":"users"}],"menu":"管理员管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"公告信息列表","menuJump":"列表","tableName":"gonggaoxinxi"}],"menu":"公告信息模块"},{"child":[{"buttons":["查看","预约咨询"],"menu":"心理医生信息列表","menuJump":"列表","tableName":"xinliyishengxinxi"}],"menu":"心理医生信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看","学生评价"],"menu":"预约咨询","menuJump":"列表","tableName":"yuyuezixun"}],"menu":"预约咨询管理"},{"child":[{"buttons":["查看"],"menu":"学生评价","menuJump":"列表","tableName":"xueshengpingjia"}],"menu":"学生评价管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"公告信息列表","menuJump":"列表","tableName":"gonggaoxinxi"}],"menu":"公告信息模块"},{"child":[{"buttons":["查看","预约咨询"],"menu":"心理医生信息列表","menuJump":"列表","tableName":"xinliyishengxinxi"}],"menu":"心理医生信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"学生","tableName":"xuesheng"},{"backMenu":[{"child":[{"buttons":["查看","审核"],"menu":"预约咨询","menuJump":"列表","tableName":"yuyuezixun"}],"menu":"预约咨询管理"},{"child":[{"buttons":["查看"],"menu":"学生评价","menuJump":"列表","tableName":"xueshengpingjia"}],"menu":"学生评价管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"公告信息列表","menuJump":"列表","tableName":"gonggaoxinxi"}],"menu":"公告信息模块"},{"child":[{"buttons":["查看","预约咨询"],"menu":"心理医生信息列表","menuJump":"列表","tableName":"xinliyishengxinxi"}],"menu":"心理医生信息模块"}],"hasBackLogin":"是","hasBackRegister":"是","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"心理医生","tableName":"xinliyisheng"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
