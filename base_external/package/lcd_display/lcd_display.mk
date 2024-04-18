##############################################################
#
# LCD_DISPLAY
#
##############################################################

#TODO: Fill up the contents below in order to reference lcd display contents
LCD_DISPLAY_VERSION = 4f10033c87fb2f89a059139323f946a86d6b085c
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LCD_DISPLAY_SITE = git@github.com:pranjalgupta1901/ECEN-5713-Final-Project.git
LCD_DISPLAY_SITE_METHOD = git
LCD_DISPLAY_GIT_SUBMODULES = YES

define LCD_DISPLAY_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/lcd_display all
endef

# TODO add your lcd-dislay utilities to the installation steps below
define LCD_DISPLAY_INSTALL_TARGET_CMDS

	$(INSTALL) -m 0755 $(@D)/lcd_display/* $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
