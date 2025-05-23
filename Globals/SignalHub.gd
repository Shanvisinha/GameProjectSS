extends Node


signal on_pickup_collected
signal on_show_exit
signal on_exit
signal on_player_died




func emit_on_player_died() -> void:
	on_player_died.emit()


func emit_on_exit() -> void:
	on_exit.emit()


func emit_on_pickup_collected() -> void:
	on_pickup_collected.emit()


func emit_on_show_exit() -> void:
	on_show_exit.emit()
