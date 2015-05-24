
--define the class
ACF_defineGunClass("SWEP", {
    type            = "missile",
	spread          = 1,
	name            = "Handheld Launcher Rockets",
	desc            = "Small rockets suited for handheld launchers.  Not compatible with vehicle-mounted launchers.",
	muzzleflash     = "40mm_muzzleflash_noscale",
	rofmod          = 0.5,
	sound           = "acf_extra/airfx/rocket_fire2.wav",
	soundDistance   = " ",
	soundNormal     = " ",
    effect          = "Rocket Motor",
    
    ammoBlacklist   = {"AP", "APHE", "FL"} -- Including FL would mean changing the way round classes work.
} )




ACF_defineGun("PG-7V SWEP", { --id

	name		= "PG-7V RPG",
	desc		= "It's a rocket propelled grenade.  Maybe you've seen it before.",
	model		= "models/missiles/launcher7_40mm.mdl",
	caliber		= 8.5,
	gunclass	= "SWEP",
    rack        = "",  -- Which rack to spawn this missile on?
	weight		= 6,
    length	    = 2, -- Length affects inertia calculations
    rofmod		= 0.7,
	year		= 1960,
	round		= 
	{
		model		= "models/missiles/70mmffar.mdl",
		rackmdl		= "models/missiles/70mmffar.mdl",
		maxlength	= 25,
		casing		= 0.2,	// thickness of missile casing, cm
		propweight	= 0.2,	// motor mass - motor casing
		thrust		= 13000,	// average thrust - kg*in/s^2
		burnrate	= 150,	// cm^3/s at average chamber pressure
        starterpct	= 0.15,         -- percentage of the propellant consumed in the starter motor.
        minspeed	= 6000,			-- minimum speed beyond which the fins work at 100% efficiency
        dragcoef	= 0.003,		-- drag coefficient of the missile
		finmul		= 0.003,			-- fin multiplier (mostly used for unpropelled guidance)
		penmul		= math.sqrt(8)
	},
    
    ent         = "weapon_acf_atrl", -- A workaround ent which spawns an appropriate rack for the missile.
    guidance    = {"Dumb"},
    fuses       = {"Contact"},
    
    racks       = {},    -- a whitelist for racks that this missile can load into.  can also be a 'function(bulletData, rackEntity) return boolean end'
    
    seekcone    = 35,   -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)
    viewcone    = 55,   -- getting outside this cone will break the lock.  Divided by 2. 
    
    agility     = 1,     -- multiplier for missile turn-rate. 
    armdelay    = 0.4     -- minimum fuse arming delay
} )