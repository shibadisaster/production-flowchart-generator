extends Resource
class_name Recipe

@export var ingredients : Array[Item]
@export var products : Array[Item]
@export var machine : Machine
@export var time : float
@export var energy_usage : float #Amount of energy used by the recipe.

func _init(p_ingredients = [], p_products = [], p_machine = null, p_time = 0, p_energy_usage = 0):
	ingredients = p_ingredients
	products = p_products
	machine = p_machine
	time = p_time
	energy_usage = p_energy_usage
