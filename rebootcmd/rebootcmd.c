#include <stdlib.h>
#include <android/log.h>
#include "property_service.h"

#define ALOGD(...) __android_log_print(ANDROID_LOG_DEBUG, "rebootcmd: ", __VA_ARGS__)

int main(int argc, char**argv)
{
	if (argc > 0) {
		ALOGD("Rebooting into %s", argv[1]);
		property_set("sys.tenderloin.reboot.target", argv[1]);
	} else {
		ALOGD("Rebooting normally");
		property_set("sys.tenderloin.reboot.target", "normal");
	}

	sleep(2);
	return -1;
}
