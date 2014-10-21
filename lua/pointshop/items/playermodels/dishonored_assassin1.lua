ITEM.Name = 'Assassin Dishonored'
ITEM.Price = 500
ITEM.Model = 'models/player/dishonored_assassin1.mdl'

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
	player_manager.AddValidModel( "dishonored_assassin1", "models/player/dishonored_assassin1.mdl" )
	AddCSLuaFile( "dishonored_assassin1.lua" )
end

list.Set( "PlayerOptionsModel",  "dishonored_assassin1", "models/player/dishonored_assassin1.mdl" )
