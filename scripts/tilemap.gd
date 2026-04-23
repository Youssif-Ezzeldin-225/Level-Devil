extends TileMapLayer

func _ready() -> void:
	GameManager.trap2.connect(destroy)


func destroy() -> void:
	queue_free()
