function checkoutcontent(id) {
    //do ajax
    $.getJSON("/blog/show?id="+id, function(json){
    $("#blogtitle").html(json["blogpost"]["title"]);
    $("#blogcontent").html(json["blogpost"]["content"]);
    $("#comment1").html(json["comments"][0]["content"])
  });
}
function showaboutbydiv(id) {
    //do ajax
    document.getElementById("showabout").style.display = "none";
    document.getElementById("hideabout").style.display = "block";
    document.getElementById(id).style.display = "block";  //显示
}

function hideaboutbydiv(id) {
    //do ajax
    document.getElementById("hideabout").style.display = "none";
    document.getElementById("showabout").style.display = "block";
    document.getElementById(id).style.display = "none";  //显示
}
