ITEM.Name = 'Zelda'
ITEM.Price = 700
ITEM.Model = 'models/player/zelda.mdl'

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
	player_manager.AddValidModel( "zelda", "models/player/zelda.mdl" )
	AddCSLuaFile( "zelda.lua" )
end

list.Set( "PlayerOptionsModel",  "zelda", "models/player/zelda.mdl" )
