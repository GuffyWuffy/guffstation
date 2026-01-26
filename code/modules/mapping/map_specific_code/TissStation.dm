/obj/modular_map_root/tissstation
	config_file = "strings/modular_maps/TissStation.toml"

/obj/item/paper/fluff/downward_spiral
	name = "The Downward Spiral"
	desc = "A dark slip of paper with text hastily scrawled upon it."
	default_raw_text = @{"<h1>
	you got a head lioke a hole loll"</h1>
	"}
	color = "#2a2a2a"

/area/station/service/kitchen/tisserand
	name = "\improper The Kitchen"
	icon_state = "kitchen"

/area/station/service/kitchen/tisserand/Initialize(mapload)
	. = ..()
	name = "\improper [pick("Greggs", "Hungry Jack's", "Baker's Delight", "Grill'd", "Guzman y Gomez", "Oporto", "Pancake Parlour", "Red Rooster", "Brodies", "Kingsleys", "Cold Rock Ice Creamery", "Zambrero", "Eagle Boys", "Donut King", "Boost Juice", "Crust", "Hog's Breath Cafe", "Mad Mex", "Sumo Salad", "Salsas", "Zeus Street Greek", "La Porchetta", "Noodle Box", "Wokitup", "Wokinabox", "Roll'd", "Lord of the Fries", "Betty’s Burgers & Concrete Co.", "Sushi Hub", "Breadtop", "Pie Face", "SpudBAR", "Grease Monkey", "Wendy's Milk Bar", "Yatala Pie Shop", "Sizzler", "Sandwich Chefs", "Soul Origin", "Soonta", "The Tuckerbox", "1919 Lanzhou Beef Noodle", "Canteen")]"
