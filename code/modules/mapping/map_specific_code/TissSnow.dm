// TissSnow also uses TissStation specific code, do not double up

/obj/modular_map_root/tisssnow
	config_file = "strings/modular_maps/TissSnow.toml"



/// areas

/area/station/command/eva/arrivals
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Arrivals EVA Storage"

/area/station/common/smokes
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Gas-N-Smoke Store"

// tram subways

/area/station/subway/cargo/west
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "subW"
	name = "\improper Cargo Subway Platform - West Tram"

/area/station/subway/cargo/north
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "subN"
	name = "\improper Cargo Subway Platform - North Tram"


/area/station/subway/sec/north
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "subN"
	name = "\improper Security Subway Platform - North Tram"

/area/station/subway/sec/east
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "subE"
	name = "\improper Security Subway Platform - East Tram"


/area/station/subway/sci/east
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "subE"
	name = "\improper Science Subway Platform - East Tram"

/area/station/subway/sci/south
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "subS"
	name = "\improper Science Subway Platform - South Tram"


/area/station/subway/central/south
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "subS"
	name = "\improper Central Subway Platform - South Tram"


/area/station/subway/med/south
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "subS"
	name = "\improper Medical Subway Platform - South Tram"

/area/station/subway/med/west
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "subW"
	name = "\improper Medical Subway Platform - West Tram"

/area/station/subway/tunnel
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Subway Tunnels"

// FOLLOWING TAKEN FROM BUBBER (and from whatever bubber took from)

/area/station/cargo/blacksmith
	name = "\improper Blacksmith Workshop"
	icon_state = "cargo_warehouse"
	sound_environment = SOUND_AREA_TUNNEL_ENCLOSED

/area/station/common/arcade
	name = "Arcade"
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "tiss"

/area/station/common/carpshop
	name = "Carp Pro Shop"
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "tiss"

/area/station/common/laser_tag
	name = "Laser Tag"
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "tiss"

/area/station/common/locker_room_shower
	name = "Locker Room Shower"
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "tiss"

/area/station/common/pool/sauna
	name = "\improper Pool Sauna"
	icon_state = "pool"

/area/station/common/tailoring
	name = "Tailoring Shop"
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "tiss"

/area/station/commons/public_mining
	name = "\improper Public Mining"
	icon_state = "mining"

/area/station/maintenance/department/public_mining
	name = "\improper Public Mining Maintenance"
	icon_state = "centralmaint"

/area/station/maintenance/pool_maintenance
	name = "Pool Maintenance"
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "tiss"

/area/station/service/barber/spa
	name = "\improper Spa"
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "tiss"

/area/station/service/salon
	name = "\improper Salon"
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "tiss"
