webpackJsonp([0,7],[,function(t,e,r){!function(e,r){t.exports=r()}(this,function(){return function(t){function e(o){if(r[o])return r[o].exports;var n=r[o]={exports:{},id:o,loaded:!1};return t[o].call(n.exports,n,n.exports,e),n.loaded=!0,n.exports}var r={};return e.m=t,e.c=r,e.p="",e(0)}([function(t,e,r){t.exports=r(4)},function(t,e){"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e["default"]={props:{show:{type:Boolean,"default":!1},time:{type:Number,"default":2e3},type:{type:String,"default":"success"},transition:{type:String,"default":"vux-fade"},width:{type:String,"default":"7.6em"}},computed:{toastClass:function(){return{weui_toast_forbidden:"warn"===this.type,weui_toast_cancel:"cancel"===this.type,weui_toast_success:"success"===this.type,weui_toast_text:"text"===this.type}}},watch:{show:function(t){var e=this;t&&(clearTimeout(this.timeout),this.timeout=setTimeout(function(){e.show=!1},this.time))}}}},function(t,e){},function(t,e){t.exports='<div v-show=show class=vux-toast :transition=transition> <div class=weui_mask_transparent></div> <div class=weui_toast :style="{width: width}" :class=toastClass> <i class=weui_icon_toast v-show="type !== \'text\'"></i> <p class=weui_toast_content><slot></slot></p> </div> </div>'},function(t,e,r){var o,n;r(2),o=r(1),n=r(3),t.exports=o||{},t.exports.__esModule&&(t.exports=t.exports["default"]),n&&(("function"==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports).template=n)}])})},function(t,e,r){!function(e,r){t.exports=r()}(this,function(){return function(t){function e(o){if(r[o])return r[o].exports;var n=r[o]={exports:{},id:o,loaded:!1};return t[o].call(n.exports,n,n.exports,e),n.loaded=!0,n.exports}var r={};return e.m=t,e.c=r,e.p="",e(0)}([function(t,e,r){t.exports=r(4)},function(t,e){"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e["default"]={props:{leftOptions:{type:Object,"default":function(){return{showBack:!0,backText:"Back",preventGoBack:!1}}},rightOptions:{type:Object,"default":function(){return{showMore:!1}}}},methods:{onClickBack:function(){this.leftOptions.preventGoBack?this.$emit("on-click-back"):history.back()}}}},function(t,e){},function(t,e){t.exports="<div class=vux-header> <div class=vux-header-left> <a class=vux-header-back @click.preventdefault v-show=leftOptions.showBack @click=onClickBack>{{leftOptions.backText}}</a> <slot name=left></slot> </div> <h1 class=vux-header-title><slot></slot></h1> <div class=vux-header-right> <a class=vux-header-more @click.preventdefault @click=\"$emit('on-click-more')\" v-if=rightOptions.showMore></a> <slot name=right></slot> </div> </div>"},function(t,e,r){var o,n;r(2),o=r(1),n=r(3),t.exports=o||{},t.exports.__esModule&&(t.exports=t.exports["default"]),n&&(("function"==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports).template=n)}])})},,,function(t,e,r){!function(e,r){t.exports=r()}(this,function(){return function(t){function e(o){if(r[o])return r[o].exports;var n=r[o]={exports:{},id:o,loaded:!1};return t[o].call(n.exports,n,n.exports,e),n.loaded=!0,n.exports}var r={};return e.m=t,e.c=r,e.p="",e(0)}([function(t,e,r){t.exports=r(3)},function(t,e){},function(t,e){t.exports="<p class=vux-divider> <slot></slot> </p>"},function(t,e,r){var o,n;r(1),n=r(2),t.exports=o||{},t.exports.__esModule&&(t.exports=t.exports["default"]),n&&(("function"==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports).template=n)}])})},function(t,e,r){var o,n;r(31),o=r(14),n=r(45),t.exports=o||{},t.exports.__esModule&&(t.exports=t.exports["default"]),n&&(("function"==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports).template=n)},function(t,e){"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e["default"]={domain:"http://ruzun.jiancan.me",apiPath:"/api/v1"}},,function(t,e,r){"use strict";function o(t){return t&&t.__esModule?t:{"default":t}}function n(t){return t=t.json(),"string"==typeof t&&(t=JSON.parse(t),console.log("判断string")),console.log(t),t}function i(t){if(t.status>=200&&t.status<300)return t;var e=new Error(t.statusText);throw e.res=t,e.type="http",e}function s(t,e){var r=arguments.length<=2||void 0===arguments[2]?"":arguments[2];return t=b+t,e&&(t+="?"+y["default"].stringify(e)),fetch(t,{headers:{Authorization:r}}).then(i).then(n)}function a(t,e){var r=arguments.length<=2||void 0===arguments[2]?{}:arguments[2],o=arguments.length<=3||void 0===arguments[3]?"":arguments[3];return t=b+t,fetch(t,{method:e,headers:{Accept:"application/json","Content-Type":"application/json",Authorization:o},body:(0,d["default"])(r)}).then(i).then(n)}function u(t,e){var r=arguments.length<=2||void 0===arguments[2]?"":arguments[2];return a(t,"POST",e,r)}function c(t,e){var r=arguments.length<=2||void 0===arguments[2]?"":arguments[2];return a(t,"PUT",e,r)}function l(t,e){var r=arguments.length<=2||void 0===arguments[2]?"":arguments[2];return a(t,"PATCH",e,r)}function p(t){return a(t,"DELETE")}Object.defineProperty(e,"__esModule",{value:!0});var f=r(20),d=o(f);e.get=s,e.post=u,e.put=c,e.patch=l,e.del=p;var h=r(39),y=o(h),v=r(7),m=o(v);r(61);var b=m["default"].domain+m["default"].apiPath},function(t,e,r){"use strict";function o(t){if(t&&t.__esModule)return t;var e={};if(null!=t)for(var r in t)Object.prototype.hasOwnProperty.call(t,r)&&(e[r]=t[r]);return e["default"]=t,e}function n(t){return u.post("/users",t)}function i(t,e){return u.put("/users/"+t,e)}function s(t){return u.post("/sessions",t)}Object.defineProperty(e,"__esModule",{value:!0}),e.createUser=n,e.updateUser=i,e.signIn=s;var a=r(9),u=o(a)},,,,function(t,e,r){"use strict";function o(t){if(t&&t.__esModule)return t;var e={};if(null!=t)for(var r in t)Object.prototype.hasOwnProperty.call(t,r)&&(e[r]=t[r]);return e["default"]=t,e}function n(t){return t&&t.__esModule?t:{"default":t}}Object.defineProperty(e,"__esModule",{value:!0});var i=r(2),s=n(i),a=r(5),u=n(a),c=r(1),l=n(c),p=r(10),f=o(p);e["default"]={data:function(){return{mobile:"",password:"",loginFail:!1}},route:{data:function(t){var e=localStorage.getItem("ruzun_user_token");e&&null!==e&&this.$route.router.go({name:"home"})}},methods:{signIn:function(){var t=this;return""===this.mobile&&""===this.password?void this.$set("loginFail",!0):void f.signIn({mobile:this.mobile,password:this.password}).then(function(e){localStorage.setItem("ruzun_user_token",e.user.token),localStorage.setItem("ruzun_user_id",e.user.id),t.$route.router.go({name:"home"})})["catch"](function(e){console.log(e),t.$set("loginFail",!0)})}},components:{XHeader:s["default"],Divider:u["default"],Toast:l["default"]}}},,,,,,function(t,e,r){t.exports={"default":r(21),__esModule:!0}},function(t,e,r){var o=r(22),n=o.JSON||(o.JSON={stringify:JSON.stringify});t.exports=function(t){return n.stringify.apply(n,arguments)}},function(t,e){var r=t.exports={version:"2.4.0"};"number"==typeof __e&&(__e=r)},function(t,e,r){e=t.exports=r(3)(),e.push([t.id,"","",{version:3,sources:[],names:[],mappings:"",file:"signin.vue",sourceRoot:"webpack://"}])},,,,,,,,function(t,e,r){var o=r(23);"string"==typeof o&&(o=[[t.id,o,""]]);r(4)(o,{});o.locals&&(t.exports=o.locals)},,,,,,,,function(t,e,r){"use strict";function o(t,e){return e.encode?e.strict?n(t):encodeURIComponent(t):t}var n=r(41),i=r(40);e.extract=function(t){return t.split("?")[1]||""},e.parse=function(t){var e=Object.create(null);return"string"!=typeof t?e:(t=t.trim().replace(/^(\?|#|&)/,""))?(t.split("&").forEach(function(t){var r=t.replace(/\+/g," ").split("="),o=r.shift(),n=r.length>0?r.join("="):void 0;o=decodeURIComponent(o),n=void 0===n?null:decodeURIComponent(n),void 0===e[o]?e[o]=n:Array.isArray(e[o])?e[o].push(n):e[o]=[e[o],n]}),e):e},e.stringify=function(t,e){var r={encode:!0,strict:!0};return e=i(r,e),t?Object.keys(t).sort().map(function(r){var n=t[r];if(void 0===n)return"";if(null===n)return o(r,e);if(Array.isArray(n)){var i=[];return n.slice().forEach(function(t){void 0!==t&&(null===t?i.push(o(r,e)):i.push(o(r,e)+"="+o(t,e)))}),i.join("&")}return o(r,e)+"="+o(n,e)}).filter(function(t){return t.length>0}).join("&"):""}},function(t,e){"use strict";function r(t){if(null===t||void 0===t)throw new TypeError("Object.assign cannot be called with null or undefined");return Object(t)}function o(){try{if(!Object.assign)return!1;var t=new String("abc");if(t[5]="de","5"===Object.getOwnPropertyNames(t)[0])return!1;for(var e={},r=0;r<10;r++)e["_"+String.fromCharCode(r)]=r;var o=Object.getOwnPropertyNames(e).map(function(t){return e[t]});if("0123456789"!==o.join(""))return!1;var n={};return"abcdefghijklmnopqrst".split("").forEach(function(t){n[t]=t}),"abcdefghijklmnopqrst"===Object.keys(Object.assign({},n)).join("")}catch(i){return!1}}var n=Object.prototype.hasOwnProperty,i=Object.prototype.propertyIsEnumerable;t.exports=o()?Object.assign:function(t,e){for(var o,s,a=r(t),u=1;u<arguments.length;u++){o=Object(arguments[u]);for(var c in o)n.call(o,c)&&(a[c]=o[c]);if(Object.getOwnPropertySymbols){s=Object.getOwnPropertySymbols(o);for(var l=0;l<s.length;l++)i.call(o,s[l])&&(a[s[l]]=o[s[l]])}}return a}},function(t,e){"use strict";t.exports=function(t){return encodeURIComponent(t).replace(/[!'()*]/g,function(t){return"%"+t.charCodeAt(0).toString(16).toUpperCase()})}},,,,function(t,e){t.exports=' <x-header> 登录 </x-header> <div class="weui_cells weui_cells_form"> <div class=weui_cell> <div class=weui_cell_hd style=width:5%> <label class=weui_label> <i class="fa fa-mobile"></i> </label> </div> <div class="weui_cell_bd weui_cell_primary"> <input class=weui_input type=text placeholder=手机号码 v-model=mobile /> </div> </div> <div class=weui_cell> <div class=weui_cell_hd style=width:5%> <label class=weui_label> <i class="fa fa-lock"></i> </label> </div> <div class="weui_cell_bd weui_cell_primary"> <input class=weui_input type=password placeholder=密码 v-model=password /> </div> </div> </div> <div class=button_sp_area style="margin-top:30px;padding: 10px"> <a @click=signIn href=javascript:; class="weui_btn weui_btn_plain_primary">登 录</a> </div> <divider>没账号?</divider> <div class=button_sp_area style="margin-top:5px;padding: 10px"> <a v-link="{ name: \'signup\' }" class="weui_btn weui_btn_plain_primary">注 册</a> </div> <toast :show.sync=loginFail type=text>登录失败</toast> '},,,,,,,,,,,,,,,,function(t,e){!function(t){"use strict";function e(t){if("string"!=typeof t&&(t=String(t)),/[^a-z0-9\-#$%&'*+.\^_`|~]/i.test(t))throw new TypeError("Invalid character in header field name");return t.toLowerCase()}function r(t){return"string"!=typeof t&&(t=String(t)),t}function o(t){var e={next:function(){var e=t.shift();return{done:void 0===e,value:e}}};return y.iterable&&(e[Symbol.iterator]=function(){return e}),e}function n(t){this.map={},t instanceof n?t.forEach(function(t,e){this.append(e,t)},this):t&&Object.getOwnPropertyNames(t).forEach(function(e){this.append(e,t[e])},this)}function i(t){return t.bodyUsed?Promise.reject(new TypeError("Already read")):void(t.bodyUsed=!0)}function s(t){return new Promise(function(e,r){t.onload=function(){e(t.result)},t.onerror=function(){r(t.error)}})}function a(t){var e=new FileReader;return e.readAsArrayBuffer(t),s(e)}function u(t){var e=new FileReader;return e.readAsText(t),s(e)}function c(){return this.bodyUsed=!1,this._initBody=function(t){if(this._bodyInit=t,"string"==typeof t)this._bodyText=t;else if(y.blob&&Blob.prototype.isPrototypeOf(t))this._bodyBlob=t;else if(y.formData&&FormData.prototype.isPrototypeOf(t))this._bodyFormData=t;else if(y.searchParams&&URLSearchParams.prototype.isPrototypeOf(t))this._bodyText=t.toString();else if(t){if(!y.arrayBuffer||!ArrayBuffer.prototype.isPrototypeOf(t))throw new Error("unsupported BodyInit type")}else this._bodyText="";this.headers.get("content-type")||("string"==typeof t?this.headers.set("content-type","text/plain;charset=UTF-8"):this._bodyBlob&&this._bodyBlob.type?this.headers.set("content-type",this._bodyBlob.type):y.searchParams&&URLSearchParams.prototype.isPrototypeOf(t)&&this.headers.set("content-type","application/x-www-form-urlencoded;charset=UTF-8"))},y.blob?(this.blob=function(){var t=i(this);if(t)return t;if(this._bodyBlob)return Promise.resolve(this._bodyBlob);if(this._bodyFormData)throw new Error("could not read FormData body as blob");return Promise.resolve(new Blob([this._bodyText]))},this.arrayBuffer=function(){return this.blob().then(a)},this.text=function(){var t=i(this);if(t)return t;if(this._bodyBlob)return u(this._bodyBlob);if(this._bodyFormData)throw new Error("could not read FormData body as text");return Promise.resolve(this._bodyText)}):this.text=function(){var t=i(this);return t?t:Promise.resolve(this._bodyText)},y.formData&&(this.formData=function(){return this.text().then(f)}),this.json=function(){return this.text().then(JSON.parse)},this}function l(t){var e=t.toUpperCase();return v.indexOf(e)>-1?e:t}function p(t,e){e=e||{};var r=e.body;if(p.prototype.isPrototypeOf(t)){if(t.bodyUsed)throw new TypeError("Already read");this.url=t.url,this.credentials=t.credentials,e.headers||(this.headers=new n(t.headers)),this.method=t.method,this.mode=t.mode,r||(r=t._bodyInit,t.bodyUsed=!0)}else this.url=t;if(this.credentials=e.credentials||this.credentials||"omit",!e.headers&&this.headers||(this.headers=new n(e.headers)),this.method=l(e.method||this.method||"GET"),this.mode=e.mode||this.mode||null,this.referrer=null,("GET"===this.method||"HEAD"===this.method)&&r)throw new TypeError("Body not allowed for GET or HEAD requests");this._initBody(r)}function f(t){var e=new FormData;return t.trim().split("&").forEach(function(t){if(t){var r=t.split("="),o=r.shift().replace(/\+/g," "),n=r.join("=").replace(/\+/g," ");e.append(decodeURIComponent(o),decodeURIComponent(n))}}),e}function d(t){var e=new n,r=(t.getAllResponseHeaders()||"").trim().split("\n");return r.forEach(function(t){var r=t.trim().split(":"),o=r.shift().trim(),n=r.join(":").trim();e.append(o,n)}),e}function h(t,e){e||(e={}),this.type="default",this.status=e.status,this.ok=this.status>=200&&this.status<300,this.statusText=e.statusText,this.headers=e.headers instanceof n?e.headers:new n(e.headers),this.url=e.url||"",this._initBody(t)}if(!t.fetch){var y={searchParams:"URLSearchParams"in t,iterable:"Symbol"in t&&"iterator"in Symbol,blob:"FileReader"in t&&"Blob"in t&&function(){try{return new Blob,!0}catch(t){return!1}}(),formData:"FormData"in t,arrayBuffer:"ArrayBuffer"in t};n.prototype.append=function(t,o){t=e(t),o=r(o);var n=this.map[t];n||(n=[],this.map[t]=n),n.push(o)},n.prototype["delete"]=function(t){delete this.map[e(t)]},n.prototype.get=function(t){var r=this.map[e(t)];return r?r[0]:null},n.prototype.getAll=function(t){return this.map[e(t)]||[]},n.prototype.has=function(t){return this.map.hasOwnProperty(e(t))},n.prototype.set=function(t,o){this.map[e(t)]=[r(o)]},n.prototype.forEach=function(t,e){Object.getOwnPropertyNames(this.map).forEach(function(r){this.map[r].forEach(function(o){t.call(e,o,r,this)},this)},this)},n.prototype.keys=function(){var t=[];return this.forEach(function(e,r){t.push(r)}),o(t)},n.prototype.values=function(){var t=[];return this.forEach(function(e){t.push(e)}),o(t)},n.prototype.entries=function(){var t=[];return this.forEach(function(e,r){t.push([r,e])}),o(t)},y.iterable&&(n.prototype[Symbol.iterator]=n.prototype.entries);var v=["DELETE","GET","HEAD","OPTIONS","POST","PUT"];p.prototype.clone=function(){return new p(this)},c.call(p.prototype),c.call(h.prototype),h.prototype.clone=function(){return new h(this._bodyInit,{status:this.status,statusText:this.statusText,headers:new n(this.headers),url:this.url})},h.error=function(){var t=new h(null,{status:0,statusText:""});return t.type="error",t};var m=[301,302,303,307,308];h.redirect=function(t,e){if(m.indexOf(e)===-1)throw new RangeError("Invalid status code");return new h(null,{status:e,headers:{location:t}})},t.Headers=n,t.Request=p,t.Response=h,t.fetch=function(t,e){return new Promise(function(r,o){function n(){return"responseURL"in s?s.responseURL:/^X-Request-URL:/m.test(s.getAllResponseHeaders())?s.getResponseHeader("X-Request-URL"):void 0}var i;i=p.prototype.isPrototypeOf(t)&&!e?t:new p(t,e);var s=new XMLHttpRequest;s.onload=function(){var t={status:s.status,statusText:s.statusText,headers:d(s),url:n()},e="response"in s?s.response:s.responseText;r(new h(e,t))},s.onerror=function(){o(new TypeError("Network request failed"))},s.ontimeout=function(){o(new TypeError("Network request failed"))},s.open(i.method,i.url,!0),"include"===i.credentials&&(s.withCredentials=!0),"responseType"in s&&y.blob&&(s.responseType="blob"),i.headers.forEach(function(t,e){s.setRequestHeader(e,t)}),s.send("undefined"==typeof i._bodyInit?null:i._bodyInit)})},t.fetch.polyfill=!0}}("undefined"!=typeof self?self:this)}]);
//# sourceMappingURL=0.ce719b15a99819562413.js.map