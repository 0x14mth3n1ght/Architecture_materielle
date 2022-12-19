/* Header for module mygates, generated by p2c */
#ifndef MYGATES_H
#define MYGATES_H


#ifndef LOGDEF_H
#include "logdef.h"
#endif


#ifndef LOGDIG_H
#include "logdig.h"
#endif

#ifndef NEWASM_H
#include <p2c/newasm.h>
#endif

#ifndef NEWCI_H
#include <p2c/newci.h>
#endif

#ifndef MYLIB_H
#include <p2c/mylib.h>
#endif


#ifdef MYGATES_G
# define vextern
#else
# define vextern extern
#endif



extern Void Log_mygates_sram8k PP((log_16_action *act));
extern Void Log_mygates_ascdisp PP((log_16_action *act));



extern Void Log_mygates_asckbd PP((log_16_action *act));


#undef vextern

#endif /*MYGATES_H*/

/* End. */