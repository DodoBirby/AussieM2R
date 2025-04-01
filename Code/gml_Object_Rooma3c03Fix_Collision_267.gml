if (global.screwattack == 0)
{
    with (oBlockScrew)
        y += 50
    instance_create(48, 320, oBlockSpeed)
    instance_create(48, 336, oBlockSpeed)
    instance_create(48, 352, oBlockSpeed)
}
instance_destroy()
