var http = require('http');


var time = 1000
http.createServer(function (request, response) {
    
    time = 1000
    setTimeout(() => {
        response.writeHead(200, {'Content-Type': 'text/plain'});
        // 发送响应数据 "Hello World"
        response.end('Hello World\n');
    }, time);
}).listen(8888);

// 终端打印如下信息
console.log('Server running at https://127.0.0.1:8888/');
