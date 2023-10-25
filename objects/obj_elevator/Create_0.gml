image_speed = 0

instance_create_layer(obj_elevator.x, obj_elevator.y, "Sensors", obj_ss_elevator)

obj_ss_elevator.x = obj_elevator.x - obj_ss_elevator.image_xscale / 2
obj_ss_elevator.y = obj_elevator.y - (obj_elevator.sprite_height / 2)

obj_ss_elevator.image_xscale = 1 // obj_elevator.sprite_width / 4
obj_ss_elevator.image_yscale = obj_elevator.sprite_height