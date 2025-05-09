extends Node


const MAIN = preload("res://Scenes/Main/Main.tscn")
const LEVEL = preload("res://Scenes/Level/Level.tscn")


func load_main_scene():
	get_tree().change_scene_to_packed(MAIN)


func load_level_scene():
	get_tree().change_scene_to_packed(LEVEL)
