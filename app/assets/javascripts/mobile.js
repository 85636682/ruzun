//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require m/material.min
//= require m/ripples.min

function domReady () {
    $.material.init();
}

$(document).on('turbolinks:load', domReady);