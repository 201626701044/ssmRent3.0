
    $(function () {
        $('#mobile').focus(function () {
            $(this).css("background-color","darksalmon")
        })
        $('#pass').focus(function () {
            $(this).css("background-color","darksalmon")
        })
        $('#mobile').blur(function () {
            if (!(/^1[3-9][0-9]{9}$/).test($(this).val())) {
                $('#usernametip').removeClass("wrong").addClass("wrong1");
            } else {
                $('#usernametip').removeClass("wrong1").addClass("wrong");
            }
        })

    })
