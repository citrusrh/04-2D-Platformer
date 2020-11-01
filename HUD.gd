extends Control

onready var Global = get_node("/root/Global")

func _physics_process(delta):
	$Score.text = "Score: " + Global.score as String
