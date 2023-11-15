extends Resource
class_name Item

@export var name : String
@export var color : Color
@export var unit : String #Unit of the resource (e.g. L/liters for fluids)

func _init(p_name = "ResourceName", p_color = Color.BLACK, p_unit = ""):
	name = p_name
	color = p_color
	unit = p_unit
