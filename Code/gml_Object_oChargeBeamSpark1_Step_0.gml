var spd;
if (!instance_exists(oCharacter))
{
    instance_destroy()
    exit
}
if (oCharacter.chargebeam == 0)
    instance_destroy()
else
{
    
    var modifier = 0
    var actualDir = aimdir_to_dir(oCharacter.aimdirection)
    if (45 <= actualDir && actualDir <= 135) {
        modifier = -4
    }
    if (225 <= actualDir && actualDir <= 315) {
        modifier = 6
    }
    x = oCharacter.x + oCharacter.aspr2x
    y = oCharacter.y - oCharacter.aspr2y - 39 + modifier
    if (oCharacter.chargebeam >= 1)
    {
        if (sprite_index == sChargeBeamSpark1)
            sprite_index = sChargeBeamSpark1B
        if (sprite_index == sChargeWBeamSpark1)
            sprite_index = sChargeWBeamSpark1B
        if (sprite_index == sChargePBeamSpark1)
            sprite_index = sChargePBeamSpark1B
        if (sprite_index == sChargeIBeamSpark1)
            sprite_index = sChargeIBeamSpark1B
    }
    if (instance_number(oChargeBeamSpark2) < 4)
        instance_create((x + 30 - random(60)), (y + 30 - random(60)), oChargeBeamSpark2)
}
if (instance_exists(oPickup) && oCharacter.chargebeam >= 1)
{
    with (oPickup)
    {
        if (distance_to_object(oChargeBeamSpark1) < 100)
        {
            spd = clamp((120 / (distance_to_point(oCharacter.x, (oCharacter.y - 20)))), 1, 3)
            x += lengthdir_x(spd, point_direction(x, y, oCharacter.x, (oCharacter.y - 20)))
            y += lengthdir_y(spd, point_direction(x, y, oCharacter.x, (oCharacter.y - 20)))
        }
    }
}
