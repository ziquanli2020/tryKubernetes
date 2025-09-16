const randomString = Math.random().toString(36).slice(2, 10);
var isoTime = new Date().toISOString();
console.log(isoTime+': '+randomString);
setInterval(() => {
    isoTime = new Date().toISOString();
    console.log(isoTime+': '+randomString);
}, 5000);