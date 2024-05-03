//打开数据库
function getDatabase() {

return openDatabaseSync("MyStorage", "1.0", "StorageDatabase", 100000);

}

//初始化数据库文件
function initialize() {

var db = getDatabase();
db.transaction(function(tx) {
            tx.executeSql('CREATE TABLE IF NOT EXISTS user_table (username TEXT, password TEXT,email TEXT PRIMARY KEY)')
    });
}

//添加用户账户信息
function addUser(username, password,email) {
    var db = getDatabase();
            if(findUsers(username,email)===true){return false}  //已经注册
                else
            {
                db.localDatabase.transaction(function(tx) {
                tx.executeSql('INSERT INTO user_table (username, password,email) VALUES (?, ?, ?)', [username, password,email])
            })
            }
            return true
        }
//查找用户
        function findUsers(username,email) {
            //var users = []
                var db = getDatabase();
            db.localDatabase.transaction(function(tx) {
                var result = tx.executeSql('SELECT * FROM user_table')
                for(var i = 0; i < result.rows.length; i++) {
                    //users.push({id: result.rows.item(i).id, username: result.rows.item(i).username, password: result.rows.item(i).password,email:result.rows.item(i).password})
                    if(result.rows.item(i).username===username&&result.rows.item(i).email===email){
                       return true  //查找用户成功
                    }
                }
            })
            return false
        }
