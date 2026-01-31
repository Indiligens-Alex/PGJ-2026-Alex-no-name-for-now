class_name SceneSwitcher extends Node2D

var main_menu = preload("res://Scenes/canvas_main_menu.tscn")
var explanation = preload("res://Scenes/canvas_explanation.tscn")
var game = preload("res://Scenes/Map.tscn")
#var lose_screen =  preload("res://scenes/Settings.tscn")
#var win_screen =  preload("res://scenes/Settings.tscn")
func _ready() -> void:
	main.SceneSwitcher = self
func switch_scene(scene):
	get_child(0).queue_free()
	add_child(scene)
	move_child(scene, 0)
func to_explanation():
	switch_scene(explanation.instantiate())
func to_main_menu():
	switch_scene(main_menu.instantiate())
func start_game():
	switch_scene(game.instantiate())
