var V = require('vertica');
var fs = require('fs')
var path = require('path')
module.exports = function (cfg) {

	var Self = function self (config) {
	this.conn = V.connect(config, function (err) {
		if (err) throw err;
	})
	return this;
}


Self.prototype.hi = function() {
	console.log('qwe');
};

Self.prototype.queryStockRelatedPost = function (dateString, callback) {
	var q = this.conn.query(fs.readFileSync(
		path.join(
			__dirname,
			'run.sql')
		, {
			encoding : 'utf-8'
		}))
	q.on('row', callback);
	q.on('fields', callback);
	q.on('error', callback);
	q.on('end', callback);
}



 return new Self(cfg)
}