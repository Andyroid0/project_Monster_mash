extends "res://Assets/Scripts/Player/Player_movement.gd"

var candy = preload("res://Assets/Scenes/Candy_rigidbody.tscn")
const CANDY_SPEED = 1000 
const DIRECTIONS = [Vector2.UP, Vector2.DOWN, Vector2.LEFT, Vector2.RIGHT]
const ARROW_KEYS = ["Shoot_up", "Shoot_down", "Shoot_left", "Shoot_right"]

func _process(_delta):
	for i in range(4):
		if Input.is_action_just_pressed(ARROW_KEYS[i]):
			var candy_instance = candy.instance()
			candy_instance.position = get_global_position() + DIRECTIONS[i] * 50
			get_parent().add_child(candy_instance)
			candy_instance.apply_impulse( Vector2(), DIRECTIONS[i] * CANDY_SPEED )
