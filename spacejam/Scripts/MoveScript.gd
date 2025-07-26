extends Area2D

var ChooseMeBeatrice = false
var LetsStartFromOneNoFromZero = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if(LetsStartFromOneNoFromZero == true):
		if(Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) && ChooseMeBeatrice == false):
			ChooseMeBeatrice = true
		else:
			ChooseMeBeatrice = false
	if(ChooseMeBeatrice == true):
		global_position = get_global_mouse_position()


func _on_mouse_entered() -> void:
	LetsStartFromOneNoFromZero = true
func _on_mouse_exited() -> void:
	LetsStartFromOneNoFromZero = false
