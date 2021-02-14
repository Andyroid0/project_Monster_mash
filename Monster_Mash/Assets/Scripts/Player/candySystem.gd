extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var candy_timer = Timer.new()
	candy_timer.set_wait_time(2.5)
	self.add_child(candy_timer)
	candy_timer.start()
	yield(candy_timer, "timeout")
	queue_free()

func _physics_process(delta):
	set_contact_monitor(true)
	var bodies = get_colliding_bodies()
	for body in bodies:
		if body.name == "house_poly":
			print("turd")
			self.queue_free()
		if body.name == "house_wall":
			print("butt")
			self.queue_free()
