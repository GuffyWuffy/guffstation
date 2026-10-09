// TissSnow also uses TissStation specific code, do not double up

/obj/modular_map_root/tisssnow
	config_file = "strings/modular_maps/TissSnow.toml"



/// areas

/area/station/command/eva/arrivals
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Arrivals EVA Storage"

/area/station/common/smokes
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Gas-N-Smoke Store"

// tram subways

/area/station/subway/cargo/west
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "subW"
	name = "\improper Cargo Subway Platform - West Tram"

/area/station/subway/cargo/north
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "subN"
	name = "\improper Cargo Subway Platform - North Tram"


/area/station/subway/sec/north
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "subN"
	name = "\improper Security Subway Platform - North Tram"

/area/station/subway/sec/east
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "subE"
	name = "\improper Security Subway Platform - East Tram"


/area/station/subway/sci/east
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "subE"
	name = "\improper Science Subway Platform - East Tram"

/area/station/subway/sci/south
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "subS"
	name = "\improper Science Subway Platform - South Tram"


/area/station/subway/central/south
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "subS"
	name = "\improper Central Subway Platform - South Tram"


/area/station/subway/med/south
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "subS"
	name = "\improper Medical Subway Platform - South Tram"

/area/station/subway/med/west
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "subW"
	name = "\improper Medical Subway Platform - West Tram"

/area/station/subway/tunnel
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Subway Tunnels"

// FOLLOWING TAKEN FROM BUBBER (and from whatever bubber took from)

/area/station/cargo/blacksmith
	name = "\improper Blacksmith Workshop"
	icon_state = "cargo_warehouse"
	sound_environment = SOUND_AREA_TUNNEL_ENCLOSED

/area/station/common/arcade
	name = "Arcade"
	icon = 'modular_skyrat/modules/mapping/icons/areas/areas_station.dmi'
	icon_state = "arcade"

/area/station/common/carpshop
	name = "Carp Pro Shop"
	icon = 'modular_skyrat/modules/mapping/icons/areas/areas_station.dmi'
	icon_state = "carp_pro_shop"

/area/station/common/laser_tag
	name = "Laser Tag"
	icon = 'modular_skyrat/modules/mapping/icons/areas/areas_station.dmi'
	icon_state = "laser_tag"

/area/station/common/locker_room_shower
	name = "Locker Room Shower"
	icon = 'modular_skyrat/modules/mapping/icons/areas/areas_station.dmi'
	icon_state = "locker_room_shower"

/area/station/common/pool/sauna
	name = "\improper Pool Sauna"
	icon_state = "pool"

/area/station/common/tailoring
	name = "Tailoring Shop"
	icon = 'modular_skyrat/modules/mapping/icons/areas/areas_station.dmi'
	icon_state = "tailoring"

/area/station/commons/public_mining
	name = "\improper Public Mining"
	icon_state = "mining"

/area/station/maintenance/department/public_mining
	name = "\improper Public Mining Maintenance"
	icon_state = "centralmaint"

/area/station/maintenance/pool_maintenance
	name = "Pool Maintenance"
	icon = 'modular_skyrat/modules/mapping/icons/areas/areas_station.dmi'
	icon_state = "pool_maint"

/area/station/service/barber/spa
	name = "\improper Spa"
	icon_state = "barber"

/area/station/service/salon
	name = "\improper Salon"
	icon = 'modular_skyrat/modules/mapping/icons/areas/areas_station.dmi'
	icon_state = "salon"
