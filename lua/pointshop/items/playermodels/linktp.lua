ITEM.Name = 'Link'
ITEM.Price = 700
ITEM.Model = 'models/player/linktp.mdl'

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
	player_manager.AddValidModel( "linktp", "models/player/linktp.mdl" )
	AddCSLuaFile( "linktp.lua" )
end

list.Set( "PlayerOptionsModel",  "linktp", "models/player/linktp.mdl" )
