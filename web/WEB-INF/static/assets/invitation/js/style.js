var editorForm = $("#editorForm");



window.onload = function() {
    var img = $(".invitation-content img");

    var content = $(".invitation-content");

    var invitationImage = $(".invitation-image img");
    var x = 0;
    content.each(function () {
        var i = $(this).find("img").first();
        if(i.length === 1){
            invitationImage.get(x).src = i.attr("src");

        }
        x++;
    });

    img.each(function () {
        this.remove();
    });





};

editorForm.css("margin-left", window.innerWidth/2 - editorForm.width()/2 );

$(window).resize(function () {          //当浏览器大小变化时
    editorForm.css("margin-left", window.innerWidth/2 - editorForm.width()/2 );

});