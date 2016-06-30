webpackJsonp([0,7],{1:function(t,e,s){!function(e,s){t.exports=s()}(this,function(){return function(t){function e(o){if(s[o])return s[o].exports;var i=s[o]={exports:{},id:o,loaded:!1};return t[o].call(i.exports,i,i.exports,e),i.loaded=!0,i.exports}var s={};return e.m=t,e.c=s,e.p="",e(0)}([function(t,e,s){t.exports=s(4)},function(t,e){"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e["default"]={props:{show:{type:Boolean,"default":!1},time:{type:Number,"default":2e3},type:{type:String,"default":"success"},transition:{type:String,"default":"vux-fade"},width:{type:String,"default":"7.6em"}},computed:{toastClass:function(){return{weui_toast_forbidden:"warn"===this.type,weui_toast_cancel:"cancel"===this.type,weui_toast_success:"success"===this.type,weui_toast_text:"text"===this.type}}},watch:{show:function(t){var e=this;t&&(clearTimeout(this.timeout),this.timeout=setTimeout(function(){e.show=!1},this.time))}}}},function(t,e){},function(t,e){t.exports='<div v-show=show class=vux-toast :transition=transition> <div class=weui_mask_transparent></div> <div class=weui_toast :style="{width: width}" :class=toastClass> <i class=weui_icon_toast v-show="type !== \'text\'"></i> <p class=weui_toast_content><slot></slot></p> </div> </div>'},function(t,e,s){var o,i;s(2),o=s(1),i=s(3),t.exports=o||{},t.exports.__esModule&&(t.exports=t.exports["default"]),i&&(("function"==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports).template=i)}])})},2:function(t,e,s){!function(e,s){t.exports=s()}(this,function(){return function(t){function e(o){if(s[o])return s[o].exports;var i=s[o]={exports:{},id:o,loaded:!1};return t[o].call(i.exports,i,i.exports,e),i.loaded=!0,i.exports}var s={};return e.m=t,e.c=s,e.p="",e(0)}([function(t,e,s){t.exports=s(4)},function(t,e){"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e["default"]={props:{leftOptions:{type:Object,"default":function(){return{showBack:!0,backText:"Back",preventGoBack:!1}}},rightOptions:{type:Object,"default":function(){return{showMore:!1}}}},methods:{onClickBack:function(){this.leftOptions.preventGoBack?this.$emit("on-click-back"):history.back()}}}},function(t,e){},function(t,e){t.exports="<div class=vux-header> <div class=vux-header-left> <a class=vux-header-back @click.preventdefault v-show=leftOptions.showBack @click=onClickBack>{{leftOptions.backText}}</a> <slot name=left></slot> </div> <h1 class=vux-header-title><slot></slot></h1> <div class=vux-header-right> <a class=vux-header-more @click.preventdefault @click=\"$emit('on-click-more')\" v-if=rightOptions.showMore></a> <slot name=right></slot> </div> </div>"},function(t,e,s){var o,i;s(2),o=s(1),i=s(3),t.exports=o||{},t.exports.__esModule&&(t.exports=t.exports["default"]),i&&(("function"==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports).template=i)}])})},5:function(t,e,s){!function(e,s){t.exports=s()}(this,function(){return function(t){function e(o){if(s[o])return s[o].exports;var i=s[o]={exports:{},id:o,loaded:!1};return t[o].call(i.exports,i,i.exports,e),i.loaded=!0,i.exports}var s={};return e.m=t,e.c=s,e.p="",e(0)}([function(t,e,s){t.exports=s(3)},function(t,e){},function(t,e){t.exports="<p class=vux-divider> <slot></slot> </p>"},function(t,e,s){var o,i;s(1),i=s(2),t.exports=o||{},t.exports.__esModule&&(t.exports=t.exports["default"]),i&&(("function"==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports).template=i)}])})},6:function(t,e,s){var o,i;s(25),o=s(11),i=s(36),t.exports=o||{},t.exports.__esModule&&(t.exports=t.exports["default"]),i&&(("function"==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports).template=i)},11:function(t,e,s){"use strict";function o(t){return t&&t.__esModule?t:{"default":t}}Object.defineProperty(e,"__esModule",{value:!0});var i=s(2),n=o(i),a=s(5),r=o(a),l=s(1),u=o(l);e["default"]={data:function(){return{mobile:"",password:"",loginFail:!1}},route:{data:function(t){var e=localStorage.getItem("ruzun_user_token");e&&null!==e&&this.$route.router.go({name:"home"})}},methods:{signIn:function(){return""===this.mobile&&""===this.password?void this.$set("loginFail",!0):void this.$http.post(this.$config.API+"/sessions.json",{mobile:this.mobile,password:this.password}).then(function(t){console.log(t.data),console.log(t.data.user);var e=JSON.parse(t.data);console.log(e),console.log(e.user),localStorage.setItem("ruzun_user_token",t.data.user.token),localStorage.setItem("ruzun_user_id",t.data.user.id),this.$route.router.go({name:"home"})},function(t){this.$set("loginFail",!0)})}},components:{XHeader:n["default"],Divider:r["default"],Toast:u["default"]}}},17:function(t,e,s){e=t.exports=s(3)(),e.push([t.id,"","",{version:3,sources:[],names:[],mappings:"",file:"signin.vue",sourceRoot:"webpack://"}])},25:function(t,e,s){var o=s(17);"string"==typeof o&&(o=[[t.id,o,""]]);s(4)(o,{});o.locals&&(t.exports=o.locals)},36:function(t,e){t.exports=' <x-header> 登录 </x-header> <div class="weui_cells weui_cells_form"> <div class=weui_cell> <div class=weui_cell_hd style=width:5%> <label class=weui_label> <i class="fa fa-mobile"></i> </label> </div> <div class="weui_cell_bd weui_cell_primary"> <input class=weui_input type=text placeholder=手机号码 v-model=mobile /> </div> </div> <div class=weui_cell> <div class=weui_cell_hd style=width:5%> <label class=weui_label> <i class="fa fa-lock"></i> </label> </div> <div class="weui_cell_bd weui_cell_primary"> <input class=weui_input type=password placeholder=密码 v-model=password /> </div> </div> </div> <div class=button_sp_area style="margin-top:30px;padding: 10px"> <a @click=signIn href=javascript:; class="weui_btn weui_btn_plain_primary">登 录</a> </div> <divider>没账号?</divider> <div class=button_sp_area style="margin-top:5px;padding: 10px"> <a v-link="{ name: \'signup\' }" class="weui_btn weui_btn_plain_primary">注 册</a> </div> <toast :show.sync=loginFail type=text>登录失败</toast> '}});
//# sourceMappingURL=0.c3d425b91ef13bd5f395.js.map