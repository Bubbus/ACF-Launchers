	AddCSLuaFile( "shared.lua" )
	SWEP.HoldType			= "rpg"

if (CLIENT) then
	
	SWEP.PrintName			= "ACF Anti-Tank Rocket"
	SWEP.Author				= "Bubbus"
	SWEP.Slot				= 4
	SWEP.SlotPos			= 3
	SWEP.IconLetter			= "f"
	SWEP.DrawCrosshair		= false
	SWEP.Purpose		= "Make tanks disappear."
	SWEP.Instructions       = "Reload at 70mmFFAR Ammo-boxes!"
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
SWEP.Primary.Sound 			= "acf_extra/tankfx/gnomefather/13mm1.wav"

util.PrecacheSound( SWEP.Primary.Sound )

SWEP.ReloadTime				= 6

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.ScopeChopPos = false
SWEP.ScopeChopAngle = false
SWEP.WeaponBone = false

SWEP.MinInaccuracy = 0.33
SWEP.MaxInaccuracy = 6
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

SWEP.RecoilScale = 0.8
SWEP.RecoilDamping = 0.3

SWEP.AimOffset = Vector(16,8,0)


function SWEP:InitBulletData()
	
	self.BulletData = {}
    
    -- self.BulletData["Colour"]		= Color(255, 255, 255)
    -- self.BulletData["Data10"]		= "0.00"
    -- self.BulletData["Data5"]		= "428.64"
    -- self.BulletData["Data6"]		= "42.02"
    -- self.BulletData["Data7"]		= "Dumb"
    -- self.BulletData["Data8"]		= "Contact"
    -- self.BulletData["Data9"]		= "2x FIM-92"
    -- self.BulletData["Id"]		    = "70mmFFAR"
    -- self.BulletData["ProjLength"]	= "17.02"
    -- self.BulletData["PropLength"]	= "7.88"
    -- self.BulletData["Type"]		    = "HEAT"
    
self.BulletData["Colour"]		= Color(255, 255, 255)
self.BulletData["Data10"]		= "0.00"
self.BulletData["Data5"]		= "946.67"
self.BulletData["Data6"]		= "48.41"
self.BulletData["Data7"]		= "Dumb"
self.BulletData["Data8"]		= "Contact"
self.BulletData["Data9"]		= "4x FIM-92"
self.BulletData["Id"]		= "PG-7V SWEP"
self.BulletData["ProjLength"]		= "22.80"
self.BulletData["PropLength"]		= "2.20"
self.BulletData["Type"]		= "HEAT"

    self.BulletData.Sound = "acf_extra/airfx/javelin.wav"
    
    self.BulletData.IsShortForm     = true

end