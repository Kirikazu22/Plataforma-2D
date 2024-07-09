extends CharacterBody2D
class_name EnemyBase

const SPEED = 700.0
const JUMP_VELOCITY = -400

@onready var anim := $anim
@onready var texture := $texture
@onready var wall_detector := $wall_detector
@export var enemy_score := 100

var can_spawn = false
var spawn_instance : PackedScene = null
var spawn_instance_position
var direction := -1

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _apply_gravity(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta


func movement(delta):
	velocity.x = direction * SPEED * delta

	move_and_slide()


func flip_direction():
	if wall_detector.is_colliding():
		direction *= -1
		wall_detector.scale.x *= -1
	
	if direction == 1:
		texture.flip_h = true
	else:
		texture.flip_h = false


func kill_enemy() -> void:
	kill_and_score()


func kill_and_score():
	Globals.score += enemy_score
	if can_spawn:
		spawn_new_enemy()
		get_parent().queue_free()
	else:
		queue_free()


func spawn_new_enemy():
	var instance_scene = spawn_instance.instantiate()
	get_tree().root.add_child(instance_scene)
	instance_scene.global_position = spawn_instance_position.global_position


