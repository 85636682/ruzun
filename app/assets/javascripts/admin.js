//= require jquery
//= require tether
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks


function domReady() {
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

}

$(document).on('turbolinks:load', domReady);