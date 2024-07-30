extends Node

var coins := 0
var score := 0
var player_life := 3
var player = null
@onready var player_start_position = $checkpoints/player_start_position

var current_checkpoint = null


func respawn_player():
	if current_checkpoint != null:
		player.position = current_checkpoint.global_position
	else:
		player.position = player_start_position.global_position
