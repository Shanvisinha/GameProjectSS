extends CharacterBody2D


class_name Player


const SPEED: float = 170.0
const GROUP_NAME: String = "player"


# Called when the node enters the scene tree for the first time.
func _enter_tree() -> void:
	add_to_group(GROUP_NAME)



func get_input() -> Vector2:
	var nv: Vector2 = Vector2.ZERO
	nv.x = Input.get_axis("left", "right")
	nv.y = Input.get_axis("up", "down")
	return nv.normalized()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	velocity = get_input() * SPEED
	rotation = velocity.angle()
	move_and_slide()
	
	
	
