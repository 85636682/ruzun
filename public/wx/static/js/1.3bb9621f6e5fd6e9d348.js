webpackJsonp([1,7],[,function(t,e,r){!function(e,r){t.exports=r()}(this,function(){return function(t){function e(o){if(r[o])return r[o].exports;var n=r[o]={exports:{},id:o,loaded:!1};return t[o].call(n.exports,n,n.exports,e),n.loaded=!0,n.exports}var r={};return e.m=t,e.c=r,e.p="",e(0)}([function(t,e,r){t.exports=r(4)},function(t,e){"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e["default"]={props:{show:{type:Boolean,"default":!1},time:{type:Number,"default":2e3},type:{type:String,"default":"success"},transition:{type:String,"default":"vux-fade"},width:{type:String,"default":"7.6em"}},computed:{toastClass:function(){return{weui_toast_forbidden:"warn"===this.type,weui_toast_cancel:"cancel"===this.type,weui_toast_success:"success"===this.type,weui_toast_text:"text"===this.type}}},watch:{show:function(t){var e=this;t&&(clearTimeout(this.timeout),this.timeout=setTimeout(function(){e.show=!1},this.time))}}}},function(t,e){},function(t,e){t.exports='<div v-show=show class=vux-toast :transition=transition> <div class=weui_mask_transparent></div> <div class=weui_toast :style="{width: width}" :class=toastClass> <i class=weui_icon_toast v-show="type !== \'text\'"></i> <p class=weui_toast_content><slot></slot></p> </div> </div>'},function(t,e,r){var o,n;r(2),o=r(1),n=r(3),t.exports=o||{},t.exports.__esModule&&(t.exports=t.exports["default"]),n&&(("function"==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports).template=n)}])})},function(t,e,r){!function(e,r){t.exports=r()}(this,function(){return function(t){function e(o){if(r[o])return r[o].exports;var n=r[o]={exports:{},id:o,loaded:!1};return t[o].call(n.exports,n,n.exports,e),n.loaded=!0,n.exports}var r={};return e.m=t,e.c=r,e.p="",e(0)}([function(t,e,r){t.exports=r(4)},function(t,e){"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e["default"]={props:{leftOptions:{type:Object,"default":function(){return{showBack:!0,backText:"Back",preventGoBack:!1}}},rightOptions:{type:Object,"default":function(){return{showMore:!1}}}},methods:{onClickBack:function(){this.leftOptions.preventGoBack?this.$emit("on-click-back"):history.back()}}}},function(t,e){},function(t,e){t.exports="<div class=vux-header> <div class=vux-header-left> <a class=vux-header-back @click.preventdefault v-show=leftOptions.showBack @click=onClickBack>{{leftOptions.backText}}</a> <slot name=left></slot> </div> <h1 class=vux-header-title><slot></slot></h1> <div class=vux-header-right> <a class=vux-header-more @click.preventdefault @click=\"$emit('on-click-more')\" v-if=rightOptions.showMore></a> <slot name=right></slot> </div> </div>"},function(t,e,r){var o,n;r(2),o=r(1),n=r(3),t.exports=o||{},t.exports.__esModule&&(t.exports=t.exports["default"]),n&&(("function"==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports).template=n)}])})},,,function(t,e){"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e["default"]={domain:"http://ruzun.jiancan.me",apiPath:"/api/v1"}},function(t,e,r){"use strict";function o(t){return t&&t.__esModule?t:{"default":t}}function n(t){return t.json()}function i(t){if(t.status>=200&&t.status<300)return t;var e=new Error(t.statusText);throw e.res=t,e.type="http",e}function s(t,e){var r=arguments.length<=2||void 0===arguments[2]?"":arguments[2];return t=b+t,e&&(t+="?"+v["default"].stringify(e)),fetch(t,{headers:{Authorization:r}}).then(i).then(n)}function a(t,e){var r=arguments.length<=2||void 0===arguments[2]?{}:arguments[2],o=arguments.length<=3||void 0===arguments[3]?"":arguments[3];t=b+t;var s={};return"[object FormData]"===r.toString()?s={Authorization:o}:(s={Accept:"application/json","Content-Type":"application/json",Authorization:o},r=(0,f["default"])(r)),fetch(t,{method:e,headers:s,body:r}).then(i).then(n)}function u(t,e){var r=arguments.length<=2||void 0===arguments[2]?"":arguments[2];return a(t,"POST",e,r)}function l(t,e){var r=arguments.length<=2||void 0===arguments[2]?"":arguments[2];return a(t,"PUT",e,r)}function c(t,e){var r=arguments.length<=2||void 0===arguments[2]?"":arguments[2];return a(t,"PATCH",e,r)}function p(t){return a(t,"DELETE")}Object.defineProperty(e,"__esModule",{value:!0});var d=r(8),f=o(d);e.get=s,e.post=u,e.put=l,e.patch=c,e.del=p;var h=r(11),v=o(h),y=r(5),m=o(y);r(14);var b=m["default"].domain+m["default"].apiPath},function(t,e,r){"use strict";function o(t){if(t&&t.__esModule)return t;var e={};if(null!=t)for(var r in t)Object.prototype.hasOwnProperty.call(t,r)&&(e[r]=t[r]);return e["default"]=t,e}function n(t){return l.get("/users/"+t)}function i(t){return l.post("/users",t)}function s(t,e){return l.put("/users/"+t,e)}function a(t){return l.post("/sessions",t)}Object.defineProperty(e,"__esModule",{value:!0}),e.getUser=n,e.createUser=i,e.updateUser=s,e.signIn=a;var u=r(6),l=o(u)},function(t,e,r){t.exports={"default":r(9),__esModule:!0}},function(t,e,r){var o=r(10),n=o.JSON||(o.JSON={stringify:JSON.stringify});t.exports=function(t){return n.stringify.apply(n,arguments)}},function(t,e){var r=t.exports={version:"2.4.0"};"number"==typeof __e&&(__e=r)},function(t,e,r){"use strict";function o(t,e){return e.encode?e.strict?n(t):encodeURIComponent(t):t}var n=r(13),i=r(12);e.extract=function(t){return t.split("?")[1]||""},e.parse=function(t){var e=Object.create(null);return"string"!=typeof t?e:(t=t.trim().replace(/^(\?|#|&)/,""))?(t.split("&").forEach(function(t){var r=t.replace(/\+/g," ").split("="),o=r.shift(),n=r.length>0?r.join("="):void 0;o=decodeURIComponent(o),n=void 0===n?null:decodeURIComponent(n),void 0===e[o]?e[o]=n:Array.isArray(e[o])?e[o].push(n):e[o]=[e[o],n]}),e):e},e.stringify=function(t,e){var r={encode:!0,strict:!0};return e=i(r,e),t?Object.keys(t).sort().map(function(r){var n=t[r];if(void 0===n)return"";if(null===n)return o(r,e);if(Array.isArray(n)){var i=[];return n.slice().forEach(function(t){void 0!==t&&(null===t?i.push(o(r,e)):i.push(o(r,e)+"="+o(t,e)))}),i.join("&")}return o(r,e)+"="+o(n,e)}).filter(function(t){return t.length>0}).join("&"):""}},function(t,e){"use strict";function r(t){if(null===t||void 0===t)throw new TypeError("Object.assign cannot be called with null or undefined");return Object(t)}function o(){try{if(!Object.assign)return!1;var t=new String("abc");if(t[5]="de","5"===Object.getOwnPropertyNames(t)[0])return!1;for(var e={},r=0;r<10;r++)e["_"+String.fromCharCode(r)]=r;var o=Object.getOwnPropertyNames(e).map(function(t){return e[t]});if("0123456789"!==o.join(""))return!1;var n={};return"abcdefghijklmnopqrst".split("").forEach(function(t){n[t]=t}),"abcdefghijklmnopqrst"===Object.keys(Object.assign({},n)).join("")}catch(i){return!1}}var n=Object.prototype.hasOwnProperty,i=Object.prototype.propertyIsEnumerable;t.exports=o()?Object.assign:function(t,e){for(var o,s,a=r(t),u=1;u<arguments.length;u++){o=Object(arguments[u]);for(var l in o)n.call(o,l)&&(a[l]=o[l]);if(Object.getOwnPropertySymbols){s=Object.getOwnPropertySymbols(o);for(var c=0;c<s.length;c++)i.call(o,s[c])&&(a[s[c]]=o[s[c]])}}return a}},function(t,e){"use strict";t.exports=function(t){return encodeURIComponent(t).replace(/[!'()*]/g,function(t){return"%"+t.charCodeAt(0).toString(16).toUpperCase()})}},function(t,e){!function(t){"use strict";function e(t){if("string"!=typeof t&&(t=String(t)),/[^a-z0-9\-#$%&'*+.\^_`|~]/i.test(t))throw new TypeError("Invalid character in header field name");return t.toLowerCase()}function r(t){return"string"!=typeof t&&(t=String(t)),t}function o(t){var e={next:function(){var e=t.shift();return{done:void 0===e,value:e}}};return v.iterable&&(e[Symbol.iterator]=function(){return e}),e}function n(t){this.map={},t instanceof n?t.forEach(function(t,e){this.append(e,t)},this):t&&Object.getOwnPropertyNames(t).forEach(function(e){this.append(e,t[e])},this)}function i(t){return t.bodyUsed?Promise.reject(new TypeError("Already read")):void(t.bodyUsed=!0)}function s(t){return new Promise(function(e,r){t.onload=function(){e(t.result)},t.onerror=function(){r(t.error)}})}function a(t){var e=new FileReader;return e.readAsArrayBuffer(t),s(e)}function u(t){var e=new FileReader;return e.readAsText(t),s(e)}function l(){return this.bodyUsed=!1,this._initBody=function(t){if(this._bodyInit=t,"string"==typeof t)this._bodyText=t;else if(v.blob&&Blob.prototype.isPrototypeOf(t))this._bodyBlob=t;else if(v.formData&&FormData.prototype.isPrototypeOf(t))this._bodyFormData=t;else if(v.searchParams&&URLSearchParams.prototype.isPrototypeOf(t))this._bodyText=t.toString();else if(t){if(!v.arrayBuffer||!ArrayBuffer.prototype.isPrototypeOf(t))throw new Error("unsupported BodyInit type")}else this._bodyText="";this.headers.get("content-type")||("string"==typeof t?this.headers.set("content-type","text/plain;charset=UTF-8"):this._bodyBlob&&this._bodyBlob.type?this.headers.set("content-type",this._bodyBlob.type):v.searchParams&&URLSearchParams.prototype.isPrototypeOf(t)&&this.headers.set("content-type","application/x-www-form-urlencoded;charset=UTF-8"))},v.blob?(this.blob=function(){var t=i(this);if(t)return t;if(this._bodyBlob)return Promise.resolve(this._bodyBlob);if(this._bodyFormData)throw new Error("could not read FormData body as blob");return Promise.resolve(new Blob([this._bodyText]))},this.arrayBuffer=function(){return this.blob().then(a)},this.text=function(){var t=i(this);if(t)return t;if(this._bodyBlob)return u(this._bodyBlob);if(this._bodyFormData)throw new Error("could not read FormData body as text");return Promise.resolve(this._bodyText)}):this.text=function(){var t=i(this);return t?t:Promise.resolve(this._bodyText)},v.formData&&(this.formData=function(){return this.text().then(d)}),this.json=function(){return this.text().then(JSON.parse)},this}function c(t){var e=t.toUpperCase();return y.indexOf(e)>-1?e:t}function p(t,e){e=e||{};var r=e.body;if(p.prototype.isPrototypeOf(t)){if(t.bodyUsed)throw new TypeError("Already read");this.url=t.url,this.credentials=t.credentials,e.headers||(this.headers=new n(t.headers)),this.method=t.method,this.mode=t.mode,r||(r=t._bodyInit,t.bodyUsed=!0)}else this.url=t;if(this.credentials=e.credentials||this.credentials||"omit",!e.headers&&this.headers||(this.headers=new n(e.headers)),this.method=c(e.method||this.method||"GET"),this.mode=e.mode||this.mode||null,this.referrer=null,("GET"===this.method||"HEAD"===this.method)&&r)throw new TypeError("Body not allowed for GET or HEAD requests");this._initBody(r)}function d(t){var e=new FormData;return t.trim().split("&").forEach(function(t){if(t){var r=t.split("="),o=r.shift().replace(/\+/g," "),n=r.join("=").replace(/\+/g," ");e.append(decodeURIComponent(o),decodeURIComponent(n))}}),e}function f(t){var e=new n,r=(t.getAllResponseHeaders()||"").trim().split("\n");return r.forEach(function(t){var r=t.trim().split(":"),o=r.shift().trim(),n=r.join(":").trim();e.append(o,n)}),e}function h(t,e){e||(e={}),this.type="default",this.status=e.status,this.ok=this.status>=200&&this.status<300,this.statusText=e.statusText,this.headers=e.headers instanceof n?e.headers:new n(e.headers),this.url=e.url||"",this._initBody(t)}if(!t.fetch){var v={searchParams:"URLSearchParams"in t,iterable:"Symbol"in t&&"iterator"in Symbol,blob:"FileReader"in t&&"Blob"in t&&function(){try{return new Blob,!0}catch(t){return!1}}(),formData:"FormData"in t,arrayBuffer:"ArrayBuffer"in t};n.prototype.append=function(t,o){t=e(t),o=r(o);var n=this.map[t];n||(n=[],this.map[t]=n),n.push(o)},n.prototype["delete"]=function(t){delete this.map[e(t)]},n.prototype.get=function(t){var r=this.map[e(t)];return r?r[0]:null},n.prototype.getAll=function(t){return this.map[e(t)]||[]},n.prototype.has=function(t){return this.map.hasOwnProperty(e(t))},n.prototype.set=function(t,o){this.map[e(t)]=[r(o)]},n.prototype.forEach=function(t,e){Object.getOwnPropertyNames(this.map).forEach(function(r){this.map[r].forEach(function(o){t.call(e,o,r,this)},this)},this)},n.prototype.keys=function(){var t=[];return this.forEach(function(e,r){t.push(r)}),o(t)},n.prototype.values=function(){var t=[];return this.forEach(function(e){t.push(e)}),o(t)},n.prototype.entries=function(){var t=[];return this.forEach(function(e,r){t.push([r,e])}),o(t)},v.iterable&&(n.prototype[Symbol.iterator]=n.prototype.entries);var y=["DELETE","GET","HEAD","OPTIONS","POST","PUT"];p.prototype.clone=function(){return new p(this)},l.call(p.prototype),l.call(h.prototype),h.prototype.clone=function(){return new h(this._bodyInit,{status:this.status,statusText:this.statusText,headers:new n(this.headers),url:this.url})},h.error=function(){var t=new h(null,{status:0,statusText:""});return t.type="error",t};var m=[301,302,303,307,308];h.redirect=function(t,e){if(m.indexOf(e)===-1)throw new RangeError("Invalid status code");return new h(null,{status:e,headers:{location:t}})},t.Headers=n,t.Request=p,t.Response=h,t.fetch=function(t,e){return new Promise(function(r,o){function n(){return"responseURL"in s?s.responseURL:/^X-Request-URL:/m.test(s.getAllResponseHeaders())?s.getResponseHeader("X-Request-URL"):void 0}var i;i=p.prototype.isPrototypeOf(t)&&!e?t:new p(t,e);var s=new XMLHttpRequest;s.onload=function(){var t={status:s.status,statusText:s.statusText,headers:f(s),url:n()},e="response"in s?s.response:s.responseText;r(new h(e,t))},s.onerror=function(){o(new TypeError("Network request failed"))},s.ontimeout=function(){o(new TypeError("Network request failed"))},s.open(i.method,i.url,!0),"include"===i.credentials&&(s.withCredentials=!0),"responseType"in s&&v.blob&&(s.responseType="blob"),i.headers.forEach(function(t,e){s.setRequestHeader(e,t)}),s.send("undefined"==typeof i._bodyInit?null:i._bodyInit)})},t.fetch.polyfill=!0}}("undefined"!=typeof self?self:this)},,,,,,,,,,,,function(t,e,r){"use strict";function o(t){if(t&&t.__esModule)return t;var e={};if(null!=t)for(var r in t)Object.prototype.hasOwnProperty.call(t,r)&&(e[r]=t[r]);return e["default"]=t,e}function n(t){return t&&t.__esModule?t:{"default":t}}Object.defineProperty(e,"__esModule",{value:!0});var i=r(2),s=n(i),a=r(1),u=n(a),l=r(7),c=o(l);e["default"]={data:function(){return{user:{avatar:"",name:"",height:0,weight:0,position:""},loadFail:!1}},route:{data:function(t){var e=this,r=localStorage.getItem("ruzun_user_id")||0;c.getUser(r).then(function(t){e.$set("user",t.user)})["catch"](function(t){console.log(t),e.$set("loadFail",!0)})}},methods:{update:function(){var t=this,e=localStorage.getItem("ruzun_user_id")||0,r=new FormData;r.append("user[name]",this.user.name),r.append("user[weight]",this.user.weight),r.append("user[height]",this.user.height),c.updateUser(e,r).then(function(e){t.$set("user",e.user)})["catch"](function(e){console.log(e),t.$set("loadFail",!0)})},uploadAvatar:function(){var t=this,e=localStorage.getItem("ruzun_user_id")||0;if(""!==this.$els.avatar.value){var r=new FormData;r.append("user[avatar]",this.$els.avatar.files[0]),c.updateUser(e,r).then(function(e){t.$set("user",e.user)})["catch"](function(e){console.log(e),t.$set("loadFail",!0)})}}},components:{XHeader:s["default"],Toast:u["default"]}}},,,,,,,function(t,e,r){e=t.exports=r(3)(),e.push([t.id,"","",{version:3,sources:[],names:[],mappings:"",file:"edit.vue",sourceRoot:"webpack://"}])},,,,,,,,function(t,e,r){var o=r(33);"string"==typeof o&&(o=[[t.id,o,""]]);r(4)(o,{});o.locals&&(t.exports=o.locals)},,,,,,,,,,function(t,e){t.exports=' <x-header> 首页 <a slot=right @click=update href=javascript:;> 保存 </a> </x-header> <div class=team_logo> <div class=logo> <img :src=user.avatar alt=""/> <input @change=uploadAvatar v-el:avatar type=file accept=image/jpg,image/jpeg,image/png,image/gif multiple=multiple /> </div> </div> <div class="weui_cells weui_cells_form"> <div class=weui_cell> <div class=weui_cell_hd style=width:15%> <label class=weui_label> <i class="fa fa-user"></i> 姓名 </label> </div> <div class="weui_cell_bd weui_cell_primary"> <input class=weui_input type=text placeholder=名称 v-model=user.name /> </div> </div> <div class=weui_cell> <div class=weui_cell_hd style=width:15%> <label class=weui_label> <i class="fa fa-h-square"></i> 身高 </label> </div> <div class="weui_cell_bd weui_cell_primary"> <input class=weui_input type=text placeholder=身高 v-model=user.height /> </div> </div> <div class=weui_cell> <div class=weui_cell_hd style=width:15%> <label class=weui_label> <i class="fa fa-wordpress"></i> 体重 </label> </div> <div class="weui_cell_bd weui_cell_primary"> <input class=weui_input type=text placeholder=体重 v-model=user.weight /> </div> </div> <div class="weui_cell weui_cell_select weui_select_after"> <div class=weui_cell_hd style=width:15%> <label class=weui_label> <i class="fa fa-wordpress"></i> 位置 </label> </div> <div class="weui_cell_bd weui_cell_primary"> <select class=weui_select v-model=user.position> <option value=SG>得分后卫</option> <option value=PG>控球后卫</option> <option value=SF>小前锋</option> <option value=PF>大前锋</option> <option value=C>中锋</option> </select> </div> </div> </div> <toast :show.sync=loadFail type=text>加载失败</toast> '},,,,,,,function(t,e,r){var o,n;r(41),o=r(26),n=r(51),t.exports=o||{},t.exports.__esModule&&(t.exports=t.exports["default"]),n&&(("function"==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports).template=n)}]);
//# sourceMappingURL=1.3bb9621f6e5fd6e9d348.js.map