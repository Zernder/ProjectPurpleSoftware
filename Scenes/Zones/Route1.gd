extends TileMap


@onready var player = get_tree().get_first_node_in_group("player")


#region The Runtimes

func _ready():
	player.camera.enabled = true
	var LS = Global.LOADING_SCREEN.instantiate()
	add_child(LS)
	Global.set_camera_limits($".", player.camera)

#endregion


func ToVillage(body):
	if body.is_in_group("player"):
		pass


func ToTrellarkForest(body):
	if body.is_in_group("player"):
		var zone = Global.TRELLARK_FOREST.instantiate()
		get_parent().call_deferred("add_child", zone)
		player.global_position = Vector2(1033,582)
		call_deferred("queue_free")


func ToSlimeFields(body):
	if body.is_in_group("player"):
		var zone = Global.SLIME_FIELD.instantiate()
		get_parent().call_deferred("add_child", zone)
		player.global_position = Vector2(30,55)
		call_deferred("queue_free")


