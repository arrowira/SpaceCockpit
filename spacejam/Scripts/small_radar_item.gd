extends Node2D


var pulsing = false

func _process(delta: float) -> void:
	if pulsing:
		$Sprite2D.modulate.a = $Timer.time_left
func _physics_process(delta: float) -> void:
	position.y+=1
	
func pulse() -> void:
	pulsing = true
	$Timer.start()
func _on_timer_timeout() -> void:
	pulsing = false
