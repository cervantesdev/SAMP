public OnPlayerUpdate(playerid)
{

  new vehicleid = GetPlayerSurfingVehicleID(playerid);

	if (vehicleid != INVALID_VEHICLE_ID && GetPlayerSpeed(vehicleid) >= 25)
    {
		new Float:pos[3];
        GetPlayerPos(playerid, pos[0], pos[1], pos[2]);
        SetPlayerPos(playerid, pos[0], pos[1], pos[2]+3.5);
        GameTextForPlayer(playerid, "~w~Car Surfing ~r~Yasak!", 3000, 5);
  	}
 return 1;
}

stock GetPlayerSpeed(vid)
{
    new Float:vx, Float:vy, Float:vz, Float:vel;
	  vel = GetVehicleVelocity(vid, vx, vy, vz);
	  vel = (floatsqroot(((vx*vx)+(vy*vy))+(vz*vz))* 181.5);
	return floatround(vel);
}
