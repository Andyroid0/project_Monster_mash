extends Node


var bullet_scene = load("res://Scenes/Bullet.tscn")

onready var player = get_parent().get_parent().get_node("Player")


# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.set_wait_time(.6)
	$Timer.start()

# called every frame. 'delta' is the elapsed time since the previous frame 
func _process(delta):
	rotate(1 * delta)
	position.y += 4 * delta 

func spawn_bullets():
	var b1 = bullet_scene.instance()
	b1.position = self.position
	b1.dir = Vector2(player.position.x - self.position.x, player.position.y - self.position.y)


	get_parent().add_child(b1)

func timeout():
	spawn_bullets()