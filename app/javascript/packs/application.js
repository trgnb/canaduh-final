
//= require_tree .


require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")


import "bootstrap";
import "../plugins/flatpickr"
import "./sweetalert"

require("flickity")
import "flickity/dist/flickity.min.css";

$(".main-carousel").flickity({
  contain: true
});


// MAPBOX //
import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });
  }
};

export { initMapbox };

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();
