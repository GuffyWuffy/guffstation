/datum/status_effect/speech/italian
	on_remove_on_mob_delete = TRUE
	var/datum/component/speechmod

/datum/status_effect/speech/italian/on_apply()
	. = ..()
	speechmod = AddComponent( \
		/datum/component/speechmod, \
		replacements = strings("italian_replacement.json", "italian"), \
		end_string = list(
			" Ravioli, ravioli, give me the formuoli!",
			" Mamma-mia!",
			" Mamma-mia! That's a spicy meat-ball!",
			" La la la la la funiculi funicula!"
			), \
		end_string_chance = 3 \
		)


/datum/status_effect/speech/italian/on_remove()
	. = ..()
	QDEL_NULL(speechmod)

/datum/status_effect/speech/french
	on_remove_on_mob_delete = TRUE
	var/datum/component/speechmod

/datum/status_effect/speech/french/on_apply()
	. = ..()
	speechmod = owner.AddComponent( \
		/datum/component/speechmod, \
		replacements = strings("french_replacement.json", "french"), \
		end_string = list(
			" Honh honh honh!",
			" Honh!",
			" Zut Alors!"
			), \
		end_string_chance = 3, \
		)

/datum/status_effect/speech/french/on_remove()
	. = ..()
	QDEL_NULL(speechmod)

/datum/status_effect/speech/io
	on_remove_on_mob_delete = TRUE
	var/datum/component/speechmod

/datum/status_effect/speech/io/on_apply()
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

/datum/status_effect/speech/io/on_remove()
	. = ..()
	QDEL_NULL(speechmod)
