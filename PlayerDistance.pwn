forward PlayerDistance(playerid, id, Float:distance);
public PlayerDistance(playerid, id, Float:distance)
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

/// Örnek Kullanım

if(!PlayerDistance(playerid, id, 3.0)) return SendClientMessage(playerid, -1, "Bu kişi sizin yakınınızda bulunmuyor.");
