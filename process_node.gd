extends CenterContainer

@onready var machine_type_label = $Background/MarginContainer/VBoxContainer/TitleSeparator/Title/TitleSpread/MachineTypeContainer/MachineTypeLabel
@onready var machine_number_label = $Background/MarginContainer/VBoxContainer/TitleSeparator/Title/TitleSpread/MachineNumberContainer/MachineNumberLabel

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_pressed("ShowAlternate"):
		machine_type_label.text = "HI"
	else:
		machine_type_label.text = "Chemical Reactor"
