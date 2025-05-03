extends Node
class_name Character

class Equipement:
	var armor := 10
	var weight := 5

@export var profession : String
@export var health : int

var chest := Equipement.new() # creating an Instance of the Equipment class
var legs := Equipement.new()

func _ready():
	chest.armor = 20
	legs.weight = 15
	print(chest.armor)
	print(legs.weight)

func die():
	health = 0
	print(profession + " died.")
