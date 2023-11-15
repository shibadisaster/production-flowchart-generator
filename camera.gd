extends Camera2D



@onready var background = get_tree().get_first_node_in_group("Background")



var max_zoom = Vector2(0.25, 0.25)
var min_zoom = Vector2(2.0, 2.0)
var zoom_speed = 3.0
var move_speed = 1000.0
var target_zoom = Vector2(1.0, 1.0)
var target_zoom_speed = 10.0

# Called when the node enters the scene tree for the first time.
func _ready():
	self.zoom = Vector2(1.0, 1.0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_released("ZoomIn"):
		target_zoom = target_zoom.move_toward(min_zoom, target_zoom_speed * delta)
	if Input.is_action_just_released("ZoomOut"):
		target_zoom = target_zoom.move_toward(max_zoom, target_zoom_speed * delta)
	if Input.is_action_just_pressed("ZoomReset"):
		target_zoom = Vector2(1.0, 1.0)
	self.zoom = self.zoom.move_toward(target_zoom, zoom_speed * delta)
	
	self.position += Vector2(0, move_speed * (1.0 / self.zoom.x)) * delta * Input.get_axis("CameraUp", "CameraDown")
	self.position += Vector2(move_speed * (1.0 / self.zoom.x), 0) * delta * Input.get_axis("CameraLeft", "CameraRight")
