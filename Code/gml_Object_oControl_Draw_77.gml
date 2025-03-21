application_surface_draw_enable(false)
draw_clear(c_black)
if (shader_on && global.shaders_compiled)
    set_8bit_shader()
if widescreen
{
    if surface_exists(widescreen_surface)
        draw_surface_ext(widescreen_surface, (displayx + xShake) + (320 + widescreen_space) * display_scale, (displayy + yShake) + 240 * display_scale, -display_scale, -display_scale, 0, c_white, 1)
}
else if surface_exists(application_surface)
    draw_game_surface(displayx + 320 * display_scale, displayy + 240 * display_scale, -display_scale)
shader_reset()
