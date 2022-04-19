function onUse(cid, item)

local TeleportID = 1387
local Teleport = {
config = {
Pos = getCreaturePosition(cid),
ToPos = {x = getCreaturePosition(cid).x, y = getCreaturePosition(cid).y, z = 3},
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
