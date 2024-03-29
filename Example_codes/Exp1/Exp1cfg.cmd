/*   Do *not* directly modify this file.  It was    */
/*   generated by the Configuration Tool; any  */
/*   changes risk being overwritten.                */

/* INPUT Exp1.cdb */

/* MODULE PARAMETERS */
GBL_USERINITFXN = _GBL_setPLLto225MHz;

MEM_SEGZERO = MEM_NULL;
MEM_MALLOCSEG = MEM_NULL;

CLK_TIMEFXN = CLK_F_getshtime;
CLK_HOOKFXN = HWI_F_dispatch;

PRD_THOOKFXN = FXN_F_nop;

RTDX_DATAMEMSEG = IRAM;

HST_DSMBUFSEG = IRAM;

SWI_EHOOKFXN = GBL_NULL;
SWI_IHOOKFXN = GBL_NULL;
SWI_EXECFXN = FXN_F_nop;
SWI_RUNFXN = FXN_F_nop;

TSK_STACKSEG = MEM_NULL;
TSK_VCREATEFXN = _FXN_F_nop;
TSK_VDELETEFXN = _FXN_F_nop;
TSK_VEXITFXN = _FXN_F_nop;

IDL_CALIBRFXN = IDL_F_calibrate;

SYS_ABORTFXN = _UTL_doAbort;
SYS_ERRORFXN = _UTL_doError;
SYS_EXITFXN = _UTL_halt;
SYS_PUTCFXN = _UTL_doPutc;

GIO_CREATEFXN = _FXN_F_nop;
GIO_DELETEFXN = _FXN_F_nop;
GIO_PENDFXN = _FXN_F_nop;
GIO_POSTFXN = _FXN_F_nop;

/* OBJECT ALIASES */
_IRAM = IRAM;
_SDRAM = SDRAM;
_PRD_clock = PRD_clock;
_RTA_fromHost = RTA_fromHost;
_RTA_toHost = RTA_toHost;
_HWI_RESET = HWI_RESET;
_HWI_NMI = HWI_NMI;
_HWI_RESERVED0 = HWI_RESERVED0;
_HWI_RESERVED1 = HWI_RESERVED1;
_HWI_INT4 = HWI_INT4;
_HWI_INT5 = HWI_INT5;
_HWI_INT6 = HWI_INT6;
_HWI_INT7 = HWI_INT7;
_HWI_INT8 = HWI_INT8;
_HWI_INT9 = HWI_INT9;
_HWI_INT10 = HWI_INT10;
_HWI_INT11 = HWI_INT11;
_HWI_INT12 = HWI_INT12;
_HWI_INT13 = HWI_INT13;
_HWI_INT14 = HWI_INT14;
_HWI_INT15 = HWI_INT15;
_RTA_dispatcher = RTA_dispatcher;
_IDL_cpuLoad = IDL_cpuLoad;
_LNK_dataPump = LNK_dataPump;
_LOG_system = LOG_system;
_IDL_busyObj = IDL_busyObj;

/* MODULE GBL */

SECTIONS {
   .vers (COPY): {} /* version information */
}

-priority
-llnkrtdx.a62
-ldrivers.a67          /* device drivers support */
-lsioboth.a62          /* supports both SIO models */
-lbiosi.a62            /* DSP/BIOS support */
-lrtdx.lib             /* RTDX support */
-lcsl6713.lib
-lrts6700.lib          /* C and C++ run-time library support */

_GBL_CACHE = GBL_CACHE;

/* MODULE MEM */
-stack 0x400
MEMORY {
   IRAM        : origin = 0x0,         len = 0x40000
   SDRAM       : origin = 0x80000000,  len = 0x1000000
}
/* MODULE CLK */
SECTIONS {
   .clk: {
        _CLK_start = _CLK_start6x;
        CLK_F_gethtime = CLK_F_getshtime;
        CLK_A_TABBEG = .;
        *(.clk)
        CLK_A_TABEND = .;
        CLK_A_TABLEN = (. - CLK_A_TABBEG) / 1;
   } > IRAM 
}
_CLK_PRD = CLK_PRD;
_CLK_COUNTSPMS = CLK_COUNTSPMS;
_CLK_REGS = CLK_REGS;
_CLK_USETIMER = CLK_USETIMER;
_CLK_TIMERNUM = CLK_TIMERNUM;
_CLK_TDDR = CLK_TDDR;

/* MODULE PRD */
SECTIONS {
   .prd: {
        PRD_A_TABBEG = .;
        /* no PRD objects */
        PRD_A_TABEND = .;
        PRD_A_TABLEN = (. - PRD_A_TABBEG) / 32;
   } > IRAM
}

/* MODULE RTDX */
_RTDX_interrupt_mask = 0x0;

/* MODULE HWI */
SECTIONS {
    .hwi_vec: 0x0 {
        HWI_A_VECS = .;
        *(.hwi_vec)
    }
}

/* MODULE SWI */
SECTIONS {
   .swi: {
        SWI_A_TABBEG = .;
        /* no SWI objects */
        SWI_A_TABEND = .;
        SWI_A_TABLEN = (. - SWI_A_TABBEG) / 44;
   } > IRAM
}

/* MODULE TSK */
_KNL_swi = 0;
/* MODULE IDL */
SECTIONS {
   .idl: {
        IDL_A_TABBEG = .;
        *(.idl)
        IDL_A_TABEND = .;
        IDL_A_TABLEN = (. - IDL_A_TABBEG) / 8;
        IDL_A_CALBEG = .;
        *(.idlcal)
        IDL_A_CALEND = .;
        IDL_A_CALLEN = (. - IDL_A_CALBEG) / 8;
   } > IRAM
}



SECTIONS {
        .bss:     {} > IRAM
        
        .far:     {} > IRAM
        
        .sysdata: {} > IRAM
        
        .mem: 	  {} > IRAM
        
        .sysinit:    {} > IRAM
        
        .sysregs: {} > IRAM
        
        .gblinit:    {} > IRAM
        
        .trcdata:    {} > IRAM
        
        .args: fill=0 {
            *(.args)
            . += 0x4;
        } > IRAM
        
        .cinit:    {} > IRAM
        
        .pinit:   {} > IRAM
        
        .data:    {} > IRAM
        
        .const:    {} > IRAM
        
        .switch:    {} > IRAM
        
        .cio:     {} > IRAM
        
        .text:    {} > IRAM
        
        frt:    {} > IRAM
        
        .bios:    {} > IRAM
        
        .stack: fill=0xc0ffee {
            GBL_stackbeg = .;
            *(.stack)
            GBL_stackend = GBL_stackbeg + 0x400 - 1;
            _HWI_STKBOTTOM = GBL_stackbeg + 0x400 - 4 & ~7;
            _HWI_STKTOP = GBL_stackbeg;
        } > IRAM
        
        .rtdx_data: {}  > IRAM
        
        .rtdx_text: {}  > IRAM
        
        .hst: {
             HST_A_TABBEG = .;
            _HST_A_TABBEG = .;
            *(.hst)
            HST_A_TABEND = .;
            _HST_A_TABEND = .;
             HST_A_TABLEN = (. - _HST_A_TABBEG) / 20;
            _HST_A_TABLEN = (. - _HST_A_TABBEG) / 20;
        } > IRAM
        
        .dsm: {} > IRAM
        
       /* RTA_fromHost buffer */
       .hst1: align = 0x4 {} > IRAM
        
       /* RTA_toHost buffer */
       .hst0: align = 0x4 {} > IRAM
        
        .hwi: {}  > IRAM
        
        .log: {
             LOG_A_TABBEG = .;
            _LOG_A_TABBEG = .;
            *(.log)
            LOG_A_TABEND = .;
            _LOG_A_TABEND = .;
             LOG_A_TABLEN = (. - _LOG_A_TABBEG) / 24;
            _LOG_A_TABLEN = (. - _LOG_A_TABBEG) / 24;
        } > IRAM
        
        .printf (COPY): {} > IRAM
        
        /* LOG_system buffer */
        .LOG_system$buf: align = 0x100 fill = 0xffffffff {} > IRAM
        
        .pip: {
             PIP_A_TABBEG = .;
            _PIP_A_TABBEG = .;
            *(.pip)
            PIP_A_TABEND = .;
            _PIP_A_TABEND = .;
             PIP_A_TABLEN = (. - _PIP_A_TABBEG) / 100;
            _PIP_A_TABLEN = (. - _PIP_A_TABBEG) / 100;
        } > IRAM
        
        .sts: {
             STS_A_TABBEG = .;
            _STS_A_TABBEG = .;
            *(.sts)
            STS_A_TABEND = .;
            _STS_A_TABEND = .;
             STS_A_TABLEN = (. - _STS_A_TABBEG) / 16;
            _STS_A_TABLEN = (. - _STS_A_TABBEG) / 16;
        } > IRAM
        
        .sys:     {} > IRAM
        
        .trace: fill = 0x0 {
           _SYS_PUTCBEG = .;
           . += 0x200;
           _SYS_PUTCEND = . - 1;
        } > IRAM
        
        .gio:     {} > IRAM
        
}

