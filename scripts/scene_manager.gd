extends Node

var scenes : Dictionary = {"level_1": "res://scenes/level_1.tscn",
							"level_2": "res://scenes/level_2.tscn",
							"secret_level": "res://scenes/secret_level.tscn",}

func transition_to_scene(level : String):
	var scene_path : String =  scenes.get(level)
	
	if scene_path != null:
		await get_tree().create_timer(1.0).timeout
		get_tree().change_scene_to_file(scene_path)
