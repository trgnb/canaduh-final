
//= require_tree .

require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap"
import "../plugins/flatpickr"
import "./sweetalert"
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import {appNotification} from '../plugins/appointments-notification';

initAutocomplete();
initMapbox();
appNotification();
