#include <YSI\y_hooks>

new ParachuteArea;

hook OnGameModeInit() {

	print("[Streamer] Loading Dynamic Areas...");

	iVehExits[0] = CreateDynamicSphere(3.6661,23.0627,1199.6012, 3.0);
	iVehExits[1] = CreateDynamicSphere(820.5054,1528.1591,-48.9141, 3.0);
	iVehExits[2] = CreateDynamicSphere(315.6100,1028.6777,1948.5518, 3.0);

	Streamer_SetIntData(STREAMER_TYPE_AREA, iVehExits[0], E_STREAMER_EXTRA_ID, 0);
	Streamer_SetIntData(STREAMER_TYPE_AREA, iVehExits[1], E_STREAMER_EXTRA_ID, 1);
	Streamer_SetIntData(STREAMER_TYPE_AREA, iVehExits[2], E_STREAMER_EXTRA_ID, 2);

	ParachuteArea = CreateDynamicSphere(1544.2,-1353.4,329.4, 2.0);
	
	return 1;
}

hook OnPlayerEnterDynamicArea(playerid, areaid) {

	if(areaid == ParachuteArea) GivePlayerValidWeapon(playerid, 46, 9 );
	return 1;
}