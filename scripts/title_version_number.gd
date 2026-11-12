extends Label

var version = ProjectSettings.get_setting('application/config/version')

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	text = "v. " + version
