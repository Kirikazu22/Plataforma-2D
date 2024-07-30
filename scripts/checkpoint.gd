extends Area2D

var is_active = false
@onready var anim = $anim
@onready var marker_2d = $Marker2D


func _on_body_entered(body):
	if body.name != "player" or is_active:
		return
	else:
		activate_checkpoint()


func activate_checkpoint():
	Globals.current_checkpoint = marker_2d
	anim.play("raising")
	is_active = true


func _on_anim_animation_finished():
	if anim.animation == "raising":
		anim.play("checked")
