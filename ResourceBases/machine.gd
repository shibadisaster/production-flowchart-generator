extends Resource
class_name Machine

@export var name : String
@export var color : Color

func _init(p_name = "MachineName", p_color = Color.BLACK):
	name = p_name
	color = p_color
