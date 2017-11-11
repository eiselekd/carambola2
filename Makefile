all: carambola-prepare carambola-compile

CONFIG?=config_minimal_vpn

carambola-prepare:
	cd carambola2; \
	./scripts/feeds update -a; \
	./scripts/feeds install -a; \
	cp .config .config_save`date +%F_%T.%N`; \
	cp $(CONFIG) .config; make defconfig

carambola-menuconfig:
	cd carambola2; \
	make menuconfig

carambola-compile-v:
	cd carambola2; \
	make V=s -j4 IGNORE_ERRORS=m
	ls -la carambola2/bin/ar71xx/openwrt-ar71xx-generic-carambola2-squashfs-sysupgrade.bin

carambola-compile:
	cd carambola2; \
	make -j4 IGNORE_ERRORS=m
	ls -la carambola2/bin/ar71xx/openwrt-ar71xx-generic-carambola2-squashfs-sysupgrade.bin

carambola-standard:
	cd carambola2; \
	./build.sh carambola2

