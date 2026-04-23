extends AnimatableBody2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _ready() -> void:
	GameManager.mountain.connect(_on_mountain2_signal)
	
func _on_mountain2_signal() -> void:
	animation_player.play("move_moun_left")
