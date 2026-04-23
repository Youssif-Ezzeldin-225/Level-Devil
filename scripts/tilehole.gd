extends TileMapLayer

func _ready() -> void:
	GameManager.hole.connect(disappear)
	
func disappear() -> void:
	queue_free() 
