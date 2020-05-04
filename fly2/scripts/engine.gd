extends StaticBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var power = .5

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var axis = get_node_or_null("axis")
	if axis != null:
		axis.rotation = get_node("force_point").rotation
		var po = clamp(power, .1, 2)
		axis.get_node("y_arm").scale.z = po
		axis.get_node("z_arm").scale.y = po
		axis.get_node("x_arm").scale.x = po
