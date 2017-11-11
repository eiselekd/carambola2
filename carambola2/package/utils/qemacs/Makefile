include $(TOPDIR)/rules.mk

PKG_NAME:=qemacs
PKG_VERSION:=1.0.0
PKG_RELEASE:=1
PKG_MAINTAINER:=bellard

PKG_LICENSE:=LGPL-2.1
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_PARALLEL:=0

include $(INCLUDE_DIR)/package.mk

define Package/qemacs
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=QEmacs
  DEPENDS:=
  URL:=http://bellard.org/
  MENU:=1
endef

define Package/qemacs/description
	Small footprint emacs like editor
endef

define Build/Prepare
	@echo "-------- prepare qemacs -------------"
	mkdir -p $(PKG_BUILD_DIR)/
	$(CP) ./qemacs-0.3.3/* $(PKG_BUILD_DIR)/
endef

define Build/Configure
	@echo "-------- configure qemacs -------------"
	(cd $(PKG_BUILD_DIR)/; \
		./configure --enable-tiny --prefix=/usr/ )
endef

define Build/Compile
	@echo "-------- compile qemacs -------------"
	$(call Build/Compile/Default, \
		DESTDIR="$(PKG_INSTALL_DIR)" \
		CC="$(TARGET_CC)" \
		qe)
endef


define Package/qemacs/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/qe $(1)/usr/bin
endef

$(eval $(call BuildPackage,qemacs))
