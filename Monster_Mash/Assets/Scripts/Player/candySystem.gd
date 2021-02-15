extends RigidBody2D


func _ready():
	
	var candy_timer = Timer.new()
	candy_timer.set_wait_time(2.5)
	self.add_child(candy_timer)
	candy_timer.start()
	yield(candy_timer, "timeout")
	queue_free()

