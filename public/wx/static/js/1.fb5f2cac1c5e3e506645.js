webpackJsonp([1,19],{1:function(e,t,o){!function(t,o){e.exports=o()}(this,function(){return function(e){function t(s){if(o[s])return o[s].exports;var i=o[s]={exports:{},id:s,loaded:!1};return e[s].call(i.exports,i,i.exports,t),i.loaded=!0,i.exports}var o={};return t.m=e,t.c=o,t.p="",t(0)}([function(e,t,o){e.exports=o(4)},function(e,t){"use strict";Object.defineProperty(t,"__esModule",{value:!0}),t["default"]={props:{leftOptions:{type:Object,"default":function(){return{showBack:!0,backText:"Back",preventGoBack:!1}}},rightOptions:{type:Object,"default":function(){return{showMore:!1}}}},methods:{onClickBack:function(){this.leftOptions.preventGoBack?this.$emit("on-click-back"):history.back()}}}},function(e,t){},function(e,t){e.exports="<div class=vux-header> <div class=vux-header-left> <a class=vux-header-back @click.preventdefault v-show=leftOptions.showBack @click=onClickBack>{{leftOptions.backText}}</a> <slot name=left></slot> </div> <h1 class=vux-header-title><slot></slot></h1> <div class=vux-header-right> <a class=vux-header-more @click.preventdefault @click=\"$emit('on-click-more')\" v-if=rightOptions.showMore></a> <slot name=right></slot> </div> </div>"},function(e,t,o){var s,i;o(2),s=o(1),i=o(3),e.exports=s||{},e.exports.__esModule&&(e.exports=e.exports["default"]),i&&(("function"==typeof e.exports?e.exports.options||(e.exports.options={}):e.exports).template=i)}])})},26:function(e,t,o){!function(t,o){e.exports=o()}(this,function(){return function(e){function t(s){if(o[s])return o[s].exports;var i=o[s]={exports:{},id:s,loaded:!1};return e[s].call(i.exports,i,i.exports,t),i.loaded=!0,i.exports}var o={};return t.m=e,t.c=o,t.p="",t(0)}([function(e,t,o){e.exports=o(3)},function(e,t){},function(e,t){e.exports="<p class=vux-divider> <slot></slot> </p>"},function(e,t,o){var s,i;o(1),i=o(2),e.exports=s||{},e.exports.__esModule&&(e.exports=e.exports["default"]),i&&(("function"==typeof e.exports?e.exports.options||(e.exports.options={}):e.exports).template=i)}])})},33:function(e,t,o){var s,i;o(100),s=o(52),i=o(130),e.exports=s||{},e.exports.__esModule&&(e.exports=e.exports["default"]),i&&(("function"==typeof e.exports?e.exports.options||(e.exports.options={}):e.exports).template=i)},52:function(e,t,o){"use strict";function s(e){if(e&&e.__esModule)return e;var t={};if(null!=e)for(var o in e)Object.prototype.hasOwnProperty.call(e,o)&&(t[o]=e[o]);return t["default"]=e,t}function i(e){return e&&e.__esModule?e:{"default":e}}Object.defineProperty(t,"__esModule",{value:!0});var n=o(1),r=i(n),a=o(26),l=i(a),u=o(17),c=s(u),p=o(5);t["default"]={vuex:{getters:{isLogged:function(e){return e.users.isLogged},token:function(e){return e.users.token},user:function(e){return e.users.user}},actions:{showToast:p.showToast,signin:p.signin}},data:function(){return{mobile:"",password:""}},route:{data:function(e){this.isLogged&&this.$route.router.go({name:"home"})}},methods:{signIn:function(){var e=this;return""===this.mobile&&""===this.password?void this.showToast("手机和密码不能为空！"):void c.signIn({mobile:this.mobile,password:this.password}).then(function(t){e.signin(t.user),e.$route.router.go({name:"home"})})["catch"](function(t){console.log(t),e.showToast("账号不存在或密码错误!")})}},components:{XHeader:r["default"],Divider:l["default"]}}},82:function(e,t,o){t=e.exports=o(2)(),t.push([e.id,"","",{version:3,sources:[],names:[],mappings:"",file:"signin.vue",sourceRoot:"webpack://"}])},100:function(e,t,o){var s=o(82);"string"==typeof s&&(s=[[e.id,s,""]]);o(3)(s,{});s.locals&&(e.exports=s.locals)},130:function(e,t){e.exports=' <x-header> 登录 </x-header> <div class="weui_cells weui_cells_form"> <div class=weui_cell> <div class=weui_cell_hd style=width:5%> <label class=weui_label> <i class="fa fa-mobile"></i> </label> </div> <div class="weui_cell_bd weui_cell_primary"> <input class=weui_input type=text placeholder=手机号码 v-model=mobile /> </div> </div> <div class=weui_cell> <div class=weui_cell_hd style=width:5%> <label class=weui_label> <i class="fa fa-lock"></i> </label> </div> <div class="weui_cell_bd weui_cell_primary"> <input class=weui_input type=password placeholder=密码 v-model=password /> </div> </div> </div> <div class=button_sp_area style="margin-top:30px;padding: 10px"> <a @click=signIn href=javascript:; class="weui_btn weui_btn_plain_primary">登 录</a> </div> <divider>没账号?</divider> <div class=button_sp_area style="margin-top:5px;padding: 10px"> <a v-link="{ name: \'signup\' }" class="weui_btn weui_btn_plain_primary">注 册</a> </div> '}});
//# sourceMappingURL=1.fb5f2cac1c5e3e506645.js.map