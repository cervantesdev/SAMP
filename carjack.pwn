public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
    if(!ispassenger)
    {
        if(GetVehicleDriver(vehicleid) != INVALID_PLAYER_ID)
        {
         new Float:x, Float:y, Float:z;

            GetPlayerPos(playerid, x, y, z);
            SetPlayerPos(playerid, x, y, z+1.5);

            return SendClientMessage(playerid, -1, "Car Jack yasaktır.");
        }
    }
  return 1;
}
