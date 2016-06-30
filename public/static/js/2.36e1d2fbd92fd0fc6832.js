webpackJsonp([2,7],{1:function(e,t,s){!function(t,s){e.exports=s()}(this,function(){return function(e){function t(i){if(s[i])return s[i].exports;var o=s[i]={exports:{},id:i,loaded:!1};return e[i].call(o.exports,o,o.exports,t),o.loaded=!0,o.exports}var s={};return t.m=e,t.c=s,t.p="",t(0)}([function(e,t,s){e.exports=s(4)},function(e,t){"use strict";Object.defineProperty(t,"__esModule",{value:!0}),t["default"]={props:{show:{type:Boolean,"default":!1},time:{type:Number,"default":2e3},type:{type:String,"default":"success"},transition:{type:String,"default":"vux-fade"},width:{type:String,"default":"7.6em"}},computed:{toastClass:function(){return{weui_toast_forbidden:"warn"===this.type,weui_toast_cancel:"cancel"===this.type,weui_toast_success:"success"===this.type,weui_toast_text:"text"===this.type}}},watch:{show:function(e){var t=this;e&&(clearTimeout(this.timeout),this.timeout=setTimeout(function(){t.show=!1},this.time))}}}},function(e,t){},function(e,t){e.exports='<div v-show=show class=vux-toast :transition=transition> <div class=weui_mask_transparent></div> <div class=weui_toast :style="{width: width}" :class=toastClass> <i class=weui_icon_toast v-show="type !== \'text\'"></i> <p class=weui_toast_content><slot></slot></p> </div> </div>'},function(e,t,s){var i,o;s(2),i=s(1),o=s(3),e.exports=i||{},e.exports.__esModule&&(e.exports=e.exports["default"]),o&&(("function"==typeof e.exports?e.exports.options||(e.exports.options={}):e.exports).template=o)}])})},2:function(e,t,s){!function(t,s){e.exports=s()}(this,function(){return function(e){function t(i){if(s[i])return s[i].exports;var o=s[i]={exports:{},id:i,loaded:!1};return e[i].call(o.exports,o,o.exports,t),o.loaded=!0,o.exports}var s={};return t.m=e,t.c=s,t.p="",t(0)}([function(e,t,s){e.exports=s(4)},function(e,t){"use strict";Object.defineProperty(t,"__esModule",{value:!0}),t["default"]={props:{leftOptions:{type:Object,"default":function(){return{showBack:!0,backText:"Back",preventGoBack:!1}}},rightOptions:{type:Object,"default":function(){return{showMore:!1}}}},methods:{onClickBack:function(){this.leftOptions.preventGoBack?this.$emit("on-click-back"):history.back()}}}},function(e,t){},function(e,t){e.exports="<div class=vux-header> <div class=vux-header-left> <a class=vux-header-back @click.preventdefault v-show=leftOptions.showBack @click=onClickBack>{{leftOptions.backText}}</a> <slot name=left></slot> </div> <h1 class=vux-header-title><slot></slot></h1> <div class=vux-header-right> <a class=vux-header-more @click.preventdefault @click=\"$emit('on-click-more')\" v-if=rightOptions.showMore></a> <slot name=right></slot> </div> </div>"},function(e,t,s){var i,o;s(2),i=s(1),o=s(3),e.exports=i||{},e.exports.__esModule&&(e.exports=e.exports["default"]),o&&(("function"==typeof e.exports?e.exports.options||(e.exports.options={}):e.exports).template=o)}])})},5:function(e,t,s){!function(t,s){e.exports=s()}(this,function(){return function(e){function t(i){if(s[i])return s[i].exports;var o=s[i]={exports:{},id:i,loaded:!1};return e[i].call(o.exports,o,o.exports,t),o.loaded=!0,o.exports}var s={};return t.m=e,t.c=s,t.p="",t(0)}([function(e,t,s){e.exports=s(3)},function(e,t){},function(e,t){e.exports="<p class=vux-divider> <slot></slot> </p>"},function(e,t,s){var i,o;s(1),o=s(2),e.exports=i||{},e.exports.__esModule&&(e.exports=e.exports["default"]),o&&(("function"==typeof e.exports?e.exports.options||(e.exports.options={}):e.exports).template=o)}])})},12:function(e,t,s){"use strict";function i(e){return e&&e.__esModule?e:{"default":e}}Object.defineProperty(t,"__esModule",{value:!0});var o=s(2),l=i(o),a=s(5),n=i(a),r=s(1),c=i(r);t["default"]={data:function(){return{mobile:"",password:"",name:"",height:0,weight:0,regFail:!1}},computed:{},ready:function(){},attached:function(){},methods:{signUp:function(){if(""===this.mobile&&""===this.password&&""===this.name)return void this.$set("regFail",!0);var e={mobile:this.mobile,password:this.password,name:this.name,height:this.height,weight:this.weight};this.$http.post(this.$config.API+"/users.json",{user:e}).then(function(e){this.$route.router.go({name:"signin"})},function(e){this.$set("regFail",!0)})}},components:{XHeader:l["default"],Divider:n["default"],Toast:c["default"]}}},18:function(e,t,s){t=e.exports=s(3)(),t.push([e.id,"","",{version:3,sources:[],names:[],mappings:"",file:"signup.vue",sourceRoot:"webpack://"}])},26:function(e,t,s){var i=s(18);"string"==typeof i&&(i=[[e.id,i,""]]);s(4)(i,{});i.locals&&(e.exports=i.locals)},37:function(e,t){e.exports=' <x-header> 注册 </x-header> <div class="weui_cells weui_cells_form"> <div class=weui_cell> <div class=weui_cell_hd style=width:5%> <label class=weui_label> <i class="fa fa-mobile"></i> </label> </div> <div class="weui_cell_bd weui_cell_primary"> <input class=weui_input type=text placeholder=手机号码 v-model=mobile /> </div> </div> <div class=weui_cell> <div class=weui_cell_hd style=width:5%> <label class=weui_label> <i class="fa fa-lock"></i> </label> </div> <div class="weui_cell_bd weui_cell_primary"> <input class=weui_input type=password placeholder=密码 v-model=password /> </div> </div> <div class=weui_cell> <div class=weui_cell_hd style=width:5%> <label class=weui_label> <i class="fa fa-user"></i> </label> </div> <div class="weui_cell_bd weui_cell_primary"> <input class=weui_input type=text placeholder=名字 v-model=name /> </div> </div> <div class=weui_cell> <div class=weui_cell_hd style=width:5%> <label class=weui_label> <i class="fa fa-h-square"></i> </label> </div> <div class="weui_cell_bd weui_cell_primary"> <input class=weui_input type=text placeholder=身高 v-model=height /> </div> </div> <div class=weui_cell> <div class=weui_cell_hd style=width:5%> <label class=weui_label> <i class="fa fa-wordpress"></i> </label> </div> <div class="weui_cell_bd weui_cell_primary"> <input class=weui_input type=text placeholder=体重 v-model=weight /> </div> </div> </div> <div class=button_sp_area style="margin-top:30px;padding: 10px"> <a @click=signUp href=javascript:; class="weui_btn weui_btn_plain_primary">注 册</a> </div> <divider>已有账号?</divider> <div class=button_sp_area style="margin-top:5px;padding: 10px"> <a v-link="{ name: \'signin\' }" class="weui_btn weui_btn_plain_primary">登 录</a> </div> <toast :show.sync=regFail type=text>注册失败</toast> '},44:function(e,t,s){var i,o;s(26),i=s(12),o=s(37),e.exports=i||{},e.exports.__esModule&&(e.exports=e.exports["default"]),o&&(("function"==typeof e.exports?e.exports.options||(e.exports.options={}):e.exports).template=o)}});
//# sourceMappingURL=2.36e1d2fbd92fd0fc6832.js.map