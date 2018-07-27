$(document).ready(function() {

    //On Click signup, hide login and show registration form
    $("#signup").click(function() {
        $("#first").slideUp("slow", function() {
            $("#second").slideDown("slow");
        });
    });

        //On Click signup, hide registration and show login form
        $("#signin").click(function() {
            $("#second").slideUp("slow", function() {
                $("#first").slideDown("slow");
            });
        });

});