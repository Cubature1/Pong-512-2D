extends Node


#region Variables
## Paddle height in pixels (relative)
var paddle_height: int = 88
## Paddle width in pixels (relative)
var paddle_width: int = 16
## Paddle speed
var paddle_speed: int = 400 # Base velocity

var player_score: int
var cpu_score: int
#endregion


#region Functions
# randint is not in use but I am keeping it just in case.
## Returns a value between min and max, inclusive.
func randint(min: int, max: int) -> int:  
	return (randi() % (max + 1)) + min

func scene(target): # Scene change function
	var scene_path
	if "res://scenes/" not in target: # Convenience
		scene_path = "res://scenes/" + target
	if ".tscn" not in scene_path: # Convenience
		scene_path += ".tscn"
	await get_tree().process_frame # Wait for collision
	get_tree().change_scene_to_file(scene_path)
#endregion
