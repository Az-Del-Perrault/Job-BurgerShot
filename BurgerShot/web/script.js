$(document).ready(function() {
    $("#burgershot").hide();      
    let selectedBox = null;

    window.addEventListener('message', function(event) {
        const actionMap = {
            "openburgershot": "#burgershot",
            "closeburgershot": "#burgershot",
        };

        const selector = actionMap[event.data.action];
        if (selector) {
            if (event.data.action.startsWith("open")) {
                $(selector).fadeIn(500);
            } else if (event.data.action.startsWith("close")) {
                $(selector).fadeOut(500);
            }
            resetSelection();
        }
    });

    document.onkeyup = function(data) {
        if (data.which == 27) {
            $.post('https://BurgerShot/exit', JSON.stringify({}));
            return;
        }
    };
});
