extends Area2D
@onready var label_7: Label = $"../Label7"



func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		print("You win")
		label_7.visible=true
		
