extends Area2D

onready var screen_size = get_viewport_rect().size #Get screen size (480/320)
export var speed = 30 #To button speed


func _ready():
	$AnimatedSprite.play()
	
func _physics_process(delta):
	
	position.y += speed * delta #Fall update
	if position.y > screen_size.y + 10:
		Global.current_food -= 1
		queue_free()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
