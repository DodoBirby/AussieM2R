if (isBall()) {
    if ((argument0 == 0 && collision_line(round(x), round(y - 15), round(x + 10), round(y - 15), oSlope, true, true) > 0) || (argument0 == 1 && collision_line(round(x + 8), round(y - 15), round(x + 8), round(y - 1), oSlope, true, true) > 0))
        return 1;
    return 0;
}

if ((argument0 == 0 && collision_line(round(x), round(y - 37), round(x + 10), round(y - 37), oSlope, true, true) > 0) || (argument0 == 1 && collision_line(round(x + 8), round(y - 37), round(x + 8), round(y - 10), oSlope, true, true) > 0))
    return 1;
return 0;
