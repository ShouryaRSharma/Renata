// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
import 'bootstrap';
import './src/application.scss';
import "@fortawesome/fontawesome-free/js/all";
import "slick-carousel/slick/slick.scss";
import "slick-carousel/slick/slick-theme.scss";
import '@fortawesome/fontawesome-free/js/brands';

global.$ = jQuery;

require("@rails/actiontext")
require("smooth-scroll/dist/smooth-scroll.js")
require("slick-carousel/slick/slick.js")
require("trix")
document.addEventListener("turbolinks:load", function() {
    $(".scroller").slick({

        // normal options...
        infinite: true,

        // the magic
        responsive: [{

            breakpoint: 1024,
            settings: {
                slidesToShow: 3,
                slidesToScroll: 3,
                infinite: true
            }

        }, {

            breakpoint: 600,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 2,
                dots: true
            }

        }, {

            breakpoint: 300,
            settings: "unslick" // destroys slick

        }]
    });
})
