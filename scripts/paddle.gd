extends Area2D

@export var speed = 400
@export var mousecontrol = false
var screen_size

var paddle_height = Global.paddle_height
var paddle_width = Global.paddle_width


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	screen_size = get_viewport_rect().size
	# hide()
	# $CollisionShape2D.disabled = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta) -> void:
	if not mousecontrol:
		var velocity = Vector2.ZERO
		if Input.is_action_pressed("move_up"):
			velocity.y -= 1
		if Input.is_action_pressed("move_down"):
			velocity.y += 1
			
		if velocity.length() > 0:
			velocity = velocity.normalized() * speed
		position += velocity * delta
	
	elif mousecontrol:
		var global_mouse_pos = get_global_mouse_position()
		position = Vector2(position.x, global_mouse_pos.y)
	position = position.clamp(Vector2(paddle_width,paddle_height), screen_size - Vector2(paddle_width,paddle_height))


func _on_area_entered(area: Area2D) -> void:
	pass
