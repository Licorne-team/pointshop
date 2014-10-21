ITEM.Name = 'Rorschach'
ITEM.Price = 500
ITEM.Model = 'models/player/rorschach.mdl'

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
	player_manager.AddValidModel( "rorschach", "models/player/rorschach.mdl" )
	AddCSLuaFile( "rorschach.lua" )
end

list.Set( "PlayerOptionsModel",  "rorschach", "models/player/rorschach.mdl" )
