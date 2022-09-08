function show16(){
    $(".p16").show();
    $("#mostra_p15").show();
    $(".p15").hide();
};
function show15(){
    $(".p15").show();
    $(".p16").hide();
}
function mostra_r15(){
    $("#cont_img_15r").show();
    $("#cont_img_15").hide();
    $("#mostra_retro15").hide();
    $("#mostra_front15").show();
    $("#mostra_p16").css("display", "none");
}
function mostra_r16(){
    $("#cont_img_16r").show();
    $("#cont_img_16").hide();
    $("#mostra_retro16").hide();
    $("#mostra_front16").show();
    $("#mostra_p15").css("display", "none");
}
function mostra_15(){
    $("#cont_img_15r").hide();
    $("#cont_img_15").show();
    $("#mostra_retro15").show();
    $("#mostra_front15").hide();
    $("#mostra_p16").css("display", "inline-block");
}
function mostra_16(){
    $("#cont_img_16r").hide();
    $("#cont_img_16").show();
    $("#mostra_retro16").show();
    $("#mostra_front16").hide();
    $("#mostra_p15").css("display", "inline-block");
}

function mostra_p16(){
    $(".p16").show();
    $(".p15").hide();
    $("#mostra_p15").css("display", "inline-block");
}

function mostra_p15(){
    $(".p15").show();
    $("#mostra_p16").css("display", "inline-block");
    $(".p16").hide();
}

function mostra_antr(){
    if(typeof($per) == "undefined" || $per == null || $per == 0){
        $(".pers").css("background-color", "#ffb3ff");
        $("#antroponimo").css("background-color", "#ffb3ff");
        $per = 1;
    }else{
        $(".pers").css("background-color", "white");
        $("#antroponimo").css("background-color", "white");
        $per = 0;
    }
}

function mostra_ist(){
    if(typeof($ist) == "undefined" || $ist == null || $ist == 0){
        $(".ist").css("background-color", "#e085c2");
        $("#istituzione").css("background-color", "#e085c2");
        $ist = 1;
    }else{
        $(".ist").css("background-color", "white");
        $("#istituzione").css("background-color", "white");
        $ist = 0;
    }
}

function mostra_date(){
    if(typeof($d) == "undefined" || $d == null || $d == 0){
        $(".date").css("background-color", "#79d279");
        $("#data").css("background-color", "#79d279");
        $d = 1;
    }else{
        $(".date").css("background-color", "white");
        $("#data").css("background-color", "white");
        $d = 0;
    }
}

function mostra_del(){
    if(typeof($d) == "undefined" || $d == null || $d == 0){
        $(".del").show();
        $(".del").css("background-color", "#a8c6ff");
        $("#cancellazioni").css("background-color", "#a8c6ff");
        $d = 1;
    } else{
        $(".del").hide();
        $(".del").css("background-color", "white");
        $("#cancellazioni").css("background-color", "white");
        $d = 0;
    }    
}
function mostra_add(){
    if(typeof($a) == "undefined" || $a == null || $a == 0){
        $(".add").show();
        $(".add").css("background-color", "#cbb8d7");
        $("#aggiunte").css("background-color", "#cbb8d7");
        $a = 1;
    } else{
        $(".add").hide();
        $(".add").css("background-color", "white");
        $("#aggiunte").css("background-color", "white");
        $a = 0;
    }    
}

function mostra_und(){
    if(typeof($u) == "undefined" || $u == null || $u == 0){
        $("u").css("background-color", "#ffa152");
        $("#sottolineature").css("background-color", "#ffa152");
        $u = 1;
    }else{
        $("u").css("background-color", "white");
        $("#sottolineature").css("background-color", "white");
        $u = 0;
    }    
}
function mostra_expan(){
    if(typeof($ex) == "undefined" || $ex == null || $ex == 0){
        $(".expan").show();
        $(".abbr").hide();
        $(".expan").css("background-color", "#ffadb2");
        $("#abbreviazioni").css("background-color", "#ffadb2");
        $ex = 1;
    }else{
        $(".expan").css("background-color", "white");
        $("#abbreviazioni").css("background-color", "white");
        $(".abbr").show();
        $(".expan").hide();
        $ex = 0;
    }    
}
function mostra_gloss(){
    if(typeof($term) == "undefined" || $term == null || $term == 0){
        $("#ele_term").css("background-color", "#ffff9e");
        $(".el_term").css("background-color", "#ffff9e");
        $term = 1;
    }else{
        $("#ele_term").css("background-color", "white");
        $(".el_term").css("background-color", "white");
        $term = 0;
    }
}

function creaMappa(name){  
    try {
        var x= document.getElementById(name);
        x.setAttribute("style", "background-color: red");
    } catch(e) {
        alert("creaMappa()"+e);   
    }                                     
}

function togliMappa(name){  
    try {
        var x= document.getElementById(name);
        x.setAttribute("style", "background-color: white");
    } catch(e) {
        alert("togliMappa()"+e);   
    }                                     
}