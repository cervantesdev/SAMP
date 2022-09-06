stock IPCount(const ip[])
{
	new data = 0;
	for(new i = 0; i < MAX_PLAYERS; i++)
	if(IsPlayerConnected(i) && !strcmp(GetIPForPlayer(i),ip)) data++;
	return data;
}
stock GetIPForPlayer(playerid)
{
	new ip[16];
	GetPlayerIp(playerid, ip, sizeof(ip));
	return ip;
}
stock KickPlayer(playerid)
{
	new PlayerName[22];
	GetPlayerName(playerid, PlayerName, sizeof(PlayerName));
	SendMessageToAdm(1, COLOR_RED, "(%s %s) AdmLog: %s birden fazla hesap ile bağlanmaya denedi.[code-1]",ReturnDate(), ReturnTime(), PlayerName);
        SendClientMessage(playerid, COLOR_RED, "Aynı IP üzerinde birden fazla hesap ile giriş yapamazsınız.");
	Kick(playerid);
	return 1;
}


//// Nasıl çalışır?
#define MAX_ACCOUNT 1

public OnPlayerConnect(playerid)
{
	new PlayerName[22];
	GetPlayerName(playerid, PlayerName, sizeof(PlayerName));
	if(IPCount(GetIPForPlayer(playerid)) > MAX_ACCOUNT) return KickPlayer(playerid), 0;
	return 1;
}
