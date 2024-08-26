extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	#SetCameraLimits()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	#SetCameraLimits()
	pass
	
	
#func SetCameraLimits():
	#var FocusedCollisionArea = get_node("Main_Level/CollisionShape2D")
	##var FocusedCollisionArea = get_node("Main_Level")
	#var AreaHeightLimit = FocusedCollisionArea.get_shape().size.y
	##print(("AreaHeightLimit: %s") % AreaHeightLimit)
	#var AreaWidthLimit = FocusedCollisionArea.get_shape().size.x
	##print(("AreaWidthLimit: %s") % AreaWidthLimit)
	#var AreaPosition = FocusedCollisionArea.position
	##var mapCellSize = $TileMap.cellSize
	#$Player/Camera2D.limit_left = AreaPosition.x - (AreaWidthLimit/2)
	##print(("Left limit: %s") % $Player/Camera2D.limit_left)
	#$Player/Camera2D.limit_right = AreaPosition.x + (AreaWidthLimit/2)
	#print($Player/Camera2D.limit_right)
	#$Player/Camera2D.limit_top = AreaPosition.y - (AreaHeightLimit/2)
	#print($Player/Camera2D.limit_top)
	#$Player/Camera2D.limit_bottom = AreaPosition.y + (AreaHeightLimit/2)
	#print($Player/Camera2D.limit_bottom)
	##print(AreaPosition)
