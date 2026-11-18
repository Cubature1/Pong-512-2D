extends Node

var ball_position

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.speed = Global.base_speed # Reset speed
	$PlayerPaddle.set_position($PlayerStartPosition.get_position())
	$CPUPaddle.set_position($CPUStartPosition.get_position())
	$Ball.set_position($BallStartPosition.get_position())

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
