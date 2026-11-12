extends Node

#region Variables
var paddle_height = 88
var paddle_width = 16

var player_score
var cpu_score
#endregion

#region Functions
# randint is not in use but I am keeping it just in case.
func randint(min: int, max: int) -> int: # Returns a value between min and max, inclusive. 
	return (randi() % max + 1) + min

func scene(target): # Scene change function
	var scene_path
	if "res://scenes/" not in target: # Convenience
		scene_path = "res://scenes/" + target
	if ".tscn" not in scene_path: # Convenience
		scene_path += ".tscn"
	await get_tree().process_frame # Wait for collision
	get_tree().change_scene_to_file(scene_path)
#endregion
