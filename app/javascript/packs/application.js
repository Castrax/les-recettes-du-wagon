import "bootstrap";
import 'bootstrap/dist/js/bootstrap.bundle';

import { previewImageOnFileSelect } from "../components/photo_preview";
import { steps } from "../components/steps"
import { initSweetalert } from '../plugins/init_sweetalert';
import { initSelect2 } from '../plugins/init_select2';

previewImageOnFileSelect();
steps();
