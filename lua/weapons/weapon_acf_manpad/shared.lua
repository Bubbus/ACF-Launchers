	AddCSLuaFile( "shared.lua" )
	SWEP.HoldType			= "rpg"

if (CLIENT) then
	
	SWEP.PrintName			= "ACF MANPAD"
	SWEP.Author				= "Bubbus"
	SWEP.Slot				= 4
	SWEP.SlotPos			= 3
	SWEP.IconLetter			= "f"
	SWEP.DrawCrosshair		= false
	SWEP.Purpose		= "Make aircraft disappear."
	SWEP.Instructions       = "Reload at FIM-92 Ammo-boxes!"
	//SWEP.WepSelectIcon = surface.GetTextureID("vgui/entities/potato_launcher.vtf")

end



SWEP.Base				= "weapon_acf_base"
SWEP.ViewModelFlip			= false

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= false
SWEP.Category			= "ACF"
SWEP.ViewModel 			= "models/weapons/v_RPG.mdl";
SWEP.WorldModel 		= "models/weapons/w_rocket_launcher.mdl";

SWEP.Weight				= 5
SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false

SWEP.Primary.Recoil			= 20
SWEP.Primary.ClipSize		= 1
SWEP.Primary.Delay			= 0.1
SWEP.Primary.DefaultClip	= 5
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "RPG_Round"
SWEP.Primary.Sound 			= "acf_extra/tankfx/gnomefather/7mm2.wav"

util.PrecacheSound( SWEP.Primary.Sound )

SWEP.ReloadTime				= 6

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.ScopeChopPos = false
SWEP.ScopeChopAngle = false
SWEP.WeaponBone = false

SWEP.MinInaccuracy = 1
SWEP.MaxInaccuracy = 7
SWEP.Inaccuracy = SWEP.MaxInaccuracy
SWEP.InaccuracyDecay = 0.13
SWEP.AccuracyDecay = 0.3
SWEP.InaccuracyPerShot = 6
SWEP.InaccuracyCrouchBonus = 1.4
SWEP.InaccuracyDuckPenalty = 5

SWEP.Stamina = 1
SWEP.StaminaDrain = 0.005 / 1
SWEP.StaminaJumpDrain = 0.25

SWEP.HasZoom = true
SWEP.ZoomInaccuracyMod = 0.5
SWEP.ZoomDecayMod = 1.2
SWEP.ZoomFOV = 50

SWEP.IronSightsPos = Vector(-5, 5, -3)
SWEP.ZoomPos = Vector(-5, 5, -3)
SWEP.IronSightsAng = Angle(0, 0, 0)

SWEP.Class = "C"
SWEP.FlashClass = "AC"
SWEP.Launcher = true
SWEP.IsGrenadeWeapon	= true

SWEP.RecoilScale = 0.6
SWEP.RecoilDamping = 0.25

SWEP.AimOffset = Vector(16,8,0)


function SWEP:InitBulletData()
	
	self.BulletData = {}
	
	self.BulletData["Colour"]		= Color(255, 255, 255)
    self.BulletData["Data10"]		= "0.00"
    self.BulletData["Data5"]		= "422.55"
    self.BulletData["Data6"]		= "52.759998"
    self.BulletData["Data7"]		= "Radar"
    self.BulletData["Data8"]		= "Radio:AD=0.3:Ds=100"
    self.BulletData["Data9"]		= "2x FIM-92"
    self.BulletData["Id"]		= "FIM-92 SAM"
    self.BulletData["ProjLength"]		= "25.84"
    self.BulletData["PropLength"]		= "18.92"
    self.BulletData["Type"]		= "HE"
    --self.BulletData.Sound = "acf_extra/airfx/rpg_fire.wav"

    self.BulletData.IsShortForm     = true

end