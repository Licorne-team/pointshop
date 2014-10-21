ITEM.Name = 'Spartan'
ITEM.Price = 800
ITEM.Model = 'models/player/lordvipes/haloce/spartan_classic.mdl'

function ITEM:OnEquip(ply, modifications)
	if not ply._OldModel then
		ply._OldModel = ply:GetModel()
	end
	
	timer.Simple(1, function() ply:SetModel(self.Model) end)
end

function ITEM:OnHolster(ply)
	if ply._OldModel then
		ply:SetModel(ply._OldModel)
	end
end

function ITEM:PlayerSetModel(ply)
	ply:SetModel(self.Model)
end

if (SERVER) then
	player_manager.AddValidModel( "spartan_classic", "models/player/lordvipes/haloce/spartan_classic.mdl" )
	AddCSLuaFile( "spartan_classic.lua" )
end

list.Set( "PlayerOptionsModel",  "spartan_classic", "models/player/lordvipes/haloce/spartan_classic.mdl" )
