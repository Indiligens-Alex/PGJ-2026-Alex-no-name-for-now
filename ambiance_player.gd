extends AudioStreamPlayer

const MUTE_VOL := -50.0
const MAX_VOL := -5.0

@export var fade_speed: float = 5

func _ready() -> void:
	stream.set_sync_stream_volume(0, MAX_VOL)
	stream.set_sync_stream_volume(1, MUTE_VOL)

func _process(delta: float) -> void:
	if main.belonging < 50:
		stream.set_sync_stream_volume(0, move_toward(
			stream.get_sync_stream_volume(0), MAX_VOL,
				fade_speed * delta))
		stream.set_sync_stream_volume(1, move_toward(
			stream.get_sync_stream_volume(1), MUTE_VOL,
				fade_speed*2 * delta))
	else:
		stream.set_sync_stream_volume(0, move_toward(
			stream.get_sync_stream_volume(0), MUTE_VOL,
				fade_speed * delta))
		stream.set_sync_stream_volume(1, move_toward(
			stream.get_sync_stream_volume(1), MAX_VOL,
				fade_speed*2 * delta))
	#
	#print(stream.get_sync_stream_volume(0),
	#stream.get_sync_stream_volume(1))
