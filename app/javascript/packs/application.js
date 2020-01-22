import "bootstrap";
import 'bootstrap/dist/js/bootstrap.bundle';

import { previewImageOnFileSelect } from "../components/photo_preview";
import { steps } from "../components/steps"
import { initSweetalert } from '../plugins/init_sweetalert';

//Override the default confirm dialog by rails
$.rails.allowAction = function(link){
  if (link.data("confirm") == undefined){
    return true;
  }
  $.rails.showConfirmationDialog(link);
  return false;
}
//User click confirm button
$.rails.confirmed = function(link){
  link.data("confirm", null);
  link.trigger("click.rails");
}
//Display the confirmation dialog
$.rails.showConfirmationDialog = function(link){
  var message = link.data("confirm");
  $.fn.SimpleModal({
    model: "modal",
    title: "Please confirm",
    contents: message
  }).addButton("Confirm", "button alert", function(){
    $.rails.confirmed(link);
    this.hideModal();
  }).addButton("Cancel", "button secondary").showModal();
}

initSweetalert('#sweet-alert-demo', {
  title: "A nice alert",
  text: "This is a great alert, isn't it?",
  icon: "success"
});

previewImageOnFileSelect();
steps();
