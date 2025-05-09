extends CharacterBody2D

@onready var nav_agent: NavigationAgent2D = $NavAgent
@onready var debug_label: Label = $DebugLabel
 
func _unhandled_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("set_target"):
		nav_agent.target_position = get_global_mouse_position()
# Called when the node enters the scene tree for the first time
func _ready() -> void:
	pass # Replace with function body.


# Called every frame
func _physics_process(delta: float) -> void:
	pass
