extends Node3D
const speed = 9999
const damage = 100
@onready var aimcast=$RayCast3D
var shoot =true	
# Called when the node enters the scene tree for the first time.
func _ready():
	set_as_top_level(true)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("shoot"):
		if aimcast.is_colliding():
			var target=aimcast.get_collider()
			if target.is_in_group("enemy"):
					print("hit enemy")
					target.health-=damage
	
	if shoot:
		
		position += transform.basis * Vector3(0 , 0,0 -90) * delta 


