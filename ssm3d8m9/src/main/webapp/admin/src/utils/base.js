const base = {
    get() {
        return {
            url : "http://localhost:8080/ssm3d8m9/",
            name: "ssm3d8m9",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssm3d8m9/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "电脑公司财务管理系统"
        } 
    }
}
export default base
