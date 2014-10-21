ITEM.Name = 'Perso Mass Effect'
ITEM.Price = 500
ITEM.Model = 'models/player/masseffect.mdl'

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
	player_manager.AddValidModel( "masseffect", "models/player/masseffect.mdl" )
	AddCSLuaFile( "masseffect.lua" )
end

list.Set( "PlayerOptionsModel",  "masseffect", "models/player/masseffect.mdl" )
