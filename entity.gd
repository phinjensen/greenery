extends Sprite

var health
var map_position
onready var map = get_node("../Map")
onready var tile_set = map.tile_set
const map_scale = Vector2(32, 32)

func move(xy):
	var new_position = map_position
	new_position += xy
	var tile_class = tile_set.tile_get_class(map.get_cellv(new_position))
	if tile_class.is_walkable:
		map_position = new_position
		position = map_position * map_scale