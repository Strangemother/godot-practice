# Controller.gd

extends Object
 
class Thumb:
	var horiz := 0.0
	var vert := 0.0


class Power:
	var left := 0.0
	var right := 0.0

var power: Power
var thumb: Thumb
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _init():
	power = Power.new()
	thumb = Thumb.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
	
func update_inputs():
	var r_stick = Input.get_action_strength("joypad_right_trigger")
	var l_stick = Input.get_action_strength("joypad_left_trigger")
	var l_thumb_l = Input.get_action_strength("left_thumb_left")
	var l_thumb_r = Input.get_action_strength("left_thumb_right")
	var l_thumb_u = Input.get_action_strength("left_thumb_up")
	var l_thumb_d = Input.get_action_strength("left_thumb_down")
	
	thumb.horiz = -l_thumb_l + l_thumb_r
	thumb.vert = l_thumb_u + -l_thumb_d
	#print(thumb.horiz,', ', thumb.vert)
	power.left = l_stick
	power.right = r_stick
