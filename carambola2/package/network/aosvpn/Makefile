include $(TOPDIR)/rules.mk

PKG_NAME:=aosvpn
PKG_VERSION:=1.0.0
PKG_RELEASE:=1
PKG_MAINTAINER:=Iifo@info.com
PKG_LICENSE:=Proprietary

include $(INCLUDE_DIR)/package.mk

define Package/aosvpn
  SECTION:=net
  CATEGORY:=Network
  TITLE:=AOS VPN
  DEPENDS:=+socat +pptpd +python +tcpdump
  URL:=http://nodo/
endef

define Package/aosvpn/description
	Bundle aos vpn
endef

define Build/Compile
endef

define Package/Pandora/install
	cp -r ./files/* $(1)/
endef

$(eval $(call BuildPackage,aosvpn))
