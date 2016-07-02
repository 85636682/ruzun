webpackJsonp([5,7],{1:function(t,e,s){!function(e,s){t.exports=s()}(this,function(){return function(t){function e(i){if(s[i])return s[i].exports;var o=s[i]={exports:{},id:i,loaded:!1};return t[i].call(o.exports,o,o.exports,e),o.loaded=!0,o.exports}var s={};return e.m=t,e.c=s,e.p="",e(0)}([function(t,e,s){t.exports=s(4)},function(t,e){"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e["default"]={props:{show:{type:Boolean,"default":!1},time:{type:Number,"default":2e3},type:{type:String,"default":"success"},transition:{type:String,"default":"vux-fade"},width:{type:String,"default":"7.6em"}},computed:{toastClass:function(){return{weui_toast_forbidden:"warn"===this.type,weui_toast_cancel:"cancel"===this.type,weui_toast_success:"success"===this.type,weui_toast_text:"text"===this.type}}},watch:{show:function(t){var e=this;t&&(clearTimeout(this.timeout),this.timeout=setTimeout(function(){e.show=!1},this.time))}}}},function(t,e){},function(t,e){t.exports='<div v-show=show class=vux-toast :transition=transition> <div class=weui_mask_transparent></div> <div class=weui_toast :style="{width: width}" :class=toastClass> <i class=weui_icon_toast v-show="type !== \'text\'"></i> <p class=weui_toast_content><slot></slot></p> </div> </div>'},function(t,e,s){var i,o;s(2),i=s(1),o=s(3),t.exports=i||{},t.exports.__esModule&&(t.exports=t.exports["default"]),o&&(("function"==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports).template=o)}])})},2:function(t,e,s){!function(e,s){t.exports=s()}(this,function(){return function(t){function e(i){if(s[i])return s[i].exports;var o=s[i]={exports:{},id:i,loaded:!1};return t[i].call(o.exports,o,o.exports,e),o.loaded=!0,o.exports}var s={};return e.m=t,e.c=s,e.p="",e(0)}([function(t,e,s){t.exports=s(4)},function(t,e){"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e["default"]={props:{leftOptions:{type:Object,"default":function(){return{showBack:!0,backText:"Back",preventGoBack:!1}}},rightOptions:{type:Object,"default":function(){return{showMore:!1}}}},methods:{onClickBack:function(){this.leftOptions.preventGoBack?this.$emit("on-click-back"):history.back()}}}},function(t,e){},function(t,e){t.exports="<div class=vux-header> <div class=vux-header-left> <a class=vux-header-back @click.preventdefault v-show=leftOptions.showBack @click=onClickBack>{{leftOptions.backText}}</a> <slot name=left></slot> </div> <h1 class=vux-header-title><slot></slot></h1> <div class=vux-header-right> <a class=vux-header-more @click.preventdefault @click=\"$emit('on-click-more')\" v-if=rightOptions.showMore></a> <slot name=right></slot> </div> </div>"},function(t,e,s){var i,o;s(2),i=s(1),o=s(3),t.exports=i||{},t.exports.__esModule&&(t.exports=t.exports["default"]),o&&(("function"==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports).template=o)}])})},25:function(t,e,s){"use strict";function i(t){return t&&t.__esModule?t:{"default":t}}Object.defineProperty(e,"__esModule",{value:!0});var o=s(2),a=i(o),n=s(1),l=i(n);e["default"]={data:function(){return{team:{users:[]},loadFail:!1,joinFail:!1}},route:{data:function(t){this.$http.get(this.$config.API+"/teams/"+this.$route.params.tid+".json").then(function(t){"string"==typeof t.data&&(t.data=JSON.parse(t.data)),this.$set("team",t.data.team)},function(t){this.$set("loadFail",!0)})}},methods:{joinTeam:function(){var t=localStorage.getItem("ruzun_user_token");return null===t?void this.$route.router.go({name:"signin"}):void this.$http.post(this.$config.API+"/team_users.json",{team_id:this.team.id},{headers:{Authorization:"User "+t}}).then(function(t){"string"==typeof t.data&&(t.data=JSON.parse(t.data)),console.log(t.data)},function(t){this.$set("joinFail",!0)})}},components:{XHeader:a["default"],Toast:l["default"]}}},31:function(t,e,s){e=t.exports=s(3)(),e.push([t.id,"","",{version:3,sources:[],names:[],mappings:"",file:"show.vue",sourceRoot:"webpack://"}])},39:function(t,e,s){var i=s(31);"string"==typeof i&&(i=[[t.id,i,""]]);s(4)(i,{});i.locals&&(t.exports=i.locals)},50:function(t,e){t.exports=' <x-header> {{team.name}} <a slot=right @click=joinTeam href=javascript:;> 加入队伍 </a> </x-header> <div class=team_logo> <div class=logo> <img :src=team.logo alt=""/> <input type=file accept=image/jpg,image/jpeg,image/png,image/gif multiple=multiple /> </div> </div> <div class=weui_cells> <div class=weui_cell> <div class=weui_cell_hd> <i class="fa fa-at"></i> </div> <div class="weui_cell_bd weui_cell_primary"> <p style=padding-left:10px>{{team.name}}</p> </div> <div class=weui_cell_ft></div> </div> <div class=weui_cell> <div class=weui_cell_hd> <i class="fa fa-tag"></i> </div> <div class="weui_cell_bd weui_cell_primary"> <p style=padding-left:10px>{{team.sign}}</p> </div> <div class=weui_cell_ft></div> </div> </div> <div class=weui_cells_title>{{team.name}}的球员：</div> <div class=weui_cells> <div class=weui_cell v-for="user in team.users"> <div class=weui_cell_hd><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC4AAAAuCAMAAABgZ9sFAAAAVFBMVEXx8fHMzMzr6+vn5+fv7+/t7e3d3d2+vr7W1tbHx8eysrKdnZ3p6enk5OTR0dG7u7u3t7ejo6PY2Njh4eHf39/T09PExMSvr6+goKCqqqqnp6e4uLgcLY/OAAAAnklEQVRIx+3RSRLDIAxE0QYhAbGZPNu5/z0zrXHiqiz5W72FqhqtVuuXAl3iOV7iPV/iSsAqZa9BS7YOmMXnNNX4TWGxRMn3R6SxRNgy0bzXOW8EBO8SAClsPdB3psqlvG+Lw7ONXg/pTld52BjgSSkA3PV2OOemjIDcZQWgVvONw60q7sIpR38EnHPSMDQ4MjDjLPozhAkGrVbr/z0ANjAF4AcbXmYAAAAASUVORK5CYII=" alt="" style=width:20px;margin-right:5px;display:block></div> <div class="weui_cell_bd weui_cell_primary"> <p>{{user.name}}</p> </div> <div class=weui_cell_ft>身高{{user.height}}cm</div> </div> </div>  <toast :show.sync=loadFail type=text>加载失败</toast> '},57:function(t,e,s){var i,o;s(39),i=s(25),o=s(50),t.exports=i||{},t.exports.__esModule&&(t.exports=t.exports["default"]),o&&(("function"==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports).template=o)}});
//# sourceMappingURL=5.197510b5ebb5b45c1ce1.js.map