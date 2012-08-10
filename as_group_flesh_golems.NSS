// Created by Riotnrrd for ALFA 4/2012

#include "acr_spawn_i"

void main();

void main() {
	int nGolems = d2();
	int i;
	
	for (i = 0; i < nGolems; i++) ACR_SpawnObject("abr_cr_cn_fleshgolem", OBJECT_TYPE_CREATURE);
}