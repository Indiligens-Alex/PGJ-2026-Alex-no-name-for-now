extends Control

func _process(delta: float) -> void:
	$ProgressBar.value = main.belonging
	if main.belonging > 50:
		$Music.stream.set_sync_stream_volume(0,0)
		$Music.stream.set_sync_stream_volume(0,0)
	else:
		$Music.stream.set_sync_stream_volume(0,0)
		$Music.stream.set_sync_stream_volume(0,0)
