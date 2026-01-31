extends AudioStreamPlayer

const MUTE_VOL := -50
@export var player: Player
@export var transition: float


#func _ready() -> void:
	#pass 

func _process(_delta: float) -> void:	
	if main.belonging < 50:
		pass
	#print(stream.stream_0.stream)
