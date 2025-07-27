extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
func _physics_process(delta: float) -> void:
	rotate(deg_to_rad(2))

func _on_area_shape_entered(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	if area.name == "radarItemS":
		area.get_parent().pulse()
