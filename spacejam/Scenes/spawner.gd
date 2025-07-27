extends Node2D

var debris := preload("res://Scenes/smallRadarItem.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$spawnCoolDown.start()
	
var spawnLength = 600

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

var debrisSpawnAngle = 40
func _on_spawn_cool_down_timeout() -> void:
	$spawnCoolDown.start()
	var angle = deg_to_rad((randf_range(-1,1)*debrisSpawnAngle)-180)
	print(angle)
	var newDebris = debris.instantiate()
	newDebris.position = Vector2(sin(angle)*spawnLength,cos(angle)*spawnLength)
	get_parent().get_node("background").add_child(newDebris)
