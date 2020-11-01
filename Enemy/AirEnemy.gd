extends KinematicBody2D

export var speed = 200
export var damage = 10
export var turnDistance = 25000
var distanceTraveled = 0
var direction = 1
var velocity = Vector2.ZERO


func _physics_process(delta):
	velocity.x = direction*speed
	distanceTraveled += speed
	move_and_slide_with_snap(velocity, Vector2.UP)
	if distanceTraveled > turnDistance:
		direction *= -1
		distanceTraveled = 0


func _on_Area2D_body_entered(body):
	if body.name == "Platforms":
		velocity.x = 0
		direction *= -1
	if body.name == "Player":
		body.die()
