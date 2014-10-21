ITEM.Name = 'Scorpion'
ITEM.Price = 600
ITEM.Model = 'models/player/scorpion.mdl'

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
	player_manager.AddValidModel( "scorpion", "models/player/scorpion.mdl" )
	AddCSLuaFile( "scorpion.lua" )
end

list.Set( "PlayerOptionsModel",  "scorpion", "models/player/scorpion.mdl" )
