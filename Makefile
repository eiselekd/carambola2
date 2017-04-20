all: carambola

carambola:
	cd carambola2; \
		cp config_full .config; \
		make V=s

