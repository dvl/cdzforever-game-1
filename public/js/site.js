$(function () {

	$('.countdown').each(function() {
		$(this).countdown({
			until: $(this).html(), 
			format: 'HMS',
			compact: true,
			onExpiry: reload,
		});
	});  

	$('.servertime').each(function() {
		$(this).countdown({
			since: $(this).html(), 
			format: 'HMS',
			compact: true,
		});
	});  

	$('.typeahead').each(function() {
		$(this).typeahead({ 
			source: function(typeahead,query) { 
				$.ajax({
					dataType: 'json',
					data: { 
						query: query ,
					},
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

	$('[rel=tooltip]').each(function() { 
		$(this).tooltip();
	});

	$('.checkall').click(function () {
		$(this).parents('table:eq(0)').find(':checkbox').attr('checked', this.checked);
	});
				
});

function reload() { 
	window.location.reload();
}
