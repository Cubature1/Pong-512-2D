extends Area2D


var screen_size 

var paddle_height = Global.paddle_height
var paddle_width = Global.paddle_width
var speed = Global.speed

@onready var ball = $"../Ball"
var ball_position

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	screen_size = get_viewport_rect().size
	# self.queue_free()
	# hide()
	# $CPUCollision.disabled = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var velocity: Vector2 = Vector2.ZERO
	speed = Global.speed * .5
	ball_position = ball.get_position()
	if ball_position.y > position.y:
		velocity.y += 1
	elif ball_position.y < position.y:
		velocity.y -= 1
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	position += velocity * delta
	position = position.clamp(Vector2(paddle_width,paddle_height), screen_size - Vector2(paddle_width,paddle_height))
