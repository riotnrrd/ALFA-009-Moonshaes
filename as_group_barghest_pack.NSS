
#include "acr_spawn_i"

// Created by Riotnrrd for ALFA 8/2012
void main() {
	int nBarghests = d4() + 2;
	int i;
	
	for (i = 0; i < nBarghests; i++) ACR_SpawnObject("abr_cr_ou_barghest", OBJECT_TYPE_CREATURE);
}