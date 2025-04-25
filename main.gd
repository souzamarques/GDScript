extends Node

enum Alignment { ALLY, NEUTRAL, ENEMY } # enum has default values for the constants, but it is possible to set values. For example: enum Alignment { ALLY = 1, NEUTRAL = 2, ENEMY = 3 }
enum Destruction_Spells { FIRE, FROST, THUNDER }
enum Illusion_Spells { FURY, PACIFY, FEAR, MUFFLE, INVISIBILITY}
# Godot is creating a constant for each state in the enum. As in the code below for example:
# const ALLY = 0
# const NEUTRAL = 1
# const ENEMY = 2 /// This code is completely identical to the thrid and fourth lines

var unit_alignment = Alignment.ALLY
@export var mage_spells : Destruction_Spells
@export var mage_illusion : Illusion_Spells

func _ready():
	if unit_alignment == Alignment.ENEMY:
		print("You are not welcome here!")
	else:
		print("Welcome!")
		
	if mage_spells == Destruction_Spells.FIRE:
		print("You are a skilled practitioner of fire magic.")
	elif mage_spells == Destruction_Spells.FROST:
		print("You are a skilled practitioner of frost magic.")
	else:
		print("You are a skilled practitioner of thunder magic.")
		
	match mage_illusion:
		Illusion_Spells.FURY:
			print("You have cast a Fury Spell")
		Illusion_Spells.PACIFY:
			print("You have cast a Pacify Spell")
		Illusion_Spells.FEAR:
			print("You have cast a Fear Spell")
		Illusion_Spells.MUFFLE:
			print("You have cast a Muffle Spell")
		Illusion_Spells.INVISIBILITY:
			print("You have cast an invisibility spell")
		_:
			print("You don't have enough mana")
