extends Button

func _on_pressed() -> void:
	Global.player_score = 0
	Global.cpu_score = 0
	Global.scene("game")
	
