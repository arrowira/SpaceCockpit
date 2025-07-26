extends Camera2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var pos = get_global_mouse_position()
	if(pos.x >= global_position.x + 450 && global_position.x <= 500):
		global_position.x += ((pos.x - (global_position.x + 450))*2+20) * delta
	if(pos.x <= global_position.x - 450 && global_position.x >= -500):
		global_position.x -= -((pos.x - (global_position.x - 450))*2-20) * delta
	if(pos.y >= global_position.y + 350 && global_position.y <= 300):
		global_position.y += ((pos.y - (global_position.x + 350))*2+20) * delta
	if(pos.y <= global_position.y - 350 && global_position.y >= -300):
		global_position.y -= -((pos.y - (global_position.x - 350))*2-20) * delta
