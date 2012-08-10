// Created by Riotnrrd for ALFA 8/2012

#include "acr_spawn_i"

void main();

void main() {
	int nMastiffs = d2();
	int i;
	
	for (i = 0; i < nMastiffs; i++) ACR_SpawnObject("abr_cr_ou_shadowmastiff", OBJECT_TYPE_CREATURE);
}