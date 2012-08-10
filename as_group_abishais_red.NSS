
#include "acr_spawn_i"

// Created by Riotnrrd for ALFA 8/2012
void main() {
	int nAbishais = d2();
	int i;
	
	for (i = 0; i < nAbishais; i++) ACR_SpawnObject("abr_cr_ou_abishai_red", OBJECT_TYPE_CREATURE);
}