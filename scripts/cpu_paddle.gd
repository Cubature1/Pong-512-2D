extends Area2D

@export var speed = 5
var screen_size 

var paddle_height = Global.paddle_height
var paddle_width = Global.paddle_width

@onready var ball = $"../Ball"
var ball_position

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	screen_size = get_viewport_rect().size
	# self.queue_free()
	# hide()
	# $CPUCollision.disabled = true

# CPUPaddle is interfering with WorldBoundary2d collisions (Resolved?)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	ball_position = ball.get_position()
	# var velocity = Vector2.ZERO # Probably unnecessary
	# global_position.y = global_position.lerp(ball.global_position, (delta * speed) * pow(ball.global_position.x / 1280, 0.152003)).y
	# global_position.y = global_position.lerp(ball.global_position, (delta * speed) * pow(ball_position.x / 1280, 0.152003)).y
	# global_position.y = ball.global_position.y
	position.y = position.lerp(ball_position, (delta * speed) * pow(ball.global_position.x / 1280, 0.152003)).y
	# velocity = velocity * speed # Probably unnecessary
	# position += velocity * delta # Probably unnecessary
	position = position.clamp(Vector2(paddle_width,paddle_height), screen_size - Vector2(paddle_width,paddle_height))
