/turf/closed/indestructible/db_sandstone
	name = "sandstone wall"
	desc = "A wall with sandstone plating. Rough."
	icon = 'troutstation/icons/desertboard/desertboard_sandstone_wall.dmi'
	icon_state = "desertboard_sandstone_wall-0"
	base_icon_state = "desertboard_sandstone_wall"
	baseturfs = /turf/closed/indestructible/db_sandstone
	smoothing_flags = SMOOTH_BITMASK

/turf/open/misc/beach/db_sand
	gender = PLURAL
	name = "sand"
	desc = "Surf's up."
	icon = 'troutstation/icons/desertboard/turf.dmi'
	icon_state = "sand"
	base_icon_state = "sand"
	baseturfs = /turf/open/misc/beach/db_sand

/turf/open/misc/beach/db_sand/Initialize(mapload)
	. = ..()
	if(prob(15))
		icon_state = "sand[rand(1,4)]"

/turf/closed/indestructible/db_rock
	name = "dense rock"
	desc = "An extremely densely-packed rock, most mining tools or explosives would never get through this."
	icon = 'icons/turf/mining.dmi'
	icon_state = "rock"
	color = "#FFA894"
