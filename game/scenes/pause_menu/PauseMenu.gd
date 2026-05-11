extends CanvasLayer

func _on_resume_pressed():
	GameManager.toggle_pause()
	
func _on_quit_pressed():
	GameManager.toggle_pause()
	Dialogic.end_timeline()
	get_tree().change_scene_to_file("res://scenes/start_menu/StartMenu.tscn")
