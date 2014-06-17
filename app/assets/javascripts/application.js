// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


$(document).ready(function () {
    var menu = $('#header')
    var timeout = 0;
    var hovering = false;
    
    $.data(this, 'timer', setTimeout($.proxy(function() {
      menu.slideUp('slow');
    }, this), 4000));

    $('#span')
        .on("mouseenter", function () {
        hovering = true;
        // Open the menu
        $('#header')
            .stop(true, true)
            .slideDown(400);

        if (timeout > 0) {
            clearTimeout(timeout);
        }
    })
        .on("mouseleave", function () {
        resetHover();
    });

    $("#header")
        .on("mouseenter", function () {
        // reset flag
        hovering = true;
        // reset timeout
        startTimeout();
    })
        .on("mouseleave", function () {
        // The timeout is needed incase you go back to the main menu
        resetHover();
    });

    function startTimeout() {
        // This method gives you 1 second to get your mouse to the sub-menu
        timeout = setTimeout(function () {
            closeMenu();
        }, 1000);
    };

    function closeMenu() {
        // Only close if not hovering
        if (!hovering) {
            $('#header').stop(true, true).slideUp(400);
        }
    };

    function resetHover() {
        // Allow the menu to close if the flag isn't set by another event
        hovering = false;
        // Set the timeout
        startTimeout();
    };
});