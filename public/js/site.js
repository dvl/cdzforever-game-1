$(function () {
    $('.countdown').each(function() {
        $(this).countdown({
            until: $(this).html(), 
            format: 'HMS',
            compact: true,
            onExpiry: reload,
        });
    });
    
});

function reload() { 
    window.location.reload();
}

