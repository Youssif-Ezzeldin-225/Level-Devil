extends Area2D



func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		print("You should have fallen in the hole")
		GameManager.hole.emit()
