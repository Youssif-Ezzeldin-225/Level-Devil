extends AnimatableBody2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer

   

func _on_switcharea_body_entered(body: Node2D) -> void:
		if body is Player:
			print("The moving platform is moving")
			GameManager.gate.emit()
			animated_sprite_2d.play("on")
			animation_player.play("movecoll")
