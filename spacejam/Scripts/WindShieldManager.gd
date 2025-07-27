extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
var damage = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if(get_node("/root/Node2D/ShieldBar").ShieldActive == true):
		get_node("/root/Node2D/ShipWindShield/SeeTexture/Shield").visible = true
	else:
		get_node("/root/Node2D/ShipWindShield/SeeTexture/Shield").visible = false
func takeDamage():
	if damage == 4:
		print("death")
	else:
		$SeeTexture.frame+=1
	
