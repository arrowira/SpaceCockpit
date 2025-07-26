extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	if(get_node("/root/Node2D/ShieldBar").Shield == true):
		get_node("/root/Node2D/ShieldBar").Shield = false
	else:
		get_node("/root/Node2D/ShieldBar").Shield = true
		get_node("/root/Node2D/ShieldBar").ShieldOn()
