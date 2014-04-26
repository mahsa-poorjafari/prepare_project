var resize = function () {
    var overlay_left = ($('.overlay').width() - 500) / 2 + 'px';
    var sw = ($('.overlay').height() - 250) + 'px';
    var tb = (($('.overlay').height() - 150) / 2) + 'px';
    $('#content').height(sw);
    $('#content img').height(sw);
    $('#prev-button').css({ "top": tb });
    $('#next-button').css({ "top": tb });
    $('.cycle-overlay').css({ "left": overlay_left });
}
resize();
$(document).ready(function () {
    var sw = ($('.overlay').width() - 500) / 2 + 'px';
    $('.cycle-overlay').css({ "left": sw });
    $('#content').cycle({
        speed: 2500,
        timeout: 6000
    });
});
$(window).resize(function () {
    resize();
});

var imn = 8;

      function removeAll() {
          for (var i = 0; i < imn; i++) {
              $('#content').cycle('remove', 0);
          }
      }

      function addAll(img) {
          for (var i = 0; i < img.length; i++) {
              $('#content').cycle('add', img[i]);
          }
          $(this).prop('disabled', true);
      }

      function updateSlide(img) {
          if (img.length == 1) {
              $('#prev-button').hide();
              $('#next-button').hide();
              $('#pager').hide();
          } else {
              $('#prev-button').show();
              $('#next-button').show();
              $('#pager').show();
          }
          removeAll();
          addAll(img);
          return img.length;
      }

      $('#home').click(function () {
          var images = [
      '<img src="home/newyear.jpg" data-cycle-timeout="15000" data-cycle-fx="scrollHorz" data-cycle-overlay-template="">',
      '<img src="home/slide1.jpg" data-cycle-timeout="15000" data-cycle-fx="scrollHorz" data-cycle-overlay-template="">',
      '<img src="home/slide4.jpg" data-cycle-fx="scrollHorz" data-cycle-desc="For every taste<br/> A different choice <br/> A different life <br/><br/> Be Your Life architect">',
      '<img src="home/slide5.jpg" data-cycle-fx="scrollHorz" data-cycle-desc="It’s your whole life <br/> You can choose <br/> To be safe, to be happy <br/><br/> Be Your Life architect">',
      '<img src="aminties/lobby.jpg" data-cycle-fx="scrollHorz" data-cycle-desc="It’s your impression<br/>  You can choose <br/>To be elegant, to be majestic <br/><br/>Be Your Life architect">',
      '<img src="home/slide11.jpg" data-cycle-fx="scrollHorz" data-cycle-desc="It’s your hosting <br/> You can choose <br/> To be magnificent, to be memorable <br/><br/> Be Your Life architect">',
      '<img src="home/slide12.jpg" data-cycle-fx="scrollHorz" data-cycle-overlay-template="">',
      '<img src="home/slide100.jpg" data-cycle-fx="scrollHorz" data-cycle-desc="It’s your well-being <br/> You can choose <br/> To be lively, to be wholesome. <br/><br/> Be Your Life architect">'
    ];
          imn = updateSlide(images);
          resize();
      });

      $('.gallery').click(function () {
          var images = [
    '<img src="images/elizeh_group/elizeh.jpg" data-cycle-fx="scrollHorz" data-cycle-desc="Since its inception in late 1380’s , Elizeh engineering group has begun operating with <br/>innovative approach, creative human resources and “Be your life architect” as its slogan.">'
    ];
          imn = updateSlide(images);
          resize();
      });

      $('#ourprojects').click(function () {
          var images = [
    '<img src="images/our_project/our_project.jpg" data-cycle-fx="scrollHorz" data-cycle-overlay-template="">'
    ];
          imn = updateSlide(images);
          resize();
      });    
      

      $('#contact').click(function () {
          var images = [
    '<img src="slide4.jpg" data-cycle-fx="scrollHorz" data-cycle-desc="29th Mollasadra St., Mollasadra Blvd. <br/> Elizeh Residential Tower, Mashhad, Iran <br/> Tel: +98 511 8188 <br/>E-mail: info@elizehgroup.com">'
    ];
          imn = updateSlide(images);
          resize();
      });

      $('.aminties').click(function () {
          var images = [
    '<img src="aminties/ca.jpg" data-cycle-fx="scrollHorz" data-cycle-desc="For every taste<br/> A different choice <br/> A different life <br/><br/> Be Your Life architect">',
    '<img src="aminties/daycare.jpg" data-cycle-fx="scrollHorz" data-cycle-desc="It’s your whole life <br/> You can choose <br/> To be safe, to be happy <br/><br/> Be Your Life architect">',
    '<img src="aminties/garden.jpg" data-cycle-fx="scrollHorz" data-cycle-desc="It’s your relief<br/>  You can choose <br/> To feel the nature To breathe, to dream <br/><br/> Be Your Life architect">',
    '<img src="aminties/gym.jpg" data-cycle-fx="scrollHorz" data-cycle-desc="It’s your body<br/> You can choose<br/> To be fit, to be fabulous <br/><br/>Be Your Life architect">',
    '<img src="aminties/housekeeping.jpg" data-cycle-fx="scrollHorz" data-cycle-overlay-template="">',
    '<img src="aminties/lobby.jpg" data-cycle-fx="scrollHorz" data-cycle-desc="It’s your impression<br/>  You can choose <br/>To be elegant, to be majestic <br/><br/>Be Your Life architect">',
    '<img src="aminties/parking.jpg" data-cycle-fx="scrollHorz" data-cycle-overlay-template="">',
    '<img src="aminties/pool.jpg" data-cycle-fx="scrollHorz" data-cycle-desc="It’s your well-being <br/> You can choose <br/> To be lively, to be wholesome. <br/><br/> Be Your Life architect">',
    '<img src="aminties/restaurant.jpg" data-cycle-fx="scrollHorz" data-cycle-desc="It is your meal<br/> You can choose <br/>To be delicious To be healthy <br/><br/>Be your life architect ">',
    '<img src="aminties/spa.jpg" data-cycle-fx="scrollHorz" data-cycle-desc="It’s your soul <br/> You can choose<br/>  To be away from it all<br/> To find yoursellf<br/> To revive<br/><br/>Be Your Life architect">',
    '<img src="aminties/tennis.jpg" data-cycle-fx="scrollHorz" data-cycle-desc="It’s your adrenaline<br/> You can choose<br/> To be energetic, to be amused<br/><br/>Be Your Life architect">'
    ];
          imn = updateSlide(images);
          resize();
      });

      $('.location').click(function () {
          var images = [
    '<img src="slide4.jpg" data-cycle-fx="scrollHorz" data-cycle-overlay-template="">' ];
          imn = updateSlide(images);
          resize();
      });

      $('.floorplan').click(function () {
          var images = [
    '<img src="images/floor_plan/floor-plan280.jpg" data-cycle-fx="scrollHorz" data-cycle-overlay-template="">',
    '<img src="images/floor_plan/floor-plan365.jpg" data-cycle-fx="scrollHorz" data-cycle-overlay-template="">',
    '<img src="images/floor_plan/floor-plan395.jpg" data-cycle-fx="scrollHorz" data-cycle-overlay-template="">',
    '<img src="images/floor_plan/floor-plan450.jpg" data-cycle-fx="scrollHorz" data-cycle-overlay-template="">',
    '<img src="images/floor_plan/floor-plan590.jpg" data-cycle-fx="scrollHorz" data-cycle-overlay-template="">'
    ];
          imn = updateSlide(images);
          resize();
      });

