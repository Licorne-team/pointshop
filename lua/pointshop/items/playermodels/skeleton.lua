ITEM.Name = 'Skeleton'
ITEM.Price = 50
ITEM.Model = 'models/player/skeleton.mdl'

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
	player_manager.AddValidModel( "skeleton", "models/player/skeleton.mdl" )
	AddCSLuaFile( "skeleton.lua" )
end

list.Set( "PlayerOptionsModel",  "skeleton", "models/player/skeleton.mdl" )
