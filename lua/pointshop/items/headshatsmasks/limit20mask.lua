ITEM.Name = 'Limitation 20 MPH - Masque'
ITEM.Price = 250
ITEM.Model = 'models/props_c17/streetsign001c.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	model:SetModelScale(0.7, 0)
	pos = pos + (ang:Forward() * 3)
	ang:RotateAroundAxis(ang:Up(), -90)
	
	return model, pos, ang
end
