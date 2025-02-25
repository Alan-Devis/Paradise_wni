/mob/living/simple_animal/hostile/deathsquid
	name = "death squid"
	desc = "A large, floating eldritch horror. Its body glows with an evil red light, and its tentacles look to have been dipped in alien blood."

	speed = 1
	speak_emote = list("telepathically thunders", "telepathically booms")
	tts_seed = "Earth"
	maxHealth = 2500 // same as megafauna
	health = 2500

	icon = 'icons/mob/deathsquid_large.dmi' // Credit: FullofSkittles
	icon_state = "deathsquid"
	icon_living = "deathsquid"
	icon_dead = "deathsquiddead"
	pixel_x = -24
	pixel_y = -24

	attacktext = "режет"
	attack_sound = 'sound/weapons/bladeslice.ogg'
	armour_penetration = 25
	melee_damage_lower = 10
	melee_damage_upper = 100
	environment_smash = ENVIRONMENT_SMASH_RWALLS

	force_threshold = 15
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	unsuitable_atmos_damage = 0

	nightvision = 8
	mob_size = MOB_SIZE_LARGE
	gold_core_spawnable = NO_SPAWN

/mob/living/simple_animal/hostile/deathsquid/ComponentInitialize()
	AddComponent( \
		/datum/component/animal_temperature, \
		heat_damage = 0, \
	)

/mob/living/simple_animal/hostile/deathsquid/Process_Spacemove(movement_dir = NONE, continuous_move = FALSE)
	return TRUE //copypasta from carp code

/mob/living/simple_animal/hostile/deathsquid/ex_act(severity)
	return

/mob/living/simple_animal/hostile/deathsquid/joke
	name = "deaf squid"
	desc = "An elderly, hard-of-hearing eldrich horror."
	maxHealth = 200
	health = 200
	speed = 3
	armour_penetration = 5
	melee_damage_lower = 10
	melee_damage_upper = 20
	environment_smash = 2
