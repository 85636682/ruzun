webpackJsonp([10,14],{1:function(t,e,r){t.exports={"default":r(5),__esModule:!0}},2:function(t,e,r){!function(e,r){t.exports=r()}(this,function(){return function(t){function e(n){if(r[n])return r[n].exports;var o=r[n]={exports:{},id:n,loaded:!1};return t[n].call(o.exports,o,o.exports,e),o.loaded=!0,o.exports}var r={};return e.m=t,e.c=r,e.p="",e(0)}([function(t,e,r){t.exports=r(4)},function(t,e){"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e["default"]={props:{leftOptions:{type:Object,"default":function(){return{showBack:!0,backText:"Back",preventGoBack:!1}}},rightOptions:{type:Object,"default":function(){return{showMore:!1}}}},methods:{onClickBack:function(){this.leftOptions.preventGoBack?this.$emit("on-click-back"):history.back()}}}},function(t,e){},function(t,e){t.exports="<div class=vux-header> <div class=vux-header-left> <a class=vux-header-back @click.preventdefault v-show=leftOptions.showBack @click=onClickBack>{{leftOptions.backText}}</a> <slot name=left></slot> </div> <h1 class=vux-header-title><slot></slot></h1> <div class=vux-header-right> <a class=vux-header-more @click.preventdefault @click=\"$emit('on-click-more')\" v-if=rightOptions.showMore></a> <slot name=right></slot> </div> </div>"},function(t,e,r){var n,o;r(2),n=r(1),o=r(3),t.exports=n||{},t.exports.__esModule&&(t.exports=t.exports["default"]),o&&(("function"==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports).template=o)}])})},3:function(t,e,r){"use strict";function n(t){return t&&t.__esModule?t:{"default":t}}function o(t){return t.json()}function i(t){if(t.status>=200&&t.status<300)return t;var e=new Error(t.statusText);throw e.res=t,e.type="http",e}function s(t,e){return e?t+" "+e:t}function a(t,e){var r=arguments.length<=2||void 0===arguments[2]?"":arguments[2];return t=w+t,e&&(t+="?"+v["default"].stringify(e)),fetch(t,{headers:{Authorization:s("User",r)}}).then(i).then(o)}function u(t,e){var r=arguments.length<=2||void 0===arguments[2]?{}:arguments[2],n=arguments.length<=3||void 0===arguments[3]?"":arguments[3];return t=w+t,fetch(t,{method:e,headers:{Accept:"application/json","Content-Type":"application/json",Authorization:s("User",n)},body:(0,h["default"])(r)}).then(i).then(o)}function c(t,e){var r=arguments.length<=2||void 0===arguments[2]?"":arguments[2];return u(t,"POST",e,r)}function l(t,e){var r=arguments.length<=2||void 0===arguments[2]?"":arguments[2];return u(t,"PUT",e,r)}function d(t,e){var r=arguments.length<=2||void 0===arguments[2]?"":arguments[2];return u(t,"PATCH",e,r)}function f(t,e){var r=arguments.length<=2||void 0===arguments[2]?"":arguments[2];return u(t,"DELETE",e,r)}Object.defineProperty(e,"__esModule",{value:!0});var p=r(1),h=n(p);e.get=a,e.post=c,e.put=l,e.patch=d,e.del=f;var y=r(6),v=n(y),m=r(4),b=n(m);r(9);var w=b["default"].domain+b["default"].apiPath},4:function(t,e){"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e["default"]={domain:"http://ruzun.jiancan.me",apiPath:"/api/v1"}},5:function(t,e,r){var n=r(12),o=n.JSON||(n.JSON={stringify:JSON.stringify});t.exports=function(t){return o.stringify.apply(o,arguments)}},6:function(t,e,r){"use strict";function n(t,e){return e.encode?e.strict?o(t):encodeURIComponent(t):t}var o=r(8),i=r(7);e.extract=function(t){return t.split("?")[1]||""},e.parse=function(t){var e=Object.create(null);return"string"!=typeof t?e:(t=t.trim().replace(/^(\?|#|&)/,""))?(t.split("&").forEach(function(t){var r=t.replace(/\+/g," ").split("="),n=r.shift(),o=r.length>0?r.join("="):void 0;n=decodeURIComponent(n),o=void 0===o?null:decodeURIComponent(o),void 0===e[n]?e[n]=o:Array.isArray(e[n])?e[n].push(o):e[n]=[e[n],o]}),e):e},e.stringify=function(t,e){var r={encode:!0,strict:!0};return e=i(r,e),t?Object.keys(t).sort().map(function(r){var o=t[r];if(void 0===o)return"";if(null===o)return n(r,e);if(Array.isArray(o)){var i=[];return o.slice().forEach(function(t){void 0!==t&&(null===t?i.push(n(r,e)):i.push(n(r,e)+"="+n(t,e)))}),i.join("&")}return n(r,e)+"="+n(o,e)}).filter(function(t){return t.length>0}).join("&"):""}},7:function(t,e){"use strict";function r(t){if(null===t||void 0===t)throw new TypeError("Object.assign cannot be called with null or undefined");return Object(t)}function n(){try{if(!Object.assign)return!1;var t=new String("abc");if(t[5]="de","5"===Object.getOwnPropertyNames(t)[0])return!1;for(var e={},r=0;r<10;r++)e["_"+String.fromCharCode(r)]=r;var n=Object.getOwnPropertyNames(e).map(function(t){return e[t]});if("0123456789"!==n.join(""))return!1;var o={};return"abcdefghijklmnopqrst".split("").forEach(function(t){o[t]=t}),"abcdefghijklmnopqrst"===Object.keys(Object.assign({},o)).join("")}catch(i){return!1}}var o=Object.prototype.hasOwnProperty,i=Object.prototype.propertyIsEnumerable;t.exports=n()?Object.assign:function(t,e){for(var n,s,a=r(t),u=1;u<arguments.length;u++){n=Object(arguments[u]);for(var c in n)o.call(n,c)&&(a[c]=n[c]);if(Object.getOwnPropertySymbols){s=Object.getOwnPropertySymbols(n);for(var l=0;l<s.length;l++)i.call(n,s[l])&&(a[s[l]]=n[s[l]])}}return a}},8:function(t,e){"use strict";t.exports=function(t){return encodeURIComponent(t).replace(/[!'()*]/g,function(t){return"%"+t.charCodeAt(0).toString(16).toUpperCase()})}},9:function(t,e){!function(t){"use strict";function e(t){if("string"!=typeof t&&(t=String(t)),/[^a-z0-9\-#$%&'*+.\^_`|~]/i.test(t))throw new TypeError("Invalid character in header field name");return t.toLowerCase()}function r(t){return"string"!=typeof t&&(t=String(t)),t}function n(t){var e={next:function(){var e=t.shift();return{done:void 0===e,value:e}}};return y.iterable&&(e[Symbol.iterator]=function(){return e}),e}function o(t){this.map={},t instanceof o?t.forEach(function(t,e){this.append(e,t)},this):t&&Object.getOwnPropertyNames(t).forEach(function(e){this.append(e,t[e])},this)}function i(t){return t.bodyUsed?Promise.reject(new TypeError("Already read")):void(t.bodyUsed=!0)}function s(t){return new Promise(function(e,r){t.onload=function(){e(t.result)},t.onerror=function(){r(t.error)}})}function a(t){var e=new FileReader;return e.readAsArrayBuffer(t),s(e)}function u(t){var e=new FileReader;return e.readAsText(t),s(e)}function c(){return this.bodyUsed=!1,this._initBody=function(t){if(this._bodyInit=t,"string"==typeof t)this._bodyText=t;else if(y.blob&&Blob.prototype.isPrototypeOf(t))this._bodyBlob=t;else if(y.formData&&FormData.prototype.isPrototypeOf(t))this._bodyFormData=t;else if(y.searchParams&&URLSearchParams.prototype.isPrototypeOf(t))this._bodyText=t.toString();else if(t){if(!y.arrayBuffer||!ArrayBuffer.prototype.isPrototypeOf(t))throw new Error("unsupported BodyInit type")}else this._bodyText="";this.headers.get("content-type")||("string"==typeof t?this.headers.set("content-type","text/plain;charset=UTF-8"):this._bodyBlob&&this._bodyBlob.type?this.headers.set("content-type",this._bodyBlob.type):y.searchParams&&URLSearchParams.prototype.isPrototypeOf(t)&&this.headers.set("content-type","application/x-www-form-urlencoded;charset=UTF-8"))},y.blob?(this.blob=function(){var t=i(this);if(t)return t;if(this._bodyBlob)return Promise.resolve(this._bodyBlob);if(this._bodyFormData)throw new Error("could not read FormData body as blob");return Promise.resolve(new Blob([this._bodyText]))},this.arrayBuffer=function(){return this.blob().then(a)},this.text=function(){var t=i(this);if(t)return t;if(this._bodyBlob)return u(this._bodyBlob);if(this._bodyFormData)throw new Error("could not read FormData body as text");return Promise.resolve(this._bodyText)}):this.text=function(){var t=i(this);return t?t:Promise.resolve(this._bodyText)},y.formData&&(this.formData=function(){return this.text().then(f)}),this.json=function(){return this.text().then(JSON.parse)},this}function l(t){var e=t.toUpperCase();return v.indexOf(e)>-1?e:t}function d(t,e){e=e||{};var r=e.body;if(d.prototype.isPrototypeOf(t)){if(t.bodyUsed)throw new TypeError("Already read");this.url=t.url,this.credentials=t.credentials,e.headers||(this.headers=new o(t.headers)),this.method=t.method,this.mode=t.mode,r||(r=t._bodyInit,t.bodyUsed=!0)}else this.url=t;if(this.credentials=e.credentials||this.credentials||"omit",!e.headers&&this.headers||(this.headers=new o(e.headers)),this.method=l(e.method||this.method||"GET"),this.mode=e.mode||this.mode||null,this.referrer=null,("GET"===this.method||"HEAD"===this.method)&&r)throw new TypeError("Body not allowed for GET or HEAD requests");this._initBody(r)}function f(t){var e=new FormData;return t.trim().split("&").forEach(function(t){if(t){var r=t.split("="),n=r.shift().replace(/\+/g," "),o=r.join("=").replace(/\+/g," ");e.append(decodeURIComponent(n),decodeURIComponent(o))}}),e}function p(t){var e=new o,r=(t.getAllResponseHeaders()||"").trim().split("\n");return r.forEach(function(t){var r=t.trim().split(":"),n=r.shift().trim(),o=r.join(":").trim();e.append(n,o)}),e}function h(t,e){e||(e={}),this.type="default",this.status=e.status,this.ok=this.status>=200&&this.status<300,this.statusText=e.statusText,this.headers=e.headers instanceof o?e.headers:new o(e.headers),this.url=e.url||"",this._initBody(t)}if(!t.fetch){var y={searchParams:"URLSearchParams"in t,iterable:"Symbol"in t&&"iterator"in Symbol,blob:"FileReader"in t&&"Blob"in t&&function(){try{return new Blob,!0}catch(t){return!1}}(),formData:"FormData"in t,arrayBuffer:"ArrayBuffer"in t};o.prototype.append=function(t,n){t=e(t),n=r(n);var o=this.map[t];o||(o=[],this.map[t]=o),o.push(n)},o.prototype["delete"]=function(t){delete this.map[e(t)]},o.prototype.get=function(t){var r=this.map[e(t)];return r?r[0]:null},o.prototype.getAll=function(t){return this.map[e(t)]||[]},o.prototype.has=function(t){return this.map.hasOwnProperty(e(t))},o.prototype.set=function(t,n){this.map[e(t)]=[r(n)]},o.prototype.forEach=function(t,e){Object.getOwnPropertyNames(this.map).forEach(function(r){this.map[r].forEach(function(n){t.call(e,n,r,this)},this)},this)},o.prototype.keys=function(){var t=[];return this.forEach(function(e,r){t.push(r)}),n(t)},o.prototype.values=function(){var t=[];return this.forEach(function(e){t.push(e)}),n(t)},o.prototype.entries=function(){var t=[];return this.forEach(function(e,r){t.push([r,e])}),n(t)},y.iterable&&(o.prototype[Symbol.iterator]=o.prototype.entries);var v=["DELETE","GET","HEAD","OPTIONS","POST","PUT"];d.prototype.clone=function(){return new d(this)},c.call(d.prototype),c.call(h.prototype),h.prototype.clone=function(){return new h(this._bodyInit,{status:this.status,statusText:this.statusText,headers:new o(this.headers),url:this.url})},h.error=function(){var t=new h(null,{status:0,statusText:""});return t.type="error",t};var m=[301,302,303,307,308];h.redirect=function(t,e){if(m.indexOf(e)===-1)throw new RangeError("Invalid status code");return new h(null,{status:e,headers:{location:t}})},t.Headers=o,t.Request=d,t.Response=h,t.fetch=function(t,e){return new Promise(function(r,n){function o(){return"responseURL"in s?s.responseURL:/^X-Request-URL:/m.test(s.getAllResponseHeaders())?s.getResponseHeader("X-Request-URL"):void 0}var i;i=d.prototype.isPrototypeOf(t)&&!e?t:new d(t,e);var s=new XMLHttpRequest;s.onload=function(){var t={status:s.status,statusText:s.statusText,headers:p(s),url:o()},e="response"in s?s.response:s.responseText;r(new h(e,t))},s.onerror=function(){n(new TypeError("Network request failed"))},s.ontimeout=function(){n(new TypeError("Network request failed"))},s.open(i.method,i.url,!0),"include"===i.credentials&&(s.withCredentials=!0),"responseType"in s&&y.blob&&(s.responseType="blob"),i.headers.forEach(function(t,e){s.setRequestHeader(e,t)}),s.send("undefined"==typeof i._bodyInit?null:i._bodyInit)})},t.fetch.polyfill=!0}}("undefined"!=typeof self?self:this)},24:function(t,e,r){"use strict";function n(t){if(t&&t.__esModule)return t;var e={};if(null!=t)for(var r in t)Object.prototype.hasOwnProperty.call(t,r)&&(e[r]=t[r]);return e["default"]=t,e}function o(){return a.get("/games")}function i(t){return a.get("/games/"+t)}Object.defineProperty(e,"__esModule",{value:!0}),e.getGames=o,e.getGame=i;var s=r(3),a=n(s)},45:function(t,e,r){"use strict";function n(t){if(t&&t.__esModule)return t;var e={};if(null!=t)for(var r in t)Object.prototype.hasOwnProperty.call(t,r)&&(e[r]=t[r]);return e["default"]=t,e}function o(t){return t&&t.__esModule?t:{"default":t}}Object.defineProperty(e,"__esModule",{value:!0});var i=r(2),s=o(i),a=r(24),u=n(a),c=r(13);e["default"]={vuex:{actions:{showToast:c.showToast}},data:function(){return{game:{teams:[]}}},route:{data:function(t){var e=this;u.getGame(this.$route.params.gid).then(function(t){e.$set("game",t.game)})["catch"](function(t){e.showToast(t)})}},methods:{},components:{XHeader:s["default"]}}},80:function(t,e,r){e=t.exports=r(10)(),e.push([t.id,"","",{version:3,sources:[],names:[],mappings:"",file:"show.vue",sourceRoot:"webpack://"}])},93:function(t,e,r){var n=r(80);"string"==typeof n&&(n=[[t.id,n,""]]);r(11)(n,{});n.locals&&(t.exports=n.locals)},102:function(t,e){t.exports=' <x-header> {{game.name}} </x-header> <div class=team_logo> <div class=logo> <img :src=game.logo alt=""/> </div> </div> <div class=weui_cells> <div class=weui_cell> <div class=weui_cell_hd> <i class="fa fa-at"></i> </div> <div class="weui_cell_bd weui_cell_primary"> <p style=padding-left:10px>{{game.name}}</p> </div> <div class=weui_cell_ft></div> </div> <div class="weui_cell weui_cells_access" v-link="{name: \'constitution\', params: {gid: this.game.id}}"> <div class=weui_cell_hd> <i class="fa fa-tag"></i> </div> <div class="weui_cell_bd weui_cell_primary"> <p style=padding-left:10px>查看章程</p> </div> <div class=weui_cell_ft></div> </div> <div class="weui_cell weui_cells_access" v-link="{name: \'playeds\', params: {gid: this.game.id}}"> <div class=weui_cell_hd> <i class="fa fa-tag"></i> </div> <div class="weui_cell_bd weui_cell_primary"> <p style=padding-left:10px>查看赛程</p> </div> <div class=weui_cell_ft></div> </div> </div> <div class=weui_cells_title>参赛队伍：</div> <div class=weui_cells> <div class=weui_cell v-for="team in game.teams"> <div class=weui_cell_hd> <img :src=team.logo style=width:20px;margin-right:5px;display:block> </div> <div class="weui_cell_bd weui_cell_primary"> <p>{{team.name}}</p> </div> <div class=weui_cell_ft>签位:{{team.lot}}</div> </div> </div> '},117:function(t,e,r){var n,o;r(93),n=r(45),o=r(102),t.exports=n||{},t.exports.__esModule&&(t.exports=t.exports["default"]),o&&(("function"==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports).template=o)}});
//# sourceMappingURL=10.e780a1fdba9b4c873a80.js.map