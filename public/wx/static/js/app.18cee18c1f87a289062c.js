webpackJsonp([10,8],{0:function(t,e,n){"use strict";function o(t){return t&&t.__esModule?t:{"default":t}}var a=n(25),i=o(a),u=n(89),s=o(u),r=n(88),d=o(r),c=n(69),l=o(c),f=n(26),p=o(f),h=n(28),m=o(h),v=n(90),_=n(20),g=o(_),w=n(29),T=o(w);i["default"].config.debug=!0;var y={API:"http://ruzun.jiancan.me/api/v1"};i["default"].use(d["default"]),i["default"].use(s["default"]),i["default"].use(m["default"],y);var O=new s["default"]({});O.beforeEach(function(t){if(t.to.auth){var e=localStorage.getItem("ruzun_user_token");e&&null!==e||t.redirect("/signin")}l["default"].attach(document.body),t.next()});var b=i["default"].extend(n(80));(0,p["default"])(O),(0,v.sync)(g["default"],O),T["default"].init(i["default"]),O.start(b,"#app")},11:function(t,e,n){"use strict";function o(t){if(t&&t.__esModule)return t;var e={};if(null!=t)for(var n in t)Object.prototype.hasOwnProperty.call(t,n)&&(e[n]=t[n]);return e["default"]=t,e}Object.defineProperty(e,"__esModule",{value:!0}),e.hideToast=e.showToast=void 0;var a=n(19),i=o(a);e.showToast=function(t,e){var n=t.dispatch;n(i.SHOW_TOAST,e)},e.hideToast=function(t){var e=t.dispatch;e(i.HIDE_TOAST)}},19:function(t,e){"use strict";Object.defineProperty(e,"__esModule",{value:!0});e.ROUTE_CHANGED="router/ROUTE_CHANGED",e.SHOW_TOAST="SHOW_TOAST",e.HIDE_TOAST="HIDE_TOAST"},20:function(t,e,n){"use strict";function o(t){return t&&t.__esModule?t:{"default":t}}Object.defineProperty(e,"__esModule",{value:!0});var a,i=n(40),u=o(i),s=n(25),r=o(s),d=n(91),c=o(d),l=n(92),f=o(l),p=n(19);r["default"].use(c["default"]),r["default"].config.debug=!0;var h=!1,m={toast:{show:!1,type:"text",message:"",time:2e3}},v=(a={},(0,u["default"])(a,p.SHOW_TOAST,function(t,e){var n=arguments.length<=2||void 0===arguments[2]?"text":arguments[2],o=arguments.length<=3||void 0===arguments[3]?2e3:arguments[3];t.toast.show=!0,t.toast.message=e,t.toast.type=n,t.toast.time=o}),(0,u["default"])(a,p.HIDE_TOAST,function(t){t.toast.show=!1}),a);e["default"]=new c["default"].Store({state:m,mutations:v,modules:{},strict:h,middlewares:h?[(0,f["default"])()]:[]})},26:function(t,e,n){"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e["default"]=function(t){t.map({"*":{component:function(t){n.e(0,function(e){var n=[e(24)];t.apply(null,n)}.bind(this))}},"/":{name:"home",component:function(t){n.e(5,function(e){var n=[e(81)];t.apply(null,n)}.bind(this))},auth:!0},"/signin":{name:"signin",component:function(t){n.e(0,function(e){var n=[e(24)];t.apply(null,n)}.bind(this))}},"/signup":{name:"signup",component:function(t){n.e(1,function(e){var n=[e(82)];t.apply(null,n)}.bind(this))}},"/users/:uid/edit/":{name:"usersedit",component:function(t){n.e(4,function(e){var n=[e(87)];t.apply(null,n)}.bind(this))},auth:!0},"/teams":{name:"teams",component:function(t){n.e(6,function(e){var n=[e(84)];t.apply(null,n)}.bind(this))}},"/teams/:tid":{name:"team",component:function(t){n.e(3,function(e){var n=[e(86)];t.apply(null,n)}.bind(this))}},"/teams/new":{name:"teamsnew",component:function(t){n.e(2,function(e){var n=[e(85)];t.apply(null,n)}.bind(this))},auth:!0},"/teams/:tid/edit":{name:"teamsedit",component:function(t){n.e(7,function(e){var n=[e(83)];t.apply(null,n)}.bind(this))},auth:!0}})}},28:function(t,e){"use strict";t.exports=function(t,e){t.mixin({created:function(){this.$config=e}})}},29:function(t,e){"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e["default"]={init:function(t){t.http.get("http://ruzun.jiancan.me/api/v1/wechat/sign_package.json?request_url="+location.href.split("#")[0]).then(function(t){"string"==typeof t.data&&(t.data=JSON.parse(t.data));var e=t.data;window.wx.config({debug:!0,appId:e.appId,timestamp:e.timestamp,nonceStr:e.nonceStr,signature:e.signature,jsApiList:["onMenuShareTimeline","onMenuShareAppMessage","onMenuShareQQ","onMenuShareWeibo","hideMenuItems","showMenuItems","hideAllNonBaseMenuItem","showAllNonBaseMenuItem","translateVoice","startRecord","stopRecord","onRecordEnd","playVoice","pauseVoice","stopVoice","uploadVoice","downloadVoice","chooseImage","previewImage","uploadImage","downloadImage","getNetworkType","openLocation","getLocation","hideOptionMenu","showOptionMenu","closeWindow","scanQRCode","chooseWXPay","openProductSpecificView","addCard","chooseCard","openCard"]})})}}},30:function(t,e,n){"use strict";function o(t){return t&&t.__esModule?t:{"default":t}}Object.defineProperty(e,"__esModule",{value:!0});var a=n(20),i=o(a),u=n(93),s=o(u),r=n(11);e["default"]={store:i["default"],vuex:{getters:{toast:function(t){return t.toast}},actions:{hideToast:r.hideToast}},computed:{showToast:{get:function(){return this.toast.show},set:function(t){t||this.hideToast()}}},components:{Toast:s["default"]}}},60:function(t,e){},71:function(t,e){t.exports=" <div id=main> <router-view></router-view> <toast :show.sync=showToast :type=toast.type>{{toast.message}}</toast> </div> "},80:function(t,e,n){var o,a;n(60),o=n(30),a=n(71),t.exports=o||{},t.exports.__esModule&&(t.exports=t.exports["default"]),a&&(("function"==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports).template=a)}});
//# sourceMappingURL=app.18cee18c1f87a289062c.js.map