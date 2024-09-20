extends RigidBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_walls_body_entered(body):
	print(body)
	pass # Replace with function body.


func _on_balance_bar_wedge_body_entered(body):
	print(body)
	pass # Replace with function body.
