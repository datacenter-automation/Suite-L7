if(!self.define){const e=e=>{"require"!==e&&(e+=".js");let r=Promise.resolve();return s[e]||(r=new Promise(async r=>{if("document"in self){const s=document.createElement("script");s.src=e,document.head.appendChild(s),s.onload=r}else importScripts(e),r()})),r.then(()=>{if(!s[e])throw new Error(`Module ${e} didn’t register its module`);return s[e]})},r=(r,s)=>{Promise.all(r.map(e)).then(e=>s(1===e.length?e[0]:e))},s={require:Promise.resolve(r)};self.define=(r,i,t)=>{s[r]||(s[r]=Promise.resolve().then(()=>{let s={};const o={uri:location.origin+r.slice(1)};return Promise.all(i.map(r=>{switch(r){case"exports":return s;case"module":return o;default:return e(r)}})).then(e=>{const r=t(...e);return s.default||(s.default=r),s})}))}}define("./service-worker.js",["./workbox-1bbb3e0e"],(function(e){"use strict";self.addEventListener("message",e=>{e.data&&"SKIP_WAITING"===e.data.type&&self.skipWaiting()}),e.precacheAndRoute([{url:"//css/app.css",revision:"ecf39d7d8c67c13f642ce9842bff23d8"},{url:"//js/app.js",revision:"8dae6b3ef12aae89905fed2232bf11e6"},{url:"//js/app.js.LICENSE.txt",revision:"415bee4aece00d506ce1b1d37c7f310c"},{url:"//js/manifest.js",revision:"3c768977c2574a34506ebd0fed7ae101"},{url:"//js/vendor.js",revision:"660b69a3965a90c250aec7a6f2b20b56"},{url:"//js/vendor.js.LICENSE.txt",revision:"d944f5d37963d6bd217b4253707a1512"}],{})}));
