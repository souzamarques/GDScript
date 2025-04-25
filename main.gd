extends Node

func _ready():
	var item = ["Potion", 3, 6]
	var shields: Array[String] = ["Leather Shield", "Wooden Shield", "Iron Shield", "Bronze Shield"] # Array with specified type
	print(item[0])
	print(shields)
	
	shields.remove_at(3)
	shields.append("Dwarven Shield")
	print("Shields: " + str(shields))

	for i in item:
		print(i)
		
	var glass := 0.0
	while glass < 0.5:
		glass += randf_range(0.1, 0.2)
		print(glass)
