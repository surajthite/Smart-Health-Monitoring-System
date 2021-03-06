
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_ASSIGNMENTS_VERSION = 5c310f6b0d424948f7c6630bd71f37dd798c9be1
AESD_ASSIGNMENTS_SITE = git@github.com:cu-ecen-5013/s20-remote-health-monitoring.git
AESD_ASSIGNMENTS_SITE_METHOD = git


define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all 

endef

#TODO: Add required executables or scripts below
define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/tmp102/tmp102 $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/tmp102/post_test $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/tmp102_start_stop.sh $(TARGET_DIR)/etc/init.d/S99tmp102
endef


$(eval $(generic-package))
