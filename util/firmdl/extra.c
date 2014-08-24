/** added for native port **/
#include <windows.h>

int gettimeofday(struct timeval *tv, int *ignore)
{
    unsigned _int64 curtime;
    FILETIME filetime;
    
    GetSystemTimeAsFileTime(&filetime);

    curtime = ((((_int64) filetime.dwHighDateTime) << 32)
	       + filetime.dwLowDateTime); // to microseconds

    curtime = curtime / 10;
    
    tv->tv_usec = (curtime % 1000000) & 0xffffffff;
    tv->tv_sec = ((curtime / 1000000) - 0xf4000000) & 0xfffffff; /* truncate */
    return 0;
}
 

usleep(int microsecs)
{
    Sleep(microsecs/1000);
}



	
	  


	
	  
