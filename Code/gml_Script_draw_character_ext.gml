var ID;
if (!surface_exists(character_surface)) {
    character_surface = surface_create(64, 64)
}
var offset = 14
if (string_pos("Morph", sprite_get_name(argument0)) != 0) {
    offset = 38
}
surface_set_target(character_surface)
draw_clear_alpha(c_black, 0)
var drawX = argument1
var drawY = argument2
argument1 = 32
argument2 = 54
ID = argument15
global.otherBeingAbsorbed = 0
global.absorbX = -100
global.absorbY = -100
global.absorbScaleX = 1
global.absorbScaleY = 1
if (global.shaders_compiled && os_type != os_android)
{
    if (oControl.mod_fusion && (!oControl.msr_fusionsuit))
    {
        if global.ibeam
            pal_swap_set(sPalFusion3, 1, 0)
        else if (global.currentsuit == 0)
            pal_swap_set(sPalFusion0, 1, 0)
        else if (global.currentsuit == 1)
            pal_swap_set(sPalFusion1, 1, 0)
        else if (global.currentsuit == 2)
            pal_swap_set(sPalFusion2, 1, 0)
    }
    else if (global.currentsuit == 0)
        pal_swap_set(oControl.PowerPalette, 1, 0)
    else if (global.currentsuit == 1)
        pal_swap_set(oControl.VariaPalette, 1, 0)
    else if (global.currentsuit == 2)
        pal_swap_set(oControl.GravityPalette, 1, 0)
}
if (global.shaders_compiled && os_type != os_android && string_count("Frozen", sprite_get_name(argument0)) == 0)
{
    if ((oControl.mod_fusion && (!global.saxmode)) || (global.saxmode && (!global.otherSAX)))
        pal_swap_set(oControl.MultitroidPaletteFusion, ID, 0)
    else
        pal_swap_set(oControl.MultitroidPalette, ID, 0)
}
if (global.otherSAX && global.otherMosaic)
{
    if (argument0 == sCoreXSAX)
    {
        sizeX -= 0.18
        sizeY -= 0.12
    }
    else
    {
        sizeX += 0.18
        sizeY += 0.12
    }
    draw_sprite_pixelated(argument0, argument14, argument1, argument2, argument10, 1, 0, c_white, 1, sizeX, sizeY, 64)
    if (sizeX < 1)
        sizeX = 1
    if (sizeY < 1)
        sizeY = 1
    surface_reset_target()
    draw_surface_ext(character_surface, drawX - 32, drawY + offset, 1, -1, 0, c_white, 1)
    if (global.shaders_compiled && os_type != os_android)
        pal_swap_reset()
    exit
}
if (global.otherSAX && global.otherReform)
{
    if (argument0 == sCoreXSAX)
    {
        sizeX += 0.18
        sizeY += 0.12
    }
    else
    {
        sizeX -= 0.18
        sizeY -= 0.12
    }
    draw_sprite_pixelated(argument0, argument14, argument1, argument2, argument10, 1, 0, c_white, 1, sizeX, sizeY, 64)
    if (sizeX < 1)
        sizeX = 1
    if (sizeY < 1)
        sizeY = 1
    surface_reset_target()
    draw_surface_ext(character_surface, drawX - 32, drawY + offset, 1, -1, 0, c_white, 1)
    if (global.shaders_compiled && os_type != os_android)
        pal_swap_reset()
    exit
}
if instance_exists(oMultiHitbox)
{
    with (oMultiHitbox)
    {
        if (absorb && myid == ID)
        {
            global.otherBeingAbsorbed = 1
            global.absorbX = x
            global.absorbY = y
            global.absorbScaleX = image_xscale
            global.absorbScaleY = image_yscale
        }
    }
}
if global.otherBeingAbsorbed
{
    draw_sprite_ext(argument0, argument14, 32, 54, global.absorbScaleX, global.absorbScaleY, 0, argument11, argument12)
    surface_reset_target()
    draw_surface_ext(character_surface, global.absorbX - 32, global.absorbY + offset, 1, -1, 0, c_white, 1)
    shader_reset()
    if (global.shaders_compiled && os_type != os_android)
        pal_swap_reset()
    exit
}
else
{
    draw_sprite_ext(argument0, argument14, argument1, argument2, argument10, 1, 0, argument11, argument12)
    draw_sprite_ext(argument3, argument14, (argument1 + argument4), (argument2 + argument5), argument10, 1, 0, argument11, argument12)
}
if (argument13 == 1)
    draw_sprite_ext(argument6, argument14, (argument1 + argument7), (argument2 + argument8), argument10, 1, argument9, argument11, argument12)
surface_reset_target()
draw_surface_ext(character_surface, drawX - 32, drawY + offset, 1, -1, 0, c_white, 1)
shader_reset()
if (global.shaders_compiled && os_type != os_android)
    pal_swap_reset()
