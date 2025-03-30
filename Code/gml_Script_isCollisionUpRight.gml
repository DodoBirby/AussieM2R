var yoff;
if (yVel <= 0)
{
    yoff = 1 - yVel * 2
    if (collision_line(x, (y + collisionBoundsOffsetBottomY), x, (y + collisionBoundsOffsetBottomY + yoff), oSolid, true, true) == -4)
    {
        if (collision_line((x + collisionBoundsOffsetRightX - 1), (y + collisionBoundsOffsetBottomY), (x + collisionBoundsOffsetRightX - 1), (y + collisionBoundsOffsetBottomY + yoff), oSolid, true, true) > 0)
            return 1;
    }
}
return 0;
