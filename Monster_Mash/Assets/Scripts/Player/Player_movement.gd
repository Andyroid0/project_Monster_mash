extends KinematicBody2D

func _physics_process(_delta):
	
	var MOTION_SPEED = 400
	var motion = Vector2()

	motion.x = Input.get_action_strength("Move_right") - Input.get_action_strength("Move_left")
	motion.y = Input.get_action_strength("Move_down") - Input.get_action_strength("Move_up")
	motion.y *= 0.5
	motion = motion.normalized() * MOTION_SPEED
	move_and_slide(motion)

