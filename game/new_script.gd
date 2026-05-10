extends Node

func _ready() -> void:
	print("Dialogic version: ", Dialogic.get_version())
	print("Starting timeline...")
	var result = Dialogic.start("res://timeline.dtl")
	print("Result: ", result)
	if result:
		print("Node class: ", result.get_class())
		add_child(result)
	else:
		print("Dialogic returned null!")
