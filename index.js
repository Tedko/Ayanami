require('colors');
function __inspect (sth){
	console.log(JSON.stringify(sth))
}
function say(something) {
	console.log('INFO : '.cyan.inverse + JSON.stringify(something).green)
}
function warn(something) {
	console.log('WARN : '.yellow.inverse + JSON.stringify(something).red)
}

var db = require('./dbquery')({
	host : '120.131.1.250',
	user : 'dbadmin',
	passwd : 'admin123'
});
var sentiment = require('./sentiment');

db.queryStockRelatedPost('', function (d) {
	__inspect(d)
});
sentiment.test("我了个大叉", function (s) {
	__inspect(s);
})



