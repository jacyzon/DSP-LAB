/*   Do *not* directly modify this file.  It was    */
/*   generated by the Configuration Tool; any  */
/*   changes risk being overwritten.                */

/* INPUT Exp2.cdb */

#define CHIP_6713 1

/*  Include Header Files  */
#include <std.h>
#include <prd.h>
#include <hst.h>
#include <swi.h>
#include <log.h>
#include <sts.h>

#ifdef __cplusplus
extern "C" {
#endif

extern far PRD_Obj PRD_blinkLED;
extern far PRD_Obj PRD_load;
extern far HST_Obj RTA_fromHost;
extern far HST_Obj RTA_toHost;
extern far SWI_Obj PRD_swi;
extern far SWI_Obj processBufferSwi;
extern far LOG_Obj LOG_system;
extern far STS_Obj IDL_busyObj;
extern far void CSL_cfgInit();

#ifdef __cplusplus
}
#endif /* extern "C" */
