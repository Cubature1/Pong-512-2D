extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _on_area_entered(area: Area2D) -> void:
	print("Hit! Player Score: ", Global.player_score)
#	SignalBus.score_changed.emit()
	Global.player_score += 1
	Global.scene("game")
