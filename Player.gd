extends Area2D

export var speed = 300
var screen_size


func _ready():
	screen_size = get_viewport_rect().size

func _process(delta):
	var velocity = 0
	if Input.is_action_pressed("ui_up"):
		velocity -= 1
	if Input.is_action_pressed("ui_down"):
		velocity += 1
	if velocity != 0:
		velocity = velocity * speed
		
	position.y += velocity * delta
	position.y = clamp(position.y, 0, screen_size.y)


func _on_Player_body_entered(body):
	body.linear_velocity.x = -body.linear_velocity.x
	# Add y velocity change after implementing the ball class

func start(pos):
	# Allow the Game class to manage the player position
	position = pos
