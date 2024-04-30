##############################################################
#
# AESD_PROJECT
#
##############################################################

#TODO: Fill up the contents below in order to reference lcd display contents
AESD_PROJECT_VERSION = 331402e95915fc9f62133ca48c8b1b34607baa22
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_PROJECT_SITE = git@github.com:pranjalgupta1901/ECEN-5713-Final-Project.git
AESD_PROJECT_SITE_METHOD = git
AESD_PROJECT_GIT_SUBMODULES = YES

define AESD_PROJECT_BUILD_CMDS
#	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/lcd_display all
#	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/lcd_test all
#	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/client all
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/socket all
endef

# TODO add your lcd-dislay utilities to the installation steps below
define AESD_PROJECT_INSTALL_TARGET_CMDS

	$(INSTALL) -m 0755 $(@D)/lcd_display/* $(TARGET_DIR)/usr/bin
#	$(INSTALL) -m 0755 $(@D)/lcd_test/* $(TARGET_DIR)/usr/bin
#	$(INSTALL) -m 0755 $(@D)/client/* $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/gpio/* $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/socket/* $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
