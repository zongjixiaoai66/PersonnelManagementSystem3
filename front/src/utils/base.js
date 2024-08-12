const base = {
    get() {
        return {
            url : "http://localhost:8080/renshiguanli/",
            name: "renshiguanli",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/renshiguanli/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "人事管理系统"
        } 
    }
}
export default base
