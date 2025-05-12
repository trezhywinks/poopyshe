console.log("Hi, trezhywinks! welcome to poopyshe");
const qrcode = require('qrcode-terminal');
const colors = require('colors');
const express = require('express');
const app = express();
const figlet = require('figlet');
const banner_poopy = "poopyshe";
const port = "4040";
const host = `http://localhost:${port}`;

app.use(express.static('poopy'));

app.get('/server', (req, res) => {
res.sendFile(__dirname + '/poopy/index.html');
})

function qr(){
qrcode.generate(host, {small: true}, function (qrcode) {
console.log(qrcode);
});
}

app.listen(port, () => {
figlet.text(banner_poopy, {font: 'Small'}, (err, data) => {
if(err){
console.log(err);
}
 console.log(data.bold.yellow);
qr();
//console.log(`\n[=] ${host}`.bold.yellow);
console.log('Server runing PORT 4040'.bold.black);
console.log('Host => '.bold.black, host);

});
});
