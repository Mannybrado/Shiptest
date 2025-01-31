// One of these languages will actually work, I'm certain of it.
/datum/language/voltaic
	name = "Voltaic"
	desc = "A sparky language made by manipulating electrical discharge."
	speech_verb = "crackles"
	ask_verb = "pops"
	exclaim_verb = "thunders"
	sing_verb = "synthesizes"
	flags = LANGUAGE_HIDE_ICON_IF_NOT_UNDERSTOOD //WS Edit- Language icon hiding
	key = "v"
	space_chance = 20
	syllables = list(
		"bzzt", "skrrt", "zzp", "mmm", "hzz", "tk", "shz", "k", "z",
		"bzt", "zzt", "skzt", "skzz", "hmmt", "zrrt", "hzzt", "hz",
		"vzt", "zt", "vz", "zip", "tzp", "lzzt", "dzzt", "zdt", "kzt",
		"zzzz", "mzz"
	)
	icon_state = "volt"
	default_priority = 90
