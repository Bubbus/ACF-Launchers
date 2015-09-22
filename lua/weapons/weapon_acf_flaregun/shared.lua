	AddCSLuaFile( "shared.lua" )
	SWEP.HoldType			= "pistol"

if (CLIENT) then
	
	SWEP.PrintName			= "ACF Flare Gun"
	SWEP.Author				= "Bubbus"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 3
	SWEP.IconLetter			= "f"
	SWEP.DrawCrosshair		= false
	SWEP.Purpose		= "Make dudes' rockets disappear."
	SWEP.Instructions       = "Reload at 100mmFGL Ammo-boxes!"

end

util.PrecacheSound( "weapons/launcher_fire.wav" )

SWEP.Base				= "weapon_acf_base"
SWEP.ViewModelFlip			= false

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= false
SWEP.Category			= "ACF"
SWEP.ViewModel 			= "models/weapons/v_RPG.mdl";
SWEP.WorldModel 		= "models/weapons/w_pist_deagle.mdl";
SWEP.ViewModelFlip		= false

SWEP.Weight				= 5
SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false

SWEP.Primary.Recoil			= 2
SWEP.Primary.ClipSize		= 1
SWEP.Primary.Delay			= 0.1
SWEP.Primary.DefaultClip	= 20
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "XBowBolt"
SWEP.Primary.Sound 			= "acf_other/gun_plane/vickers_k_lastshot_left.wav"

SWEP.ReloadTime				= 2

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.AimOffset = Vector(18, 10, -4)

SWEP.ScopeChopPos = false
SWEP.ScopeChopAngle = false
SWEP.WeaponBone = false//"v_weapon.aug_Parent"

SWEP.IronSights = true
SWEP.IronSightsPos = Vector(-2, -4.74, 2.98)
SWEP.ZoomPos = Vector(2,-2,2)
SWEP.IronSightsAng = Angle(0.45, 0, 0)

SWEP.MinInaccuracy = 1
SWEP.MaxInaccuracy = 5
SWEP.Inaccuracy = SWEP.MaxInaccuracy
SWEP.InaccuracyDecay = 0.15
SWEP.AccuracyDecay = 0.25
SWEP.InaccuracyPerShot = 3
SWEP.InaccuracyCrouchBonus = 1.3
SWEP.InaccuracyDuckPenalty = 2

SWEP.Stamina = 1
SWEP.StaminaDrain = 0.004 / 1
SWEP.StaminaJumpDrain = 0.06

SWEP.HasZoom = true
SWEP.ZoomInaccuracyMod = 0.6
SWEP.ZoomDecayMod = 1.3
SWEP.ZoomFOV = 70

SWEP.Class = "MG"
SWEP.FlashClass = "MG"
SWEP.Launcher = false

SWEP.RecoilScale = 0.5
SWEP.RecoilDamping = 0.2


function SWEP:InitBulletData()

	self.BulletData = {}
	//*

	self.BulletData["Accel"]		= Vector(0.000000, 0.000000, -600.000000)
	self.BulletData["BoomPower"]		= 7.9390851710605
	self.BulletData["BurnRate"]		= 1.5708
	self.BulletData["BurnTime"]		= 5.0159696785463
	self.BulletData["Caliber"]		= 10
	self.BulletData["Colour"]		= Color(255, 255, 255)
	self.BulletData["DistractChance"]		= 0.76771771778793
	self.BulletData["DragCoef"]		= 0.021019889073745
	self.BulletData["FillerMass"]		= 7.8790851710605
	self.BulletData["FrAera"]		= 78.54
	self.BulletData["Id"]		= "100mmFGL"
	self.BulletData["KETransfert"]		= 0.1
	self.BulletData["LimitVel"]		= 700
	self.BulletData["MuzzleVel"]		= 112.45290210316
	self.BulletData["PenAera"]		= 40.815701243399
	self.BulletData["ProjLength"]		= 15.52
	self.BulletData["ProjMass"]		= 9.9638965393783
	self.BulletData["PropLength"]		= 0.47746371275783
	self.BulletData["PropMass"]		= 0.06
	self.BulletData["Ricochet"]		= 75
	self.BulletData["RoundVolume"]		= 1256.4408
	self.BulletData["ShovePower"]		= 0.1
	self.BulletData["Tracer"]		= 0
	self.BulletData["Type"]		= "FLR"

	self.BulletData["InvalidateTraceback"]			= true

end