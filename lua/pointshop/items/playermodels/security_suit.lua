ITEM.Name = 'Security Suit'
ITEM.Price = 600
ITEM.Model = 'models/player/security_suit.mdl'

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
	player_manager.AddValidModel( "security_suit", "models/player/security_suit.mdl" )
	AddCSLuaFile( "security_suit.lua" )
end

list.Set( "PlayerOptionsModel",  "security_suit", "models/player/security_suit.mdl" )
