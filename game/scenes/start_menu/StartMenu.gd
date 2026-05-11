extends Control


# called when the start button is pressed LOL
func _on_start_pressed():
	get_tree().change_scene_to_file("res://intro.tscn")

# quits the game 
func _on_quit_pressed():
	get_tree().quit()
