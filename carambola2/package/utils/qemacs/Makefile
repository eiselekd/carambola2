include $(TOPDIR)/rules.mk

PKG_NAME:=qemacs
PKG_VERSION:=1.0.0
PKG_RELEASE:=1
PKG_MAINTAINER:=bellard

include $(INCLUDE_DIR)/package.mk

define Package/qemacs
  SECTION:=base
  CATEGORY:=Base system
  TITLE:=QEmacs
  DEPENDS:=
  URL:=http://bellard.org/
endef

define Package/qemacs/description
	Small footprint emacs like editor
endef

define Build/Prepare
	@echo "-------- prepare qemacs -------------"
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./qemacs-0.3.3/* $(PKG_BUILD_DIR)/
endef

define Build/Configure
	@echo "-------- configure qemacs -------------"
	(cd $(PKG_BUILD_DIR); \
		./configure --enable-tiny)
endef

define Build/Compile
	@echo "-------- compile qemacs -------------"
	$(call Build/Compile/Default, \
		DESTDIR="$(PKG_INSTALL_DIR)" \
		CC="$(TARGET_CC)" \
		qe
	+$(MAKE) -i $(PKG_JOBS) -C $(PKG_BUILD_DIR) \
		DESTDIR="$(PKG_INSTALL_DIR)" \
		install)
endef


define Package/qemacs/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/qe $(1)/usr/bin
endef

$(eval $(call BuildPackage,qemacs))
