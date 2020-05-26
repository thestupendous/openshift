process.env["NODE_TLS_REJECT_UNAUTHORIZED"] = 0;
const https= require('https')
token = process.env.TOKEN
var req = https.request({
    host: '192.168.99.105',
    port: 8443,
    path: '/api/v1/namespaces/proj-alpha/pods',
    method: 'GET',
    headers: {
       "Authorization": "Bearer "+token,
       "Content-Type": "application/yaml",
       "Accept": "application/yaml"
        }

}, function(res){

    var body = [];
    res.on('data', function(data){
        body.push(data);
    });

    res.on('end', function(){
        console.log( body.join('') );
    });

});
req.end();

req.on('error', function(err){
    console.log(err);
});

