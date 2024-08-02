#extends CharacterBody2D
#
#var movement = Vector2()
#var speed = 100
#var jumpHeight = 600
#var fallVelocity = 5
#
#@onready var defaultAnimation = $AnimatedSprite2D
#func _ready():
	#pass # Replace with function body.
#
#
#func _physics_process(delta):
	#PlayerMovement()
	#
	#movement = movement.normalized() * speed * delta
	#move_and_slide()
	#
#
#func PlayerMovement():
	#var Left = Input.is_action_pressed("ui_left")
	#var Right = Input.is_action_pressed("ui_right")
	#var Jump = Input.is_action_pressed("ui_accept")
	#
	#movement.x = -int(Left) + int(Right)
	#movement.y = -int(Jump)
	#
	#if movement.x != 0:
		#velocity.x = movement.x * speed
	#else:
		#velocity.x = 0
	#
#
#func PlayerAnimation():
	#pass
	#
#
#func CurrentGravity():
	#var newGravity = gravity_force.new()
	#velocity.y = fallVelocity
	#if !is_on_floor():
		#fallVelocity += newGravity.gravityStrength
	#else:
		#fallVelocity = 5
		#
	#print(fallVelocity)
#
#func PlayerWeaponFire():
	#pass
	#
######################
extends CharacterBody2D

@export var SPEED = 300.0
var JUMP_VELOCITY = SPEED * -0.75 #-400.0
#var Health = 10

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = SPEED #ProjectSettings.get_setting("physics/2d/default_gravity")

@onready var anim = get_node("AnimationPlayer")

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor() and velocity.y < gravity:
		#move_toward(velocity.y,gravity,delta)
		velocity.y += gravity * delta
	#else: velocity.y == 0

	#if get_node("AnimatedSprite2D").animation != "Die":
	if $AnimatedSprite2D.animation != "hurt":


		# Handle jump.
		if (Input.is_action_just_pressed("ui_accept") or Input.is_action_just_pressed("ui_up")) and is_on_floor():
			#print(Input.get_action_strength("ui_left") - Input.get_action_strength("ui_left"))
			velocity.y = JUMP_VELOCITY
			#if velocity.y < 0:
				##anim.play("Jump")
				#$AnimationPlayer.play("jump")

		# Get the input direction and handle the movement/deceleration.
		# As good practice, you should replace UI actions with custom gameplay actions.
		var direction = Input.get_axis("ui_left", "ui_right")
		if direction < 0: # == -1:
			get_node("AnimatedSprite2D").flip_h = true
		elif direction > 0: # == 1:
			get_node("AnimatedSprite2D").flip_h = false

		if direction:
			velocity.x = direction * SPEED
			#if velocity.y == 0: # and velocity.x != 0:
				#anim.play("Run")
				#$AnimationPlayer.play("run")
		else:
			velocity.x = move_toward(velocity.x, 0, SPEED)
			if velocity.y == 0: # and velocity.x == 0:
				#anim.play("Idle")
				$AnimationPlayer.play("Idle")
			
		#if velocity.y > 0:
			#anim.play("Fall")
			#$AnimationPlayer.play("fall")

		move_and_slide()

		#if Game.PlayerHealth <=0:
			##get_node("AnimatedSprite2D").play("Die")
			#$AnimatedSprite2D.play("hurt")
			##await $AnimatedSprite2D.animation_finished
			#await get_tree().create_timer(1.0).timeout
			##await get_node("AnimatedSprite2D").animation_finished
			#get_tree().change_scene_to_file("res://main_menu.tscn") # on Death, return to main menu
			#Game.PlayerHealth = 10
			#Game.PlayerGold = 0
			##get_tree().quit() #on death, quit the game
	#
