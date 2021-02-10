extends KinematicBody2D



var candy = preload("res://Assets/Scenes/Candy.tscn")

func _process(delta):
	
	SkillLoop()


func SkillLoop(): 
	var shoot = Vector2()
	var CANDY_SPEED = 450
	if Input.get_action_strength("Shoot_right"):
		var candy_instance = candy.instance()
		get_parent().add_child(candy_instance)		
		shoot = shoot.normalized() * CANDY_SPEED
		
	if Input.get_action_strength("Shoot_left"):
		var candy_instance = candy.instance()
		get_parent().add_child(candy_instance)		
		shoot = shoot.normalized() * CANDY_SPEED
		
	if Input.get_action_strength("Shoot_down"):
		var candy_instance = candy.instance()
		get_parent().add_child(candy_instance)		
		shoot = shoot.normalized() * CANDY_SPEED
		
	if Input.is_action_just_pressed("Shoot_up"):
		var candy_instance = candy.instance()
		var candy_start = get_node(".").position
		candy_instance.position = candy_start
		get_parent().get_parent().add_child(candy_instance)			
		shoot.y = shoot.y * CANDY_SPEED
							

const MOTION_SPEED = 400 # Pixels/second.
 

func _physics_process(_delta):
	var motion = Vector2()
	
	motion.x = Input.get_action_strength("Move_right") - Input.get_action_strength("Move_left")
	motion.y = Input.get_action_strength("Move_down") - Input.get_action_strength("Move_up")
	#shoot.x = Input.get_action_strength("Shoot_right") - Input.get_action_strength("Shoot_left")
	#shoot.y = Input.get_action_strength("Shoot_down") - Input.get_action_strength("Shoot_up")
	motion.y *= 0.5
	motion = motion.normalized() * MOTION_SPEED
	#warning-ignore:return_value_discarded
	move_and_slide(motion)

