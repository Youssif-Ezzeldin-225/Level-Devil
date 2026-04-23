extends AnimatableBody2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var animation_player_2: AnimationPlayer = $"../Node2D6/AnimationPlayer2"



func _on_area_2d_2_body_entered(body: Node2D) -> void:
	animation_player.play("resize")



func _on_mount_trap_body_entered(body: Node2D) -> void:
	animation_player_2.play("new_animation")
