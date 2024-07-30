extends Area2D


@export var next_level : String = ""
@onready var transition = $"../transition"
# ou também:
# @onready var transition = get.parent().get_node("transition")


func _on_body_entered(body):
	if body.name == "player" and !next_level == "":
		transition.change_scene(next_level)
	else:
		print("No Scene Loaded")
