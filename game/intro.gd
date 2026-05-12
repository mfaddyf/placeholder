extends Node

func _ready() -> void:
	var dialogic = Dialogic.start("res://timeline.dtl")
	add_child(dialogic)
	Dialogic.timeline_ended.connect(_on_timeline_ended)

func _on_timeline_ended() -> void:
	GameManager.player_name = Dialogic.VAR.PlayerName
	GameManager.prn_subject = Dialogic.VAR.PlayerPrnSubject
	GameManager.prn_object = Dialogic.VAR.PlayerPrnObject
	GameManager.prn_possessive = Dialogic.VAR.PlayerPrnPossessive
	
	print("Saved: ", GameManager.player_name, " ", GameManager.prn_subject)
