extends Node2D

#load the scene of Field
var field_scene: PackedScene = load("res://Scenes/Field_Object.tscn")

var newCharacterPosition: Vector2 
var newCharacterDirection: Vector2 

func _on_character_player_position(CharacterPosition: Variant):
	newCharacterPosition = CharacterPosition
	
func _on_character_character_direction(CharacterDirection: Variant):
	newCharacterDirection	 = CharacterDirection

func _place_field():
	if Input.is_action_just_pressed("interact"):
		print(newCharacterDirection)
		print(newCharacterPosition)
		#create instance of field
		var field = field_scene.instantiate()
		#attach field instance to scene tree
		$Fields.add_child(field)
		field.show()
		field.set_position(newCharacterPosition)

func _process(delta: float) -> void:
	_place_field()
