extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var thisimage = Image.new()

var rng = RandomNumberGenerator.new()


var shape_dict = {
	0: "res://Assets/Sprites/PlaceHolders/Circle.png",
	1: "res://Assets/Sprites/PlaceHolders/Triangle.png",
	2: "res://Assets/Sprites/PlaceHolders/Diamond.png",
	3: "res://Assets/Sprites/PlaceHolders/Square.png"

}


func _ready():
	rng.randomize()
	var my_random_number = rng.randi_range(0, 3)
	var Generated_shape = shape_dict[my_random_number]
	self.texture = load(Generated_shape)
	print(Generated_shape)

	
	
	


