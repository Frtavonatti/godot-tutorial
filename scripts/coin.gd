extends Area2D

# Método llamado cuando un cuerpo entra en el área de la moneda
func _on_body_entered(_body):
	print('+1 coin')
	queue_free()
