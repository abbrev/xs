/* keep alive process for windows */
#include <windows.h>
#include <stdio.h>
#include <process.h>

#define KEEPALIVE_BYTE	      0xff
#define KeepAliveInterval     4 /* seconds */
int do_keep_alive = 0;

struct timeval donext = {0,0};
const static char keepaliveByte = KEEPALIVE_BYTE;

int keepthread()
{
    /* separate keep alive thread */
    struct timeval tv;

    while(1) {
	gettimeofday(&tv,0);
	if (tv.tv_sec >= donext.tv_sec) {
	    if (mywrite(rcxFD(), &keepaliveByte,1) != 1) {
		fprintf(stdout,"keep alive write failed");
		return 0;
	    } 
	    donext.tv_sec = tv.tv_sec + KeepAliveInterval;
	}
	Sleep(1000);  /* 1 sec */
    }
}
	

void keepaliveRenew()
{
    struct timeval tv;
    
    gettimeofday(&tv,0);
    donext.tv_sec += tv.tv_sec + KeepAliveInterval;
}


	    


int keepaliveInit(void)
{
    do_keep_alive = 1;

    _beginthread(keepthread,0,0);

    return 0;
}


