$(function () {

	$('.countdown').each(function() {
		$(this).countdown({
			until: $(this).html(), 
			format: 'HMS',
			compact: true,
			onExpiry: reload,
		});
	});  

	$('.typeahead').each(function() {
		$(this).typeahead({ 
			source: function(typeahead,query,token) { 
				$.ajax({
					dataType: 'json',
					data: { q: query, t: token },
					type: 'POST',
					url: $("[name='data-url']").val(),
					statusCode: {
						500: function() { 
							alert('500 - Internal Server Error');
						}
					},
					success: function (data) { 
						return typeahead.process(data) 
					} 
				});
			}
		});
	});
				
});

function reload() { 
	window.location.reload();
}
