extends Area2D


const BOOM = preload("res://Scenes/Boom/Boom.tscn")
const SPEED: float = 250.0


var _dir: Vector2 = Vector2.ZERO


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var p = get_tree().get_first_node_in_group(Player.GROUP_NAME)
	if !p: queue_free()
	else:
		_dir = global_position.direction_to(p.global_position) * SPEED
		look_at(p.global_position)


# Called every frame, here 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	global_position += _dir * delta


func make_boom() -> void:
	var b = BOOM.instantiate()
	b.global_position = global_position
	get_tree().current_scene.call_deferred("add_child", b)


func _on_body_entered(body: Node2D) -> void:
	make_boom()
	if body is Player:
		SignalHub.emit_on_player_died()
	queue_free()


func _on_screen_notifier_screen_exited() -> void:
	queue_free()
