extends KinematicBody2D



var candy = preload("res://Assets/Scenes/Candy.tscn")


 
const DIRECTIONS = [Vector2.UP, Vector2.DOWN, Vector2.LEFT, Vector2.RIGHT]
const ARROW_KEYS = ["Shoot_up", "Shoot_down", "Shoot_left", "Shoot_right"]						
 # Pixels/second.

func _physics_process(_delta):
	var MOTION_SPEED = 400
	var motion = Vector2()
	for i in range(4):
		if Input.is_action_just_pressed(ARROW_KEYS[i]):
			var candy_start = get_node(".").position
			var candy_instance = candy.instance()
			candy_instance.position = candy_start
			get_parent().get_parent().add_child(candy_instance)
			#candy_instance.velocity = DIRECTIONS[i] * MOTION_SPEED
			candy_instance = DIRECTIONS[i] * MOTION_SPEED
			move_and_slide(candy_instance)
	
	motion.x = Input.get_action_strength("Move_right") - Input.get_action_strength("Move_left")
	motion.y = Input.get_action_strength("Move_down") - Input.get_action_strength("Move_up")
	motion.y *= 0.5
	motion = motion.normalized() * MOTION_SPEED
	#warning-ignore:return_value_discarded
	move_and_slide(motion)

