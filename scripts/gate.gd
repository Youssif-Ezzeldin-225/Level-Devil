extends StaticBody2D
@export var new_loc: Vector2
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _ready() -> void:
	GameManager.gate.connect(_on_switch_turned_on)
	
func _on_switch_turned_on():
	animation_player.play("open")
	print("The gate is opened")
	

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is Player:
		print("You are not here after now")
		body.global_position = new_loc
		await get_tree().create_timer(5).timeout
