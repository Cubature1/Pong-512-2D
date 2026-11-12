extends Area2D

@export var speed = 6
var screen_size 

var paddle_height = Global.paddle_height
var paddle_width = Global.paddle_width

@onready var ball = $"../Ball"
var ball_position

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	screen_size = get_viewport_rect().size
	# hide()
	# $CollisionShape2D.disabled = false

# CPUPaddle is interfering with WorldBoundary2d collisions

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta) -> void:
	ball_position = ball.get_position()
	var velocity = Vector2.ZERO
	global_position.y = global_position.lerp(ball.global_position, delta * speed).y
	velocity = velocity * speed
	position += velocity * delta
	position = position.clamp(Vector2(paddle_width,paddle_height), screen_size - Vector2(paddle_width,paddle_height))


func _on_area_entered(area: Area2D) -> void:
	pass
