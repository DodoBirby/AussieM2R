global.mapoffsetx = 66
global.mapoffsety = 14
global.waterlevel = 0
global.watertype = 0
global.floormaterial = 3
with (oBlockSpeed)
{
    regentime = -1
}
with (oBlockBomb)
    regentime = -1
with (oBlockScrew)
    regentime = -1
with (oBlockSMissile)
    regentime = -1
instance_create(72, 656, scr_itemsopen(oControl.mod_110))
