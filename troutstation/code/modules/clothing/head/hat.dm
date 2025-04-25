/obj/item/clothing/head/hats/cork // figure out resistance to bugs and bees and stuff that ISNT THICKMATERIAL
	name = "cork-hat"
	desc = "Effective flyswatter!"
	icon = 'troutstation/icons/obj/clothing/head/hats.dmi'
	worn_icon = 'troutstation/icons/mob/clothing/head/hats.dmi'
	icon_state = "cork"
	inhand_icon_state = null

/obj/item/clothing/head/hats/cork/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/speechmod, replacements = strings("io_replacement.json", "io"), end_string = list(" mate!", ", she’ll be right!"), end_string_chance = 3, slots = ITEM_SLOT_HEAD)
