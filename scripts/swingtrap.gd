extends AnimatableBody2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var killzone_shape: CollisionShape2D = $Killzone/killzone_shape

func _ready() -> void:
	killzone_shape.disabled = true
	GameManager.swingtrap.connect(_on_swingtrap_signal)

func _on_swingtrap_signal() ->void:
	print("The saw got you")
	_perform_kill()

func _perform_kill() -> void:
	animated_sprite_2d.play("kill")
	await  get_tree().create_timer(0.8).timeout
	
	killzone_shape.disabled = false
	print("The axe will kill you")
	
	await get_tree().create_timer(1).timeout
	
	killzone_shape.disabled=true
	print("The axe will go")
	animated_sprite_2d.play("return")
