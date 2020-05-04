extends Position3D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const SPEED := 3

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#transform.basis.y *= SPEED
	rotate(Vector3(0, 0, 1), 0.01)
	rotate(Vector3(0, 1, 0), 0)

	#orthonormalize()
	#translate_object_local(-transform.basis.z)
#	rotation.y += .004
#	rotation.x += .001
#	rotation.z += .002
