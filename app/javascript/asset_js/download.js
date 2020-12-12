$(document).on('turbolinks:load', function() {
  $("form.ytd_video_downloader").validate({
    rules: {
      "url": {
        required: true
      }
    },
    messages: {
      'url': 'Please provide a youtube video url first!'
    },
    errorPlacement: function (error, element) {
      if (element.attr("name") == "url") {
        error.insertAfter($(element).parent());
      } else {
        error.insertAfter($(element));
      }
    },
    submitHandler: function(form) {
      form.submit();
    }
  });
});
