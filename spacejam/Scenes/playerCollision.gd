extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_shape_entered(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	if area.name == "radarItemS":
		#damaged
		get_parent().get_parent().get_parent().get_node("ShipWindShield").takeDamage()
		area.get_parent().queue_free()
		print("you got hit!")
