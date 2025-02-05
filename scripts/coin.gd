extends Area2D

@onready var game_manager: Node = %GameManager
@onready var pickup_sound: AudioStreamPlayer2D = $PickupSound

# Method called when a body enters in the coin area
func _on_body_entered(_body):
	game_manager.add_point()
	print('+1 coin')
	
	pickup_sound.play()
	await pickup_sound.finished
	
	queue_free()
