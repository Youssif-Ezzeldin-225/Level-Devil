extends AnimatableBody2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var collision_shape_2d: CollisionShape2D = $Killzone/CollisionShape2D

func _ready() -> void:
	collision_shape_2d.disabled=true
	GameManager.knight.connect(_on_knight_signal)
	
func _on_knight_signal() ->void:
	_knightkil()
	
func _knightkil():
	animated_sprite_2d.play("swordup")
	await get_tree().create_timer(0.35).timeout
	collision_shape_2d.disabled=false
	await get_tree().create_timer(1).timeout
	collision_shape_2d.disabled=true
	animated_sprite_2d.play("sworddown")
	
