/datum/status_effect/food/speech/io
	alert_type = /atom/movable/screen/alert/status_effect/io_speech
	on_remove_on_mob_delete = TRUE
	var/datum/component/speechmod

/datum/status_effect/food/speech/io/on_apply()
	. = ..()
	speechmod = owner.AddComponent( \
		/datum/component/speechmod, \
		replacements = strings("io_replacement.json", "io"), \
		end_string = list(
			" mate!",
			" She’ll be right!"
			), \
		end_string_chance = 3, \
		)

/datum/status_effect/food/speech/io/on_remove()
	. = ..()
	QDEL_NULL(speechmod)

/atom/movable/screen/alert/status_effect/io_speech
	name = "A Taste of Io"
	desc = "yeah mate" //i dont know what to put here.
	icon = 'troutstation/icons/hud/screen_alert.dmi'
	icon_state = "food_australian"
