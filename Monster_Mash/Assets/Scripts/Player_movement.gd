extends KinematicBody2D




const MOTION_SPEED = 400 # Pixels/second.

func _physics_process(_delta):
	var motion = Vector2()
	motion.x = Input.get_action_strength("Move_right") - Input.get_action_strength("Move_left")
	motion.y = Input.get_action_strength("Move_down") - Input.get_action_strength("Move_up")
	motion.y *= 0.5
	motion = motion.normalized() * MOTION_SPEED
	#warning-ignore:return_value_discarded
	move_and_slide(motion)

