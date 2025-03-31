draw_set_font(global.fontGUI2)
draw_set_halign(fa_left)
if (room == rm_controller || room == rm_options)
    draw_cool_text((view_xview[0] + 4), (view_yview[0]), text, c_black, c_white, c_white, image_alpha)
else
    draw_cool_text((view_xview[0] + 4 - oControl.widescreen_space / 2), (view_yview[0]), text, c_black, c_white, c_white, image_alpha)
