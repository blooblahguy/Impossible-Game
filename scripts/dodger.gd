extends RigidBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var size = 32
	var bottomLimit = 6
	var topLimit = 5
	if (Input.is_action_just_pressed("uparrow")): # up
		if (get_position().y > -(size * topLimit)):
			set_position(get_position() - Vector2(0, size))
	elif (Input.is_action_just_pressed("downarrow")): # down
		if (get_position().y < size * bottomLimit):
			set_position(get_position() + Vector2(0, size))
