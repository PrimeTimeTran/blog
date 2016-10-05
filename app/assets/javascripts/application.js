// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs

//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .

$(document).on("page:load ready", function() {
  $("#target").on("click", function() {
      $("#main").toggle(1000)
        if($(this).text() == 'Hide Articles' ) {
          $(this).text('Show Articles');
        } else {
          $(this).text('Hide Articles');
        }
      });

      $("#change").on("click", function() {
        $("#bg").css("background-color", "#8F8F8F");
        $(this).hide();
      });
  });

  $(document).on("page:load ready",function(){
      // Activate Carousel for use
      $("#myCarousel").carousel();

      // Enable Carousel Indicators in the middle
      $(".item1").click(function(){
          $("#myCarousel").carousel(0);
      });
      $(".item2").click(function(){
          $("#myCarousel").carousel(1);
      });
      $(".item3").click(function(){
          $("#myCarousel").carousel(2);
      });
      $(".item4").click(function(){
          $("#myCarousel").carousel(3);
      });

      // Enable Carousel Controls for left and right
      $(".left").click(function(){
          $("#myCarousel").carousel("prev");
      });
      $(".right").click(function(){
          $("#myCarousel").carousel("next");
      });
  });
