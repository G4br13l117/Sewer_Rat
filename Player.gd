extends CharacterBody2D

@export var Peakrange = 30
@export var SPEED = 300.0
var JUMP_VELOCITY = SPEED * -0.75 #-400.0
#var Health = 10

#var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var gravity = SPEED #ProjectSettings.get_setting("physics/2d/default_gravity")

@onready var anim = get_node("AnimatedSprite2D")
#@onready var anim = get_node("AnimationPlayer")

func _ready():
	SetCameraLimits()

func _physics_process(delta):
	var direction = Input.get_axis("ui_left", "ui_right")
	
	if not is_on_floor() and velocity.y < gravity:
		velocity.y += gravity * delta

	#if $AnimatedSprite2D.animation != "Hurt":
	if anim.animation != "Hurt":

		if direction < 0: # == -1:
			anim.flip_h = true
		elif direction > 0: # == 1:
			anim.flip_h = false

		# Handle jump.
		if (Input.is_action_just_pressed("ui_accept") or Input.is_action_just_pressed("ui_up")) and is_on_floor():
			velocity.y = JUMP_VELOCITY
		if not is_on_floor():
			if (velocity.y >= -Peakrange) and (velocity.y <= Peakrange):
				anim.play("Jump_Peak")
			elif velocity.y < -Peakrange:
				anim.play("Jump_Rising")
			elif velocity.y > Peakrange:
				anim.play("Jump_Falling")

		if direction:
			velocity.x = direction * SPEED
			if is_on_floor():
				anim.play("Run")
				#$AnimationPlayer.play("run")
		else:
			velocity.x = move_toward(velocity.x, 0, SPEED)
			if velocity.y == 0 and is_on_floor():
				anim.play("Idle")
				#$AnimationPlayer.play("Idle")
			

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
func SetCameraLimits():
	var FocusedCollisionArea = get_node("../Main_Level/CollisionShape2D")
	#print(("../../%s/CollisionShape2D") % area.name)
	var AreaHeightLimit = FocusedCollisionArea.get_shape().size.y
	#print(("AreaHeightLimit: %s") % AreaHeightLimit)
	var AreaWidthLimit = FocusedCollisionArea.get_shape().size.x
	#print(("AreaWidthLimit: %s") % AreaWidthLimit)
	var AreaPosition = FocusedCollisionArea.position
	#var mapCellSize = $TileMap.cellSize

	$Camera2D.limit_left 		= int(AreaPosition.x - (AreaWidthLimit/2))
	#print(("Left limit: %s") 	% int(AreaPosition.x - (AreaWidthLimit/2)))
	$Camera2D.limit_right 		= int(AreaPosition.x + (AreaWidthLimit/2))
	#print(("Right limit: %s") 	% int(AreaPosition.x + (AreaWidthLimit/2)))
	$Camera2D.limit_top 		= int(AreaPosition.y - (AreaHeightLimit/2))
	#print(("Top limit: %s") 	% int(AreaPosition.y - (AreaWidthLimit/2)))
	$Camera2D.limit_bottom 		= int(AreaPosition.y + (AreaHeightLimit/2))
	#print(("Bottom limit: %s") 	% int(AreaPosition.y + (AreaWidthLimit/2)))

func _on_area_2d_area_entered(area):
	var FocusedCollisionArea = get_node(("../%s/CollisionShape2D") % area.name)
	print(("../../%s/CollisionShape2D") % area.name)
	var AreaHeightLimit = FocusedCollisionArea.get_shape().size.y
	#print(("AreaHeightLimit: %s") % AreaHeightLimit)
	var AreaWidthLimit = FocusedCollisionArea.get_shape().size.x
	#print(("AreaWidthLimit: %s") % AreaWidthLimit)
	var AreaPosition = FocusedCollisionArea.position
	#var mapCellSize = $TileMap.cellSize
	$Camera2D.limit_left 		= int(AreaPosition.x - (AreaWidthLimit/2))
	print(("Left limit: %s") 	% int(AreaPosition.x - (AreaWidthLimit/2)))
	$Camera2D.limit_right 		= int(AreaPosition.x + (AreaWidthLimit/2))
	print(("Right limit: %s") 	% int(AreaPosition.x + (AreaWidthLimit/2)))
	$Camera2D.limit_top 		= int(AreaPosition.y - (AreaHeightLimit/2))
	print(("Top limit: %s") 	% int(AreaPosition.y - (AreaWidthLimit/2)))
	$Camera2D.limit_bottom 		= int(AreaPosition.y + (AreaHeightLimit/2))
	print(("Bottom limit: %s") 	% int(AreaPosition.y + (AreaWidthLimit/2)))
	$Camera2D.position


