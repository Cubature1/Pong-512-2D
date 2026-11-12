extends Node

var ball_position

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	$PlayerPaddle.set_position($PlayerStartPosition.get_position())
	$CPUPaddle.set_position($CPUStartPosition.get_position())
	$Ball.set_position($BallStartPosition.get_position())

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#func _reset() -> void:
	#$PlayerPaddle.set_position($PlayerStartPosition.get_position())
	#$CPUPaddle.set_position($OpponentStartPosition.get_position())
	#$Ball.set_position($BallStartPosition.get_position())
