extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var thisimage = Image.new()

var rng = RandomNumberGenerator.new()


var shape_dict = {
	0: "res://Assets/Sprites/PlaceHolders/Circle.png",
	1: "",
	2: "",
	3: "",
	4: "res://Assets/Sprites/PlaceHolders/Triangle.png",
	5: "",
	6: "res://Assets/Sprites/PlaceHolders/Diamond.png",
	7: "",
	8: "res://Assets/Sprites/PlaceHolders/Square.png",
	9: "",
	10: "",
	11: "" 
}


func _ready():
	rng.randomize()
	var my_random_number = rng.randi_range(0, 11)
	var Generated_shape = shape_dict[my_random_number]
	self.texture = load(Generated_shape)
	print(Generated_shape)

	
	
	


