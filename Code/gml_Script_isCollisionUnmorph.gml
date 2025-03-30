checkupl = position_meeting((x - 3), (y + 10), oSolid)
checkupr = position_meeting((x + 3), (y + 10), oSolid)
checkl = position_meeting((x - 6), (y + 10), oSolid)
checkr = position_meeting((x + 6 - 1), (y + 10), oSolid)
if (checkl == 1 && checkr == 1)
    return 0;
if (checkl == 0 && checkr == 0 && checkupl == 0 && checkupr == 0)
    return 1;
if (checkupr == 0 && checkr == 1)
    return 2;
if (checkupl == 0 && checkl == 1)
    return 3;
return 0;
