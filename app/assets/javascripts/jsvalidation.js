$(document).ready(function() {
    $("#dropdown").select2();
});
$(document).ready(function() {
    $('.datepicker').datepicker();
});
$(function() {
    var $registrationform = $("#jsform");
    if ($registrationform.length) {
        $registrationform.validate({
            rules: {
                firstname: {
                    required: true,
                    minlength: 4
                },
                lastname: {
                    required: true,
                    minlength: 4
                },
                email: {
                    required: true
                },
                age: {
                    required: true,
                    range: [18, 80]
                },
                url: {
                    required: true,
                    url: true
                },
                phone: {
                    required: true,
                    digits: true,
                    minlength: 10
                },
                psw: {
                    required: true,
                    minlength: 6,
                    maxlength: 10
                }
            }
        })
    }
})