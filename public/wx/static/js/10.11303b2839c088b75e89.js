webpackJsonp([10,17],{1:function(e,t,i){!function(t,i){e.exports=i()}(this,function(){return function(e){function t(s){if(i[s])return i[s].exports;var o=i[s]={exports:{},id:s,loaded:!1};return e[s].call(o.exports,o,o.exports,t),o.loaded=!0,o.exports}var i={};return t.m=e,t.c=i,t.p="",t(0)}([function(e,t,i){e.exports=i(4)},function(e,t){"use strict";Object.defineProperty(t,"__esModule",{value:!0}),t["default"]={props:{leftOptions:{type:Object,"default":function(){return{showBack:!0,backText:"Back",preventGoBack:!1}}},rightOptions:{type:Object,"default":function(){return{showMore:!1}}}},methods:{onClickBack:function(){this.leftOptions.preventGoBack?this.$emit("on-click-back"):history.back()}}}},function(e,t){},function(e,t){e.exports="<div class=vux-header> <div class=vux-header-left> <a class=vux-header-back @click.preventdefault v-show=leftOptions.showBack @click=onClickBack>{{leftOptions.backText}}</a> <slot name=left></slot> </div> <h1 class=vux-header-title><slot></slot></h1> <div class=vux-header-right> <a class=vux-header-more @click.preventdefault @click=\"$emit('on-click-more')\" v-if=rightOptions.showMore></a> <slot name=right></slot> </div> </div>"},function(e,t,i){var s,o;i(2),s=i(1),o=i(3),e.exports=s||{},e.exports.__esModule&&(e.exports=e.exports["default"]),o&&(("function"==typeof e.exports?e.exports.options||(e.exports.options={}):e.exports).template=o)}])})},6:function(e,t,i){!function(t,i){e.exports=i()}(this,function(){return function(e){function t(s){if(i[s])return i[s].exports;var o=i[s]={exports:{},id:s,loaded:!1};return e[s].call(o.exports,o,o.exports,t),o.loaded=!0,o.exports}var i={};return t.m=e,t.c=i,t.p="",t(0)}([function(e,t,i){e.exports=i(3)},function(e,t){"use strict";Object.defineProperty(t,"__esModule",{value:!0}),t["default"]={props:{show:{type:Boolean,"default":!1},text:{type:String,"default":"Loading"}}}},function(e,t){e.exports='<div id=loadingToast class=weui_loading_toast v-show=show> <div class=weui_mask_transparent></div> <div class=weui_toast> <div class=weui_loading> <div class=weui_loading_leaf v-for="i in 12" :class="[\'weui_loading_leaf_\' + i]"></div> </div> <p class=weui_toast_content>{{text}}<slot></slot></p> </div> </div>'},function(e,t,i){var s,o;s=i(1),o=i(2),e.exports=s||{},e.exports.__esModule&&(e.exports=e.exports["default"]),o&&(("function"==typeof e.exports?e.exports.options||(e.exports.options={}):e.exports).template=o)}])})},16:function(e,t,i){"use strict";function s(e){if(e&&e.__esModule)return e;var t={};if(null!=e)for(var i in e)Object.prototype.hasOwnProperty.call(e,i)&&(t[i]=e[i]);return t["default"]=e,t}function o(){return n.get("/games")}function a(e){return n.get("/games/"+e)}Object.defineProperty(t,"__esModule",{value:!0}),t.getGames=o,t.getGame=a;var l=i(5),n=s(l)},47:function(e,t,i){"use strict";function s(e){if(e&&e.__esModule)return e;var t={};if(null!=e)for(var i in e)Object.prototype.hasOwnProperty.call(e,i)&&(t[i]=e[i]);return t["default"]=e,t}function o(e){return e&&e.__esModule?e:{"default":e}}Object.defineProperty(t,"__esModule",{value:!0});var a=i(1),l=o(a),n=i(6),c=o(n),r=i(16),d=s(r),u=i(4);t["default"]={vuex:{actions:{showToast:u.showToast}},data:function(){return{game:{teams:[]}}},route:{data:function(e){var t=this;d.getGame(this.$route.params.gid).then(function(i){t.$set("game",i.game),e.next()})["catch"](function(e){t.showToast(e)})}},methods:{},components:{XHeader:l["default"],Loading:c["default"]}}},75:function(e,t,i){t=e.exports=i(2)(),t.push([e.id,"","",{version:3,sources:[],names:[],mappings:"",file:"show.vue",sourceRoot:"webpack://"}])},91:function(e,t,i){var s=i(75);"string"==typeof s&&(s=[[e.id,s,""]]);i(3)(s,{});s.locals&&(e.exports=s.locals)},119:function(e,t){e.exports=' <x-header> {{game.name}} </x-header> <div class=team_logo> <div class=logo> <img :src=game.logo alt=""/> </div> </div> <div class=weui_cells> <div class=weui_cell> <div class=weui_cell_hd> <i class="fa fa-at"></i> </div> <div class="weui_cell_bd weui_cell_primary"> <p style=padding-left:10px>{{game.name}}</p> </div> <div class=weui_cell_ft></div> </div> <div class="weui_cell weui_cells_access" v-link="{name: \'constitution\', params: {gid: this.game.id}}"> <div class=weui_cell_hd> <i class="fa fa-tag"></i> </div> <div class="weui_cell_bd weui_cell_primary"> <p style=padding-left:10px>查看章程</p> </div> <div class=weui_cell_ft></div> </div> <div class="weui_cell weui_cells_access" v-link="{name: \'playeds\', params: {gid: this.game.id}}"> <div class=weui_cell_hd> <i class="fa fa-tag"></i> </div> <div class="weui_cell_bd weui_cell_primary"> <p style=padding-left:10px>查看赛程</p> </div> <div class=weui_cell_ft></div> </div> </div> <div class=weui_cells_title>参赛队伍：</div> <div class=weui_cells> <div class=weui_cell v-for="team in game.teams"> <div class=weui_cell_hd> <img :src=team.logo style=width:20px;margin-right:5px;display:block> </div> <div class="weui_cell_bd weui_cell_primary"> <p>{{team.name}}</p> </div> <div class=weui_cell_ft>签位:{{team.lot}}</div> </div> </div>  <loading :show=$loadingRouteData></loading> '},138:function(e,t,i){var s,o;i(91),s=i(47),o=i(119),e.exports=s||{},e.exports.__esModule&&(e.exports=e.exports["default"]),o&&(("function"==typeof e.exports?e.exports.options||(e.exports.options={}):e.exports).template=o)}});
//# sourceMappingURL=10.11303b2839c088b75e89.js.map