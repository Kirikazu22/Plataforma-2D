extends Area2D


func _on_body_entered(body):
	print("você está morto")
	body.handle_death_zone()
