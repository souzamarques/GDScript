extends Node

@onready var weapon: Node = $Player/Weapon
@export var node_enemy : Node # assigning reference to node Enemy
@export var player_graphics : Sprite2D # can only accept Sprites nodes

func _ready():
	if weapon is Node:
		print("Node")
