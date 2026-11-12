extends Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#SignalBus.score_changed.connect(_on_score_changed)
	text = str(Global.player_score)

#func _on_score_changed():
	#text = str(Global.player_score)
	#print("Score updated!")
