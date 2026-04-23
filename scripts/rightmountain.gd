extends AnimatableBody2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _ready() -> void:
	GameManager.mountain.connect(_on_mountain_signal)
	
func _on_mountain_signal() ->void:
	animation_player.play("move_moun_right")
	
