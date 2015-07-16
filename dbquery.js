var V = require('vertica');


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

Self.prototype.queryStockRelatedPost = function (dateString) {
	//this.conn.query('')
}



 return new Self(cfg)
}