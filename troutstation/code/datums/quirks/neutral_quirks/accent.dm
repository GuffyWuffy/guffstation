/datum/quirk/accent
	name = "Heavy Accent"
	desc = "You've arrived on station recently, and even though you've taken many lessons on Galactic Common, your irritatingly stereotypical accent keeps bleeding through."
	icon = FA_ICON_LANGUAGE
	value = 0
	gain_text = span_notice("You suddenly feel very in tune with your cultural roots.")
	lose_text = span_notice("You feel like you have never had culture ever.")
	medical_record_text = "Patient is from another country, and their culture drips from their words."
	mail_goodies = list(/obj/item/clothing/mask/fakemoustache/italian, /obj/item/clothing/head/frenchberet, /obj/item/clothing/head/hats/cork) // lets stack those accents


// glob.accent_choice
// AddElement(GLOB.accent_choice[client_source?.prefs?.read_preference(/datum/preference/choiced/accent)]) ??
