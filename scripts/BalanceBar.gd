extends RigidBody2D

var sensitivity = 0.01

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
# func _integrate_forces(state):
	# var new_rotation = clamp(self.transform.get_rotation(), -0.78, 0.78)
	# var new_transform = Transform2D(new_rotation, position)
	# state.transform = new_transform

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if (Input.is_action_pressed("leftarrow")):
		set_angular_velocity(self.angular_velocity - sensitivity)
	elif (Input.is_action_pressed("rightarrow")):
		set_angular_velocity(self.angular_velocity + sensitivity)
