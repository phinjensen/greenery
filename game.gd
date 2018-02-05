extends Node2D

var move_actions = {
	"move_right": Vector2(1, 0),
	"move_left": Vector2(-1, 0),
	"move_down": Vector2(0, 1),
	"move_up": Vector2(0, -1),
	"move_upright": Vector2(1, -1),
	"move_upleft": Vector2(-1, -1),
	"move_downright": Vector2(1, 1),
	"move_downleft": Vector2(-1, 1),
}

onready var player = $Player

func _ready():
	set_process_input(true)

func _input(event):
	if event is InputEventKey:
		for action in move_actions.keys():
			if event.is_action_pressed(action):
				player.move(move_actions[action])