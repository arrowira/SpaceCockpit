extends Sprite2D

var scrap := preload("res://Scenes/Scrap.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func PrintScrap():
	var instance = scrap.instantiate()
	instance.position.y += 5
	add_child(instance)
	pass
