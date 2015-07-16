var fs = require('fs');
var r = require('sync-request');
var path = require('path');
var file = fs.readFileSync(path.join(__dirname , 'input.txt'),{
	encoding : 'utf-8'
});

var arr = file.match(/.{1,300}/g);
var ans = [];

for (var i=0;i<arr.length; i++) {
	var line = arr[i];
	console.log(i +'of' + arr.length);
var res = r('GET', 'http://api.pullword.com/get.php?source='
	+
	encodeURIComponent(line)
	+
	'&param1=0.8&param2=1');

ans = ans.concat(res.getBody('utf-8').split('\r\n'));

}


ans = ans.map(function (self){
	console.log(self.split(':')[0]);
	return self.split(':')[0];
})

console.log(ans);


fs.writeFileSync(path.join(__dirname , 'output.txt'), ans.join('\n') ,{encoding : 'utf-8'})
