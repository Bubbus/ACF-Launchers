
AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )

include('shared.lua')



SWEP.Weight				= 5
SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false




function SWEP:FireBullet()

	self.Owner:LagCompensation( true )

	local MuzzlePos = self.Owner:GetShootPos()
	local MuzzleVec = self.Owner:GetAimVector()
	local angs = self.Owner:EyeAngles()	
	
	local MuzzlePos2 = MuzzlePos + angs:Forward() * self.AimOffset.x + angs:Right() * self.AimOffset.y
	local MuzzleVecFinal = self:inaccuracy(MuzzleVec, self.Inaccuracy) + Vector(0,0,0.04)
	
	local plyvel = self.Owner:GetVelocity()
    
    local missile = ents.Create("acf_missile")

    missile.Owner = self.Owner
    
    missile.Launcher = self.Owner
    missile:SetBulletData(self.BulletData)
    
    missile:Spawn()
    
    missile.Filter = {self.Owner, missile}
    
    local bdata = missile.BulletData
            
    bdata.Pos = MuzzlePos2
    bdata.Flight = MuzzleVecFinal
    
    missile:DoFlight(MuzzlePos2, MuzzleVecFinal)
    
    missile:Launch()
	
	self:MuzzleEffect( MuzzlePos2 , MuzzleVec )
	
	self.Owner:LagCompensation( false )
	
end