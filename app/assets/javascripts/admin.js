//= require jquery
//= require jquery_ujs
//= require tether
//= require bootstrap-sprockets
//= require jquery.autogrow-textarea
//= require turbolinks


function domReady() {
  $( "textarea" ).autogrow( { vertical : true, horizontal : false } );

  $(".student-lesson").on("change", function(e) {
    e.preventDefault();
    $('.loading').show();
    $.getJSON("/admin/lessons/1/subitems.json", function (result) {
      $('.loading').hide();
      $.each(result.daylines, function(i, field){
        $("#daylines").append('<label class="radio-inline">' +
                              '<input class="student-dayline" type="radio" value="' + field.id + '" name="student[dayline_id]" id="student_dayline_id_'+field.id+'">' +
                              field.subject + 
                              '</label>');
      });
      $.each(result.timelines, function(i, field){
        $("#timelines").append('<label class="radio-inline">' +
                               '<input class="student-timeline" type="radio" value="' + field.id + '" name="student[timeline_id]" id="student_timeline_id_'+field.id+'">' +
                               field.subject + 
                               '</label>');
      });
    });
  });
  
  /***********
   * Sidebar *
   ***********/
  (function() {
    $('#menu-trigger').on('click', function(e) {
      e.preventDefault();
      var x = $(this).data('trigger');

      $(x).toggleClass('toggled');
      $(this).toggleClass('open');

      //Close opened sub-menus
      $('.sub-menu.toggled').not('.active').each(function() {
        $(this).removeClass('toggled');
        $(this).find('ul').hide();
      });

      $('.profile-menu .main-menu').hide();

      if (x == '#sidebar') {
        $elem = '#sidebar';
        $elem2 = '#menu-trigger';

        $('#chat-trigger').removeClass('open');

        if (!$('#chat').hasClass('toggled')) {
          $('#header').toggleClass('sidebar-toggled');
        } else {
          $('#chat').removeClass('toggled');
        }
      }

      // When clicking outside
      if ($('#header').hasClass('sidebar-toggled')) {
        $(document).on('click', function(e) {
          if (($(e.target).closest($elem).length === 0) && ($(e.target).closest($elem2).length === 0)) {
            setTimeout(function() {
              $($elem).removeClass('toggled');
              $('#header').removeClass('sidebar-toggled');
              $($elem2).removeClass('open');
            });
          }
        });
      }
    });

    // Submenu
    $('.sub-menu > a').on('click', function(e) {
      e.preventDefault();
      $(this).next().slideToggle(200);
      $(this).parent().toggleClass('toggled');
    });
  })();

  /*
   * Dropdown Menu
   */
  if ($('.dropdown')[0]) {
    //Propagate
    $('.dropdown.open .dropdown-menu').on('click', function(e) {
      e.stopPropagation();
    });

    $('.dropdown').on('shown.bs.dropdown', function(e) {
      if ($(this).attr('data-animation')) {
        $animArray = [];
        $animation = $(this).data('animation');
        $animArray = $animation.split(',');
        $animationIn = 'animated ' + $animArray[0];
        $animationOut = 'animated ' + $animArray[1];
        $animationDuration = ''
        if (!$animArray[2]) {
          $animationDuration = 500; //if duration is not defined, default is set to 500ms
        } else {
          $animationDuration = $animArray[2];
        }

        $(this).find('.dropdown-menu').removeClass($animationOut)
        $(this).find('.dropdown-menu').addClass($animationIn);
      }
    });

    $('.dropdown').on('hide.bs.dropdown', function(e) {
      if ($(this).attr('data-animation')) {
        e.preventDefault();
        $this = $(this);
        $dropdownMenu = $this.find('.dropdown-menu');

        $dropdownMenu.addClass($animationOut);
        setTimeout(function() {
          $this.removeClass('open')

        }, $animationDuration);
      }
    });
  }

  /*
   * Text Feild
   */

  // Add blue animated border and remove with condition when focus and blur
  $('.fg-line .form-control').on('focus', function() {
    $(this).closest('.fg-line').addClass('fg-toggled');
  })

  $('.form-control').on('blur', function() {
    var p = $(this).closest('.form-group, .input-group');
    var i = p.find('.form-control').val();

    if (p.hasClass('fg-float')) {
      if (i.length == 0) {
        $(this).closest('.fg-line').removeClass('fg-toggled');
      }
    } else {
      $(this).closest('.fg-line').removeClass('fg-toggled');
    }
  });

  $('.js-join-to-order').on('click', function () {
    var id = $(this).data('id');
    var name = $(this).data('name');
    var price = $(this).data('price');
    $('#order-ticket-list tbody').append('<tr><td><i class="zmdi zmdi-ticket-star"></i></i><input type="hidden" name="tickets[]" value="' + 
                                   id + '" /></td><td>' + name + '</td><td>' + price + '</td></tr>');
    return false;
  });

  $('.js-join-to-sales-list').on('click', function () {
    var id = $(this).data('id');
    var name = $(this).data('name');
    var price = $(this).data('price');
    $('#sales_list-product-list tbody').append('<tr><td><i class="zmdi zmdi-ticket-star"></i></i><input type="hidden" name="products[]" value="' + 
                                   id + '" /></td><td>' + name + '</td><td>' + price + '</td></tr>');
    return false;
  });

}

$(document).on('turbolinks:load', domReady);