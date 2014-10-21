ITEM.Name = 'Combine Zombie'
ITEM.Price = 50
ITEM.Model = 'models/player/clopsy.mdl'
ITEM.Halloween = true

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
	player_manager.AddValidModel( "clopsy", "models/player/clopsy.mdl" )
	AddCSLuaFile( "clopsy.lua" )
end

list.Set( "PlayerOptionsModel",  "clopsy", "models/player/clopsy.mdl" )
