extends RigidBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var movement = Vector3(0,0,0)

onready var controller: Controller# = preload("Controller.gd")
const Controller = preload("Controller.gd")
# Called when the node enters the scene tree for the first time.
func _ready():
	controller = Controller.new()

func _input(event):
	#print('input')
	controller.update_inputs()

onready var engine1 = get_node("engine")
onready var engine2 = get_node("engine3")
onready var r_axis = get_node("resultant")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#var forward_dir = global_transform.basis.y.cross(movement)
	engine1.power = controller.power.left
	engine2.power = controller.power.right
	move_resultant()

func _integrate_forces(state):
	pass

func move_resultant():
	var ev = movement# forward_dir.cross(movement)
	var _resultant = engine1.get_node("force_point").rotation + engine2.get_node("force_point").rotation
	rotate(Vector3.UP, .005)
	r_axis.orthonormalize()
	r_axis.rotation = -_resultant
	#movement = movement.cross(ev)
	#print(ev)
	#add_force(movement, Vector3(0,0,0))
	#add_force(ev, Vector3(0,0,0))
