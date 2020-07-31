extends KinematicBody

var velocity = Vector3(0,0,0)
const SPEED = 15
const ROTSPEED = PI/15

func _ready():
	pass

func _physics_process(delta):
	
	if Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
		$MeshInstance.rotate_z(-ROTSPEED)
		
	if Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
		$MeshInstance.rotate_z(ROTSPEED)
		
	if Input.is_action_pressed("ui_up"):
		velocity.z = -SPEED
		$MeshInstance.rotate_x(-ROTSPEED)
		
	if Input.is_action_pressed("ui_down"):
		velocity.z = SPEED
		$MeshInstance.rotate_x(ROTSPEED)
	
	
	
	move_and_slide(velocity)
	velocity = lerp(velocity, Vector3(0,0,0), 0.1)
