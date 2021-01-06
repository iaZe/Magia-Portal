function onUse(cid, item)

local TeleportID = 1387
local Teleport = {
config = {
ToPos = {x = 157, y = 51, z = 7},
Pos = getCreaturePosition(cid),
Time = 10,
},
}

function removeTeleport(Teleport)
	local t = getTileItemById(Teleport.config.Pos, TeleportID)
	if t then
		doRemoveItem(t.uid, 1)
		doSendMagicEffect(Teleport.config.Pos, CONST_ME_POFF)
	end
end

	doCreateTeleport(TeleportID, Teleport.config.ToPos,Teleport.config.Pos)
	doCreatureSay(cid, "Kamigami no potaru (Portal dos Deuses) ", TALKTYPE_ORANGE_1) 
	addEvent(removeTeleport, Teleport.config.Time * 1000, Teleport)
	doRemoveItem(item.uid,1)
	return TRUE
end

<action itemid="x" event="script" value="portal.lua"/>
