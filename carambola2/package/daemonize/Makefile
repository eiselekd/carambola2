include $(TOPDIR)/rules.mk

PKG_NAME:=daemonize
PKG_VERSION:=2012-10-14
PKG_RELEASE:=3

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/bmc/daemonize.git
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE_VERSION:=18869a797dab12bf1c917ba3b4782fef484c407c
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-$(PKG_SOURCE_VERSION).tar.gz

include $(INCLUDE_DIR)/package.mk

define Package/daemonize
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=daemonize
  URL:=https://github.com/bmc/daemonize.git
endef

define Package/daemonize/description
  daemonize  utility
endef

define Package/daemonize/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/$(MAKE_PATH)/daemonize $(1)/usr/sbin/daemonize
endef

$(eval $(call BuildPackage,daemonize))
