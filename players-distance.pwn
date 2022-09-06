forward GetDistanceBetweenPlayers(playerid, id, Float:distance);
public GetDistanceBetweenPlayers(playerid, id, Float:distance)
{
	new Float:x, Float:y, Float:z;
	GetPlayerPos(playerid, x, y, z);

	if(GetPlayerVirtualWorld(playerid) == GetPlayerVirtualWorld(id) && GetPlayerInterior(playerid) == GetPlayerInterior(id)) {
		if(IsPlayerInRangeOfPoint(id, distance, x, y, z)) {
			return true;
		}
	}
	return false;
}
