
#include "acr_spawn_i"

// Created by Riotnrrd for ALFA 8/2012
void main() {
	int nGrBarghests = d4() + 2;
	int i;
	
	for (i = 0; i < nGrBarghests; i++) ACR_SpawnObject("abr_cr_ou_barghestgreater", OBJECT_TYPE_CREATURE);
}