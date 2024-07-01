extends Node2D

@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var animated_sprite = $AnimatedSprite2D

		
func _physics_process(delta):
	if ray_cast_left.is_colliding():
		animated_sprite.flip_h = true
		animated_sprite.play("patrol")
		position.x -= 2
	elif ray_cast_right.is_colliding():
		animated_sprite.flip_h = false
		animated_sprite.play("patrol")
		position.x += 2
		#move to target:
	else:
		animated_sprite.play("idle")
