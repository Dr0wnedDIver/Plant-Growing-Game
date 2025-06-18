extends StaticBody2D


func _ready() -> void:
	hide()

#var field_scene: PackedScene = load("res://Scenes/Field_Object.tscn")
#var newCharacterPosition: Vector2 
#var newCharacterDirection: Vector2 
#
#
#func _on_character_player_position(CharacterPosition: Variant):
	#newCharacterPosition = CharacterPosition
#
#func _on_character_character_direction(CharacterDirection: Variant):
	#newCharacterDirection = CharacterDirection
#
#func _place_Field(PositionOfCharacter, DirectonOfCharacter):
	#if Input.is_action_just_pressed("interact"):
		#var direction: Vector2 = DirectonOfCharacter
		#var fieldposition: Vector2 = PositionOfCharacter
		#print(direction)
		##print("Position" + str(fieldposition))
		#var field = field_scene.instantiate()
		#add_child(field)
		#show()
		#field.set_position(fieldposition)
		
		
		

func _process(delta: float):
	#_place_Field(newCharacterPosition, newCharacterDirection)
	pass
