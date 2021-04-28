extends RigidBody2D

export var speed = 200

var screen_size


func _ready():
	screen_size = get_viewport_rect().size
