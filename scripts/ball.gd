extends Area2D

@export var speed = 600
var screen_size

var bounce = false
var velocity = Vector2.ZERO
var coin
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	screen_size = get_viewport_rect().size
	coin = randi() % 2
	if coin == 0:
		velocity.x = 1.
	else:
		velocity.x = -1.
	#velocity.y = (randf() - 0.5) / 2
	velocity.y = 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	position += velocity * delta
	position = position.clamp(Vector2(9,9), screen_size - Vector2(9,9))


func _on_vertical_bound_hit(area: Area2D) -> void:
	velocity = velocity * Vector2(1,-1)

func _on_player_paddle_hit(area: Area2D) -> void:
	velocity = velocity * Vector2(-1,1)

func _on_cpu_paddle_hit(area: Area2D) -> void:
	velocity = velocity * Vector2(-1,1)
