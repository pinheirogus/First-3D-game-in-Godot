extends KinematicBody

var velocity = Vector3(0,0,0)
const SPEED = 15
func _ready():
	pass

func _physics_process(delta):
	
	if Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
		
	if Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
		
	if Input.is_action_pressed("ui_up"):
		velocity.z = -SPEED
		
	if Input.is_action_pressed("ui_down"):
		velocity.z = SPEED
	
	
	
	move_and_slide(velocity)
	velocity = lerp(velocity, Vector3(0,0,0), 0.1)
