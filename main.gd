extends Node

func _ready():
	var enemy_dict = {
		"Wild Dog": 1, 
		"Wolf": 3,
		"Bandit": 5, 
		"Orc": 10,
		"Troll": 15, 
		"Cursed Ghost": 20,
		"Witch": 25,
		"Fallen Warrior": 30,
		"Dark Mage": 35,
		"Death Knight": 40, 
		"Boss": 55,
	}
	
	print("Fallen Warrior level: " + str(enemy_dict["Fallen Warrior"]))
	
	enemy_dict["Demon King"] = 70
	enemy_dict["Final Boss"] = 90
	
	for i in enemy_dict:
		print("Character: " + i + ". Level: " + str(enemy_dict[i]))
	
	# dictionaries inside another dictionary
	var party_dict = {
		"Hero":		{"Level": 1, "Health": 20},
		"Warrior":	{"Level": 1, "Health": 25},
		"Cleric":	{"Level": 1, "Health": 15},
		"Mage":		{"Level": 1, "Health": 10},
	}
	print("Cleric health: " + str(party_dict["Cleric"]["Health"]))
