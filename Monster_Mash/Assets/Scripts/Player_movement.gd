extends KinematicBody2D



var candy = preload("res://Assets/Scenes/Candy_test.tscn")


 
#const DIRECTIONS = [Vector2.UP, Vector2.DOWN, Vector2.LEFT, Vector2.RIGHT]
#const ARROW_KEYS = ["Shoot_up", "Shoot_down", "Shoot_left", "Shoot_right"]						
 # Pixels/second.
#func fire(i):
#	var MOTION_SPEED = 400
#	var candy_shot = Vector2()
#	var candy_start = get_node(".").position
#	var candy_instance = candy.instance()
#	candy_instance.position = candy_start
#	get_parent().get_parent().add_child(candy_instance)
#	#candy_instance.velocity = DIRECTIONS[i] * MOTION_SPEED
#	candy_shot = DIRECTIONS[i] * 1 * MOTION_SPEED
#	move_and_slide(candy_shot)
	
	#motion.x = min(motion.x+ACCELERATION, MAX_SPEED)
	

		
	
func _physics_process(delta):
	

	
	
	
	var velocity = Vector2.ZERO
	var candystartingplace = Vector2(10,10)
	

	
	if Input.is_action_just_released("Shoot_up"):
		
		var MOTION_SPEED = 400
		var candy_shot = Vector2()
		var candy_start = candystartingplace
		var candy_instance = candy.instance()
		candy_instance.position = candy_start
		get_parent().get_parent().add_child(candy_instance)
		candy_shot.y = candy_shot.y + 20 
		#move_and_slide(candy_shot)
		
		
		
	if Input.is_action_just_released("Shoot_down"):
		var MOTION_SPEED = 400
		var candy_shot = Vector2()
		var candy_start = candystartingplace
		var candy_instance = candy.instance()
		candy_instance.position = candy_start
		get_parent().get_parent().add_child(candy_instance)
		candy_shot.y = 1 * MOTION_SPEED
		move_and_slide(candy_shot)
		
		
	if Input.is_action_just_released("Shoot_left"):
		var MOTION_SPEED = 400
		var candy_shot = Vector2()
		var candy_start = candystartingplace
		var candy_instance = candy.instance()
		candy_instance.position = candy_start
		get_parent().get_parent().add_child(candy_instance)
		candy_shot.x = -1 * MOTION_SPEED
		move_and_slide(candy_shot)
		
		
	if Input.is_action_just_released("Shoot_right"):
		var MOTION_SPEED = 400
		var candy_shot = Vector2()
		var candy_start = candystartingplace
		var candy_instance = candy.instance()
		candy_instance.position = candy_start
		get_parent().get_parent().add_child(candy_instance)
		candy_shot.x = 1 * MOTION_SPEED

		
			
	var MOTION_SPEED = 400
	var motion = Vector2()			
	motion.x = Input.get_action_strength("Move_right") - Input.get_action_strength("Move_left")
	motion.y = Input.get_action_strength("Move_down") - Input.get_action_strength("Move_up")
	motion.y *= 0.5
	motion = motion.normalized() * MOTION_SPEED
	#warning-ignore:return_value_discarded
	move_and_slide(motion)

