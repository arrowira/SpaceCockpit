extends Node2D
var ShieldCharge = 99
var Shield = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if(ShieldCharge > 66 && !has_node("Charge3")):
		var sprite = Sprite2D.new()
		sprite.texture = load("res://Sprites/ShieldBar3.png")
		sprite.scale.x = 3
		sprite.scale.y = 3
		sprite.texture_filter = sprite.TEXTURE_FILTER_NEAREST
		sprite.name = "Charge3"
		add_child(sprite)
		if(has_node("Charge2")):
			get_node("Charge2").queue_free()
		if(has_node("Charge1")):
			get_node("Charge1").queue_free()
		if(has_node("Charge0")):
			get_node("Charge0").queue_free()
			
	if(ShieldCharge > 33 && ShieldCharge < 66 && !has_node("Charge2")):
		var sprite = Sprite2D.new()
		sprite.texture = load("res://Sprites/ShieldBar2.png")
		sprite.scale.x = 3
		sprite.scale.y = 3
		sprite.texture_filter = sprite.TEXTURE_FILTER_NEAREST
		sprite.name = "Charge2"
		add_child(sprite)
		if(has_node("Charge3")):
			get_node("Charge3").queue_free()
		if(has_node("Charge1")):
			get_node("Charge1").queue_free()
		if(has_node("Charge0")):
			get_node("Charge0").queue_free()
	if(ShieldCharge > 3 && ShieldCharge < 33 && !has_node("Charge1")):
		var sprite = Sprite2D.new()
		sprite.texture = load("res://Sprites/ShieldBar1.png")
		sprite.scale.x = 3
		sprite.scale.y = 3
		sprite.texture_filter = sprite.TEXTURE_FILTER_NEAREST
		sprite.name = "Charge1"
		add_child(sprite)
		if(has_node("Charge3")):
			get_node("Charge3").queue_free()
		if(has_node("Charge2")):
			get_node("Charge2").queue_free()
		if(has_node("Charge0")):
			get_node("Charge0").queue_free()
	if(ShieldCharge >= 0 && ShieldCharge < 3 && !has_node("Charge0")):
		var sprite = Sprite2D.new()
		sprite.texture = load("res://Sprites/ShieldBar.png")
		sprite.scale.x = 3
		sprite.scale.y = 3
		sprite.texture_filter = sprite.TEXTURE_FILTER_NEAREST
		sprite.name = "Charge0"
		add_child(sprite)
		if(has_node("Charge3")):
			get_node("Charge3").queue_free()
		if(has_node("Charge2")):
			get_node("Charge2").queue_free()
		if(has_node("Charge1")):
			get_node("Charge1").queue_free()
	pass

func ShieldOn():
	if(Shield == false):
		return
	ShieldCharge -=1
	await get_tree().create_timer(0.1).timeout
	if(ShieldCharge > 0):
		ShieldOn()
