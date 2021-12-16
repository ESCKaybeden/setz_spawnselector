//  ----------------[Setz Crew]---------------- //
//  -------  Front end: ESCKaybeden  ---------- //
//  ----------  Back end: ra1der  ------------- //
//  -----  Discord: discord.gg/6drAg2vP55  ---- //
//  ------------------------------------------- //
window.addEventListener('message', function(event) {
    if (event.data.msg == "opens") {
        $("body").css({'display':'block'}).animate({
            opacity: "100%"
        }, 500)
    }
    if (event.data.msg == "Close") {
        $("body").animate({
            opacity: "-100%"
        }, 500, function() {
            $("body").css({'display':'none'})
        });
    }
});

function selectspawn(data) {
    $.post(`https://${GetParentResourceName()}/selectspawn`, JSON.stringify({ secilenyer: data }));
}

$('.esc_list1').hover( function(){
    $(".esc_giris1").css({'bottom': '3vh'});
    $(".esc_list1").css({'width': '32%'});
    $(".esc_list2").css({'width': '17%'});
    $(".esc_list3").css({'width': '17%'});
    $(".esc_list4").css({'width': '17%'});
    $(".esc_list5").css({'width': '17%'});
},
function(){
    $(".esc_list1").css({'width': '20%'});
    $(".esc_list2").css({'width': '20%'});
    $(".esc_list3").css({'width': '20%'});
    $(".esc_list4").css({'width': '20%'});
    $(".esc_list5").css({'width': '20%'});
    $(".esc_giris1").css({'bottom': '-8vh'});
});


$('.esc_list2').hover( function(){
    $(".esc_giris2").css({'bottom': '3vh'});
    $(".esc_list2").css({'width': '32%'});
    $(".esc_list1").css({'width': '17%'});
    $(".esc_list3").css({'width': '17%'});
    $(".esc_list4").css({'width': '17%'});
    $(".esc_list5").css({'width': '17%'});
},
function(){
    $(".esc_list1").css({'width': '20%'});
    $(".esc_list2").css({'width': '20%'});
    $(".esc_list3").css({'width': '20%'});
    $(".esc_list4").css({'width': '20%'});
    $(".esc_list5").css({'width': '20%'});
    $(".esc_giris2").css({'bottom': '-8vh'});
});

$('.esc_list3').hover( function(){
    $(".esc_giris3").css({'bottom': '3vh'});
    $(".esc_list3").css({'width': '32%'});
    $(".esc_list1").css({'width': '17%'});
    $(".esc_list2").css({'width': '17%'});
    $(".esc_list4").css({'width': '17%'});
    $(".esc_list5").css({'width': '17%'});
},
function(){
    $(".esc_list1").css({'width': '20%'});
    $(".esc_list2").css({'width': '20%'});
    $(".esc_list3").css({'width': '20%'});
    $(".esc_list4").css({'width': '20%'});
    $(".esc_list5").css({'width': '20%'});
    $(".esc_giris3").css({'bottom': '-8vh'});
});

$('.esc_list4').hover( function(){
    $(".esc_giris4").css({'bottom': '3vh'});
    $(".esc_list4").css({'width': '32%'});
    $(".esc_list1").css({'width': '17%'});
    $(".esc_list2").css({'width': '17%'});
    $(".esc_list3").css({'width': '17%'});
    $(".esc_list5").css({'width': '17%'});
},
function(){
    $(".esc_list1").css({'width': '20%'});
    $(".esc_list2").css({'width': '20%'});
    $(".esc_list3").css({'width': '20%'});
    $(".esc_list4").css({'width': '20%'});
    $(".esc_list5").css({'width': '20%'});
    $(".esc_giris4").css({'bottom': '-8vh'});
});

$('.esc_list5').hover( function(){
    $(".esc_giris5").css({'bottom': '3vh'});
    $(".esc_list5").css({'width': '32%'});
    $(".esc_list1").css({'width': '17%'});
    $(".esc_list2").css({'width': '17%'});
    $(".esc_list3").css({'width': '17%'});
    $(".esc_list4").css({'width': '17%'});
},
function(){
    $(".esc_list1").css({'width': '20%'});
    $(".esc_list2").css({'width': '20%'});
    $(".esc_list3").css({'width': '20%'});
    $(".esc_list4").css({'width': '20%'});
    $(".esc_list5").css({'width': '20%'});
    $(".esc_giris5").css({'bottom': '-8vh'});
});