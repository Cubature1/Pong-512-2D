extends Node

var paddle_height = 88
var paddle_width = 16

var player_score
var cpu_score


func scene(target): # Scene change function
	var scene_path
	if "res://scenes/" not in target: # Convenience
		scene_path = "res://scenes/" + target
	if ".tscn" not in scene_path: # Convenience
		scene_path += ".tscn"
	await get_tree().process_frame # Wait for collision
	get_tree().change_scene_to_file(scene_path)
