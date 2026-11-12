extends MarginContainer

@export var margin_value = 64

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_theme_constant_override("margin_top", margin_value)
	add_theme_constant_override("margin_left", margin_value)
	add_theme_constant_override("margin_bottom", margin_value)
	add_theme_constant_override("margin_right", margin_value)
