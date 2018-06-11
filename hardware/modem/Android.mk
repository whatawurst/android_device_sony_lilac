ifeq ($(BOARD_MODEM_CUSTOMIZATIONS),true)

include $(CLEAR_VARS)
MODEM_SYMLINKS := $(TARGET_OUT)/etc/customization/modem
$(MODEM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Create modem links: $@"
	@mkdir -p $@
	$(hide) ln -sf amss_fsg_lilac_tar.mbn $@/default
	$(hide) ln -sf amss_fs_empty.mbn $@/reset_modemst1
	$(hide) ln -sf amss_fs_empty.mbn $@/reset_modemst2

ALL_DEFAULT_INSTALLED_MODULES += \
	$(MODEM_SYMLINKS)

endif
