extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidDynamicBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(_delta):
	var speed = 400
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	velocity = Vector2()
	
	if (Input.is_action_pressed("w")): # w
		velocity.y -= 1
	elif (Input.is_action_pressed("a")): # a
		velocity.x -= 1
	elif (Input.is_action_pressed("s")): # s
		velocity.y += 1
	elif (Input.is_action_pressed("d")): # d
		velocity.x += 1
		
	velocity = velocity.normalized() * speed
	move_and_slide()
		
	
