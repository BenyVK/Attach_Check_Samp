// Channel @SoldDev And Creator BenyVK - [Discord: BenyVK#0000 | T.me/iMBenyGH | Github/BenyVotka | X.com/BenyVkOfficial]
// Channel @SoldDev And Creator BenyVK - [Discord: BenyVK#0000 | T.me/iMBenyGH | Github/BenyVotka | X.com/BenyVkOfficial]
// Channel @SoldDev And Creator BenyVK - [Discord: BenyVK#0000 | T.me/iMBenyGH | Github/BenyVotka | X.com/BenyVkOfficial]

#include <a_samp.inc>
#include <zcmd.inc>

#define function%0(%1) forward%0(%1); public%0(%1)

// System SetToy -_-
new attachedPlayer[MAX_PLAYERS][10];
#define MAX_ATTACHED_PLAYER 10 // 0-9 == 10 Object Player
// System SetToy -_-

main()
{
	// Start GameMode -_-
}

// Name Player -_-
stock getPlayerName(playerid) 
{
	new name[MAX_PLAYER_NAME + 1];
	GetPlayerName(playerid, name, sizeof(name));
	return name;
}
// Name Player -_-

// System SetToy -_-
stock setPlayerAttachedObject(playerid, index, modelid, bone, Float:fOffsetX=0.0, Float:fOffsetY=0.0, Float:fOffsetZ=0.0, Float:fRotX=0.0, Float:fRotY=0.0, Float:fRotZ=0.0, Float:fScaleX=1.0, Float:fScaleY=1.0, Float:fScaleZ=1.0, materialcolor1=0, materialcolor2=0)
{
    if (index >= 0 && index <= 9)
    {
    	RemovePlayerAttachedObject(playerid, index);
        SetPlayerAttachedObject(playerid, index, modelid, bone, fOffsetX, fOffsetY, fOffsetZ, fRotX, fRotY, fRotZ, fScaleX, fScaleY, fScaleZ, materialcolor1, materialcolor2);
        attachedPlayer[playerid][index] = modelid;
    }
    else
    {
        printf("Error: Null or invalid Index-Player {SetPlayerAttachedObject} PlayerID= %s(%d)", getPlayerName(playerid), playerid);
        return false;
    }
    return true;
}
stock GetPlayerAttachedObject(playerid, index)
{
    if (index >= 0 && index <= 9 && playerid >= 0 && playerid < MAX_PLAYERS)
    {
        return attachedPlayer[playerid][index];
    }
    return false;
}
// System SetToy -_-

public OnGameModeInit()
{
	AddPlayerClass(188,1447.2230,-1734.9865,13.3828,90.5893,0,0,0,0,0,0);
	return true;
}

public OnPlayerSpawn(playerid)
{
	SetPlayerPos(playerid, 5, 5, 5);
	RemovePlayerAttachedObject(playerid, 0);
	RemovePlayerAttachedObject(playerid, 1);
	RemovePlayerAttachedObject(playerid, 2);
	RemovePlayerAttachedObject(playerid, 3);
	RemovePlayerAttachedObject(playerid, 4);
	RemovePlayerAttachedObject(playerid, 5);
	RemovePlayerAttachedObject(playerid, 6);
	RemovePlayerAttachedObject(playerid, 7);
	RemovePlayerAttachedObject(playerid, 8);
	RemovePlayerAttachedObject(playerid, 9);
	return true;
}

// Not Bug Player Connect And Disconnect -_-
function OnPlayerDelbase(playerid)
{
    for(new i = 0; i < MAX_ATTACHED_PLAYER; i ++) attachedPlayer[playerid][i] = 0;
	return true;
}
// Not Bug Player Connect And Disconnect -_-

public OnPlayerConnect(playerid)
{
	OnPlayerDelbase(playerid);
	SpawnPlayer(playerid);
	return true;
}
public OnPlayerDisconnect(playerid, reason)
{
	OnPlayerDelbase(playerid);
	return true;
}

// System SetToy Test -_-
CMD:mytoy(playerid)
{
	new str[512];
	format(str, sizeof(str), "* %d *", GetPlayerAttachedObject(playerid, 0));
	SendClientMessage(playerid, -1, str);
	format(str, sizeof(str), "* %d *", GetPlayerAttachedObject(playerid, 1));
	SendClientMessage(playerid, -1, str);
	format(str, sizeof(str), "* %d *", GetPlayerAttachedObject(playerid, 2));
	SendClientMessage(playerid, -1, str);
	format(str, sizeof(str), "* %d *", GetPlayerAttachedObject(playerid, 3));
	SendClientMessage(playerid, -1, str);
	format(str, sizeof(str), "* %d *", GetPlayerAttachedObject(playerid, 4));
	SendClientMessage(playerid, -1, str);
	format(str, sizeof(str), "* %d *", GetPlayerAttachedObject(playerid, 5));
	SendClientMessage(playerid, -1, str);
	format(str, sizeof(str), "* %d *", GetPlayerAttachedObject(playerid, 6));
	SendClientMessage(playerid, -1, str);
	format(str, sizeof(str), "* %d *", GetPlayerAttachedObject(playerid, 7));
	SendClientMessage(playerid, -1, str);
	format(str, sizeof(str), "* %d *", GetPlayerAttachedObject(playerid, 8));
	SendClientMessage(playerid, -1, str);
	format(str, sizeof(str), "* %d *", GetPlayerAttachedObject(playerid, 9));
	SendClientMessage(playerid, -1, str);
	return true;
}
CMD:settoy(playerid)
{
	setPlayerAttachedObject(playerid, 0, 336, 1, 0.1679, -0.1599, 0.0019, 3.3999, 128.8001, 0.0000, 1.0000, 1.0000, 0.5730, 0xFFFFFFFF, 0xFFFFFFFF); // Unknown_User
	setPlayerAttachedObject(playerid, 1, 18912, 2, 0.0809, 0.0189, 0.0019, -94.1999, 8.7999, -88.8000, 0.9769, 0.8200, 1.0759, 0xFFFFFFFF, 0xFFFFFFFF); // Unknown_User
	setPlayerAttachedObject(playerid, 2, 19039, 5, -0.0079, -0.0059, -0.0010, -165.5999, 94.4000, -5.7999, 1.2930, 1.2319, 1.0000, 0xFFFFFFFF, 0xFFFFFFFF); // Unknown_User
	setPlayerAttachedObject(playerid, 3, 371, 1, 0.0000, -0.0919, -0.0059, 0.0000, 87.9000, 0.0000, 1.0000, 1.0000, 1.0000, 0xFFFFFFFF, 0xFFFFFFFF); // Unknown_User
	setPlayerAttachedObject(playerid, 4, 18635, 1, 0.0199, -0.1610, 0.0110, 0.0000, 30.6999, 0.0000, 1.0000, 1.0000, 0.7979, 0xFFFFFFFF, 0xFFFFFFFF); // Unknown_User
	setPlayerAttachedObject(playerid, 5, 1254, 1, -0.0469, -0.2410, 0.0000, 0.0000, 87.2000, 0.0000, 0.4420, 1.0000, 0.4050, 0xFFFFFFFF, 0xFFFFFFFF); // Unknown_User
	setPlayerAttachedObject(playerid, 6, 18749, 1, 0.1269, 0.1179, 0.0920, 171.4999, 91.7000, 18.9999, 0.1869, 1.0000, 0.2130, 0xFFFFFFFF, 0xFFFFFFFF); // Unknown_User
	setPlayerAttachedObject(playerid, 7, 19792, 1, 0.0359, -0.1210, -0.1319, -179.6000, 0.0000, 0.0000, 1.0000, 1.0000, 1.0000, 0xFFFFFFFF, 0xFFFFFFFF); // Unknown_User
	setPlayerAttachedObject(playerid, 8, 19894, 1, 0.1299, -0.1420, 0.0000, 92.5999, 0.0000, 0.0000, 0.5680, 0.6690, 0.6809, 0xFFFFFFFF, 0xFFFFFFFF); // Unknown_User
	setPlayerAttachedObject(playerid, 9, 1484, 1, 0.0110, -0.1599, 0.1799, 0.0000, 91.7999, 0.0000, 0.7599, 0.6679, 0.7179, 0xFFFFFFFF, 0xFFFFFFFF); // Unknown_User
	SetPlayerSkin(playerid, 2);
	return true;
}
// System SetToy Test -_-