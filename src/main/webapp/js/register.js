$(function () {

    $('#phonenum').blur(function () {
        var phone=$("#phonenum").val();
        var reg=/^[1][3-9][0-9]{9}$/;
        if(reg.test(phone)){
            $("#cuo1").removeClass("wrong1").addClass("wrong");}
        else{
            $("#cuo1").removeClass("wrong").addClass("wrong1");}
    })

    $('#mima').blur(function () {
        var ma=$('#mima').val();
        var reg=/^(\w){6,12}$/;
        if(reg.test(ma)){
            $("#cuo2").removeClass("wrong1").addClass("wrong");
        }else {
            $("#cuo2").removeClass("wrong").addClass("wrong1");
        }
    })

    $('#remima').blur(function () {
        var mi=$("#mima").val();
        var remi=$("#remima").val();
        if(mi==remi){
            $("#cuo3").removeClass("wrong1").addClass("wrong");}
        else{
            $("#cuo3").removeClass("wrong").addClass("wrong1");
        }
    })

    // $('#yanzheng3').onclick(function () {
    //     var arr = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9'];
    //     var str = '';
    //     for(var i = 0 ; i < 4 ; i ++ )
    //         str +=''+arr[Math.floor(Math.random() * arr.length)];
    //     $("#yanzheng").text("");
    //     $("#yanzheng").append(str);
    //     $("#cuo4").removeClass("wrong1").addClass("wrong");
    //     if($("#code").val()!=""){
    //         $("#code").empty();
    //     }
    // })

    $('#re-phonenum').blur(function () {
        var phone=$("#re-phonenum").val();
        var reg=/^[1][3-9][0-9]{9}$/;
        if(reg.test(phone)){
            $("#re-cuo1").removeClass("wrong1").addClass("wrong");}
        else{
            $("#re-cuo1").removeClass("wrong").addClass("wrong1");}
    })

    $('#re-mima').blur(function () {
        var ma=$('#re-mima').val();
        var reg=/^(\w){6,12}$/;
        if(reg.test(ma)){
            $("#re-cuo2").removeClass("wrong1").addClass("wrong");
        }else {
            $("#re-cuo2").removeClass("wrong").addClass("wrong1");
        }
    })

    $('#re-remima').blur(function () {
        var mi=$("#re-mima").val();
        var remi=$("#re-remima").val();
        if(mi==remi){
            $("#re-cuo3").removeClass("wrong1").addClass("wrong");}
        else{
            $("#re-cuo3").removeClass("wrong").addClass("wrong1");
        }
    })



})

