extends Control


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("space"):
		GameManager.load_level_scene()
