$(document).ready(function() {
  // Initialize validation on the entire ASP.NET form.
  $("#form1").validate({
    // This prevents validation from running on every
    //  form submission by default.
    onsubmit: false,
    // You can also mix in more complex validation rules:
    rules: {
      Zip: {
        minlength: 5
      }
    }
  });

  // Search for controls marked with the causesValidation flag 
  //  that are contained anywhere within elements marked as 
  //  validationGroups, and wire their click event up.
  $('.validationGroup .causesValidation').click(Validate);

  // Select any input[type=text] elements within a validation group
  //  and attach keydown handlers to all of them.
  $('.validationGroup :text').keydown(function(evt) {
    // Only execute validation if the key pressed was enter.
    if (evt.keyCode == 13) {
      // Find and store the next input element that comes after the
      //  one in which the enter key was pressed.
      var $nextInput = $(this).nextAll(':input:first');

      // If the next input is a submit button, go into validation.
      //  Else, focus the next form element as if enter == tab.
      if ($nextInput.is(':submit')) {
        Validate(evt);
      }
      else {
        evt.preventDefault();
        $nextInput.focus();
      }
    }
  });
});

function Validate(evt) {
  // Ascend from the button or input element that triggered the 
  //  event until we find a container element flagged with 
  //  .validationGroup and store a reference to that element.
  var $group = $(this).parents('.validationGroup');

  var isValid = true;

  // Descending from that .validationGroup element, find any input
  //  elements within it, iterate over them, and run validation on 
  //  each of them.
  $group.find(':input').each(function (i, item) {
    if (!$(item).valid())
      isValid = false;
  });

  // If any fields failed validation, prevent the button's click 
  //  event from triggering form submission.
  if (!isValid)
    evt.preventDefault();
}