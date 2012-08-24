$ ->
	$modal = $('#modal')
	$modal_close = $modal.find('.close')
	$modal_container = $('#modal-container')

	$.on 'ajax:success', 'a[data-remote]', (xhr, data, status) ->
		$modal
			.html(data)
			.prepend($modal_close)
			.css('top', $(window).scrollTop() + 40)
			.show()
		$modal_container.show();

	$.on 'click', '#modal .close', ->
		$modal_container.hide()
		$modal.hide()
		false
