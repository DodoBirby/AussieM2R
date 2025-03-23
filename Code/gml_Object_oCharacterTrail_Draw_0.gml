var offset = 14
if (prevBall) {
    offset = 38
}
if surface_exists(mysurf)
    draw_surface_ext(mysurf, (x - 32), (y + offset), 1, -1, 0, image_blend, image_alpha)
