stock IsPlayerRunning(playerid)
{
    if (!IsPlayerConnected(playerid)) return 0;
    if (IsPlayerInAnyVehicle(playerid)) return 0;
    new keys, updown, leftright;
    GetPlayerKeys(playerid, keys, updown, leftright);
    if (keys & KEY_SPRINT) return 1;
    return 0;
}
