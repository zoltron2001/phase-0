// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

  $('body').css({'background-color': 'pink'});

//RELEASE 2:

  bodyElement = $('body');
  mascot = $('.mascot');
  id_logo = $('#logo');

//RELEASE 3:

  // h1Body = $('body > h1');
  // h1Body.css('color', 'red');
  // h1Body.css('border', 'solid 5px');
  // h1Body.css('visibility', 'hidden');
  // mascot.html('<h1>Chrous Frogs</h1>');

//RELEASE 4: Event Listener
  // var mouseEnter = $('img').on('mouseover', function(e){
  //     e.preventDefault()
  //     $(this).attr('src', 'http://media.giphy.com/media/zGJEdp5JzN7JS/giphy-tumblr.gif')
  //   })
  //   $('img').on('mouseleave', function(e){
  //     e.preventDefault()
  //     $(this).attr('src', 'devbootcamp-logo-new.png')
  //   });

//RELEASE 5: Experiment on your own

  $("img").css({'border': '1px solid red'})

  $( "img" ).click(function(e) {
  e.preventDefault()
  $(this).animate({
     width: '500px',
     height: '500px',
     'border-width': '10px'
   }, 5000);
  });

})

// end of the document.ready function: do not remove or write DOM manipulation below this.