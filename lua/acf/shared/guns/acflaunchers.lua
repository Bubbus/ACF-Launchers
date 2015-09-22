--add a gun to the class
ACF_defineGun("100mmFGL", { --id
	name = "100mm Flare Launcher",
	desc = "Used by the ACF-Launchers flare pistol.  Not usable as a vehicle weapon.",
	model = "aeiou",
	gunclass = "FGL",
	canparent = true,
	caliber = 10.0,
	weight = 75,
	magsize = 12,
	magreload = 8,
	year = 1970,
	round = {
		maxlength = 16,
		propweight = 0.06
	}
} )