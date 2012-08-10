#include "acr_spawn_i"

// Created by Riotnrrd for ALFA 8/2012
void main() {
	int nBodaks = d2();
	int i;
	
	for (i = 0; i < nBodaks; i++) ACR_SpawnObject("abr_cr_un_bodak", OBJECT_TYPE_CREATURE);
}