#include <unistd.h>
#include <stdio.h>
#include <android/log.h>


#define DELAY_SECS 10
#define ALOG(msg) __android_log_write(ANDROID_LOG_DEBUG, "[MCDEV v1.0]", msg)

int main(int argc, char *argv[]) {

    char message[128];

	unsigned int cnt = 0;
    while (true) {
        sleep(DELAY_SECS);
		snprintf(message, sizeof(message), "mcnativeapp: %d", cnt++);
		ALOG(message);
	}
}
