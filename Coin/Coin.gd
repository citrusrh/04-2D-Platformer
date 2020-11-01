extends Area2D

onready var Global = get_node("/root/Global")
export var score = 100


func _on_Coin_body_entered(body):
	if body.name == "Player":
		Global.score += score
		queue_free()
