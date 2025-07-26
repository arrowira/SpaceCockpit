extends Node2D

var angle = 0.0
var radius = 100
var speed = 2.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	angle +=speed * delta
	var center = global_position
	var offset = Vector2(cos(angle), sin(angle)) * radius
	get_node("/root/Node2D/Crank/CrankEnd").global_position = center + offset
	var dir = get_node("/root/Node2D/Crank/CrankEnd").global_position - get_node("/root/Node2D/Crank/CrankHandle").global_position
	get_node("/root/Node2D/Crank/CrankHandle").rotation = dir.angle() + deg_to_rad(90)
