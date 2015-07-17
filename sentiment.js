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


//var py = require('node-python');
//var snlp = py.import('SnowNLP');
//__inspect(snlp)



var cpSpawn = require('child_process').spawn
	module.exports = {
		test : function (test,cb) {
			var sProcess = cpSpawn('python /Users/henry/2code/sentimental/sentimental/sentiments.py',
				[],
				{ cwd: undefined, env: process.env })
			sProcess.stdin.write('[123, "哈哈哈哈哈"]');
			sProcess.stdout.on('data', function (data){
				cb(data);
			});
			sProcess.on('close', function (code) {
			  if (code !== 0) {
			    console.log('ps process exited with code ' + code);
			  }
			});

		}
}