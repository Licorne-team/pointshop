ITEM.Name = 'Jack Skellington'
ITEM.Price = 500
ITEM.Model = 'models/vinrax/player/jack_player.mdl'

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
	player_manager.AddValidModel( "jack_player", "models/vinrax/player/jack_player.mdl" )
	AddCSLuaFile( "jack_player.lua" )
end

list.Set( "PlayerOptionsModel",  "jack_player", "models/vinrax/player/jack_player.mdl" )
