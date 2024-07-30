extends CharacterBody2D

var move_speed := 50
var direction := 1
@onready var wall_detector = $wall_detector
@onready var wall_detector_2 = $wall_detector2


func _physics_process(delta):
	position.x += move_speed * direction * delta
	
	if wall_detector.is_colliding():
		queue_free()
	
	if wall_detector_2.is_colliding():
		queue_free()


func set_direction(dir):
	direction = dir
	if dir < 0:
		$anim.flip_h = true
	else:
		$anim.flip_h = false
