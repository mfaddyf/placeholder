extends Node

var pause_menu_scene = preload("res://scenes/pause_menu/PauseMenu.tscn")
var pause_menu_instance = null

var player_name: String = ""
var prn_subject: String = ""
var prn_object: String = ""
var prn_possessive: String = ""

func _input(event):
	if event.is_action_pressed("ui_cancel"):
		toggle_pause()

func toggle_pause():
	if pause_menu_instance == null:
		pause_menu_instance = pause_menu_scene.instantiate()
		get_tree().root.add_child(pause_menu_instance)
		get_tree().paused = true
	else:
		pause_menu_instance.queue_free()
		pause_menu_instance = null
		get_tree().paused = false
