extends Area2D


var speed = Global.speed

var screen_size: Vector2
var bounce: bool = false # To be removed
var velocity: Vector2 = Vector2.ZERO

func coinflip(): # Returns 1 or -1, to determine the ball's initial velocity.
	var coin = randi() % 2
	if coin:
		return 1
	else:
		return -1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	speed = Global.speed
	screen_size = get_viewport_rect().size
	velocity = Vector2(coinflip(),coinflip()) # Calculate starting velocity, 1 or -1 on either axis. 
	# print("Ball velocity is", velocity) # Debug


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	position += velocity * delta
	position = position.clamp(Vector2(9,9), screen_size - Vector2(9,9))


func _on_vertical_bound_hit(area: Area2D) -> void:
	velocity = velocity * Vector2(1,-1) # Change heading
	Global.speed *= 1.1

func _on_player_paddle_hit(area: Area2D) -> void:
	velocity = velocity * Vector2(-1,1) # Change heading
	Global.speed *= 1.1

func _on_cpu_paddle_hit(area: Area2D) -> void:
	velocity = velocity * Vector2(-1,1) # Change heading
	Global.speed *= 1.1
