#!/system/bin/sh

export PATH=/system/xbin:/system/bin

DEFAULT_BOOT_CFG=/boot/moboot.default
DEFAULT_RECOVERY_CFG=/boot/android.default.recovery

busybox mount /boot -o remount,rw

rebootmode=`getprop sys.tenderloin.reboot.target`

case "$rebootmode" in
	recovery)
		CMD="ClockworkMod"
		if [ -r ${DEFAULT_RECOVERY_CFG} ]; then
			CMD=`cat ${DEFAULT_RECOVERY_CFG}`
		fi
		;;
	altos)
		CMD="webOS"
		;;
	*)
		CMD="CyanogenMod"
		if [ -r ${DEFAULT_BOOT_CFG} ]; then
			CMD=`cat ${DEFAULT_BOOT_CFG}`
		fi
		;;
esac

# possibly we need to check if the target exists, but
# currently moboot ignores invalid targets so we are good
echo -n $CMD >/boot/moboot.next
sync
busybox mount /boot -o remount,ro
