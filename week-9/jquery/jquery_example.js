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
// Reflect

// What is jQuery?

  // jQuery is a library appended to your HTML file that is meant to simplify the relationship between HTML and JavaScript.

// What does jQuery do for you?
  // jQuery's library allows you to impliement its pre-built features. #animate, for exmaple, is a pre-built jQuery method that animates HTML element. Rather than having to create our own JS animate method, we can access and use jQuery's.

// What did you learn about the DOM while working on this challenge?

  // I found it really interesting that we were linking jQuery through the HTML doc rather than the JavaScript one. It's a good example of how the HTML document is meant to pull all the resources together into structure. Here the remote jQuery library acts as a node on the DOM web. So jQuery is connected to HTML which is also connected to the JavaScript doc as well.