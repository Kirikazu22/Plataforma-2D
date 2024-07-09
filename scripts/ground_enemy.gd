extends EnemyBase


func _physics_process(delta):
	_apply_gravity(delta)
	movement(delta)
	flip_direction()


func _on_anim_animation_finished(anim_name):
	kill_enemy()
