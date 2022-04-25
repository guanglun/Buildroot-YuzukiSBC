################################################################################
#
# rtl8189fs
#
################################################################################

RTL8189FS_VERSION = 8ab5f57d2b602ed5464598cc7f6d39126ce4d523
RTL8189FS_SITE = $(call github,guanglun,rtl8189ES_linux,$(RTL8189FS_VERSION))
RTL8189FS_LICENSE = GPL-2.0

RTL8189FS_MODULE_MAKE_OPTS = \
	CONFIG_RTL8189FS=m \
	KVER=$(LINUX_VERSION_PROBED) \
	KSRC=$(LINUX_DIR)

$(eval $(kernel-module))
$(eval $(generic-package))
