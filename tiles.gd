extends TileSet

func tile_get_class(index):
	return tile_to_class[tile_get_name(index)].new()

var tile_to_class = {
	"wall1": Wall,
	"floor1": Floor,
}

class Wall:
	var is_walkable = false
	var blocks_vision = true

class Floor:
	var is_walkable = true
	var blocks_vision = false