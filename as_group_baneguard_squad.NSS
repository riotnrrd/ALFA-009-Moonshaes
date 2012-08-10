
#include "acr_spawn_i"

// Created by Riotnrrd for ALFA 8/2012
void main() {
	int nBaneguards = d8() + 2;
	int i;
	
	for (i = 0; i < nBaneguards; i++) ACR_SpawnObject("abr_cr_un_baneguard", OBJECT_TYPE_CREATURE);
}