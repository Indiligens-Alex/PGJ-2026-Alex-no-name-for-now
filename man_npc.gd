class_name NPC extends CharacterBody2D

var destination: Vector2
var dir: Vector2
@export var walk_time: float = 1
@export var search_radius: float = 5
@onready var cooldown_timer: Timer = %"Cooldown Timer"

func _ready() -> void:
	var rand_offset: Vector2 = Vector2(randf_range(-5, 5), randf_range(-2, 5.5))
	position += rand_offset
	cooldown_timer.timeout.connect(walk_around)
	walk_around()

func walk_around() -> void:
	destination = global_position + Vector2(randf_range(-search_radius, search_radius), randf_range(-search_radius, search_radius))
	var t: Tween = create_tween()
	t.tween_property(self, "global_position", destination, walk_time)
	start_cooldown()

func start_cooldown() -> void:
	cooldown_timer.wait_time = randf_range(1, 4)
	cooldown_timer.start()
