extends Polygon2D

var height = Global.paddle_height
var width = Global.paddle_width

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	polygon = PackedVector2Array([Vector2(-width,-height),Vector2(width,-height),Vector2(width,height),Vector2(-width,height)])


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
