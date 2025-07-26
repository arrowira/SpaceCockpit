extends Node2D


var pulsing = false

func _ready() -> void:
	pulse()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if pulsing:
		$Sprite2D.modulate.a = $Timer.time_left
	
func pulse() -> void:
	pulsing = true
	$Timer.start()
func _on_timer_timeout() -> void:
	pulsing = false
